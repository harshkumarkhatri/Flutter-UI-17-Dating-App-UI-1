import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_facebook_login/flutter_facebook_login.dart';
import 'package:flutter_twitter_login/flutter_twitter_login.dart';
import 'package:google_sign_in/google_sign_in.dart';

class Screen23 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Screen23State();
  }
}

class _Screen23State extends State<Screen23> {
  var loggedIn = false;
  var firebaseAuth = FirebaseAuth.instance;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: _buildSocialLogin());
  }

  _buildSocialLogin() {
    return Scaffold(
      body: Container(
          color: Color.fromRGBO(0, 207, 179, 1),
          child: Center(
            child: loggedIn
                ? Text("Logged In! :)",
                    style: TextStyle(color: Colors.white, fontSize: 40))
                : Stack(
                    children: <Widget>[
                      SizedBox.expand(
                        child: _buildSignUpText(),
                      ),
                      Container(
                        child: Center(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            // wrap height
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            // stretch across width of screen
                            children: <Widget>[
                              _buildFacebookLoginButton(),
                              _buildGoogleLoginButton(),
                              _buildTwitterLoginButton()
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
          )),
    );
  }

  Container _buildGoogleLoginButton() {
    return Container(
      margin: EdgeInsets.only(left: 16, top: 16, right: 16, bottom: 0),
      child: ButtonTheme(
        height: 48,
        child: RaisedButton(
            onPressed: () {
              print("Clikced on google button");
              initiateSignIn("G");
            },
            color: Colors.white,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
            textColor: Color.fromRGBO(122, 122, 122, 1),
            child: Text("Connect with Google",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ))),
      ),
    );
  }

  Container _buildFacebookLoginButton() {
    return Container(
      margin: EdgeInsets.only(left: 16, top: 0, right: 16, bottom: 0),
      child: ButtonTheme(
        height: 48,
        child: RaisedButton(
            materialTapTargetSize: MaterialTapTargetSize.padded,
            onPressed: () {
              initiateSignIn("FB");
            },
            color: Color.fromRGBO(27, 76, 213, 1),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
            textColor: Colors.white,
            child: Text(
              "Connect with Facebook",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            )),
      ),
    );
  }

  Container _buildTwitterLoginButton() {
    return Container(
      margin: EdgeInsets.only(left: 16, top: 16, right: 16, bottom: 0),
      child: ButtonTheme(
        height: 48,
        child: RaisedButton(
            onPressed: () {
              print("Clikced on twitter button");
              initiateSignIn("T");
            },
            color: Colors.blue,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
            textColor: Color.fromRGBO(122, 122, 122, 1),
            child: Text("Connect with Twitter",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 20,
                ))),
      ),
    );
  }

  Container _buildSignUpText() {
    return Container(
      margin: EdgeInsets.only(top: 76),
      child: Text(
        "Sign Up",
        textAlign: TextAlign.center,
        style: TextStyle(
            color: Color.fromRGBO(255, 255, 255, 1),
            fontSize: 42,
            fontWeight: FontWeight.bold),
      ),
    );
  }

  void initiateSignIn(String type) {
    _handleSignIn(type).then((result) {
      if (result == 1) {
        setState(() {
          loggedIn = true;
        });
      } else {}
    });
  }

  Future<int> _handleSignIn(String type) async {
    switch (type) {
      case "FB":
        FacebookLoginResult facebookLoginResult = await _handleFBSignIn();
        final accessToken = facebookLoginResult.accessToken.token;
        if (facebookLoginResult.status == FacebookLoginStatus.loggedIn) {
          final facebookAuthCred =
              FacebookAuthProvider.getCredential(accessToken);
          final user =
              await firebaseAuth.signInWithCredential(facebookAuthCred);
          print(user.toString());
          return 1;
        } else
          return 0;
        break;
      case "T":
        _login();
        break;
      case "G":
        try {
          print("Inside google try");
          GoogleSignInAccount googleSignInAccount = await _handleGoogleSignIn();
          final googleAuth = await googleSignInAccount.authentication;
          print(googleAuth.toString());
          final googleAuthCred = GoogleAuthProvider.getCredential(
              idToken: googleAuth.idToken, accessToken: googleAuth.accessToken);
          print(googleAuthCred.toString());
          final user = await firebaseAuth.signInWithCredential(googleAuthCred);
          print(user.toString());
          return 1;
        } catch (error) {
          return 0;
        }
    }
    return 0;
  }

 

  // Sign in and signout with twitter
  static final TwitterLogin twitterLogin = new TwitterLogin(
    consumerKey: '',
    consumerSecret: '',
  );

  String _message = 'Logged out.';

  void _login() async {
    final TwitterLoginResult result = await twitterLogin.authorize();
    String newMessage;

    switch (result.status) {
      case TwitterLoginStatus.loggedIn:
        print('Logged in! username: ${result.session.username}');
        print(result.session.userId.toString());
        var session = result.session;
        print(session.toString());
        final AuthCredential credential = TwitterAuthProvider.getCredential(
            accessToken: session.token, secret: session.secret);
        print(credential.toString());
        final firebaseUser =
            (await firebaseAuth.signInWithCredential(credential));
        print("twitter sign in" + firebaseUser.toString());
        break;
      case TwitterLoginStatus.cancelledByUser:
        print('Login cancelled by user.');
        break;
      case TwitterLoginStatus.error:
        print('Login error: ${result.errorMessage}');
        break;
    }

    setState(() {
      _message = newMessage;
    });
  }

  void _logout() async {
    await twitterLogin.logOut();

    setState(() {
      _message = 'Logged out.';
    });
  }

  // Sign in with facebook
  Future<FacebookLoginResult> _handleFBSignIn() async {
    FacebookLogin facebookLogin = FacebookLogin();
    FacebookLoginResult facebookLoginResult =
        await facebookLogin.logIn(['email']);
    switch (facebookLoginResult.status) {
      case FacebookLoginStatus.cancelledByUser:
        print("Cancelled");
        break;
      case FacebookLoginStatus.error:
        print("error");
        break;
      case FacebookLoginStatus.loggedIn:
        print("Logged In");
        break;
    }
    return facebookLoginResult;
  }

  // Sign in with google
  Future<GoogleSignInAccount> _handleGoogleSignIn() async {
    GoogleSignIn googleSignIn = GoogleSignIn(
        scopes: ['email', 'https://www.googleapis.com/auth/contacts.readonly']);
    GoogleSignInAccount googleSignInAccount = await googleSignIn.signIn();
    return googleSignInAccount;
  }
}
