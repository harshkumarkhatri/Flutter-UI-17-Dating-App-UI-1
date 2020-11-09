import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ui_17_dating_app_ui_1/Screen2_SignIn.dart';
import 'package:flutter_ui_17_dating_app_ui_1/Screen3_Signup.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.center,
            end: Alignment.bottomRight,
            colors: [
              Colors.grey,
              Colors.grey.withOpacity(0.8),
            ],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 15, right: 15),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.width / 2.4,
                    bottom: MediaQuery.of(context).size.width / 2.1),
                child: Text(
                  "Rish",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 36,
                      fontWeight: FontWeight.w300,
                      letterSpacing: 1.5),
                ),
              ),
              GestureDetector(
                onTap: () {
                  print("pushed");
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (_) => Screen2(),
                    ),
                  );
                },
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 55,
                  // color: Colors.red,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey[600],
                          blurRadius: 2,
                          spreadRadius: 0.5)
                    ],
                    gradient: LinearGradient(
                      colors: [
                        Colors.pink[600],
                        Colors.pink[400],
                        Colors.orangeAccent[700]
                      ],
                    ),
                  ),
                  child: Center(
                    child: Text(
                      "Sign in",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w300,
                        letterSpacing: 1.2,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.width / 10),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => Screen3(),
                    ),
                  );
                },
                child: Container(
                  height: 55,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.white,
                      width: 2,
                    ),
                  ),
                  child: Center(
                    child: Text(
                      "Sign up",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w300,
                        letterSpacing: 1.2,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.width / 9),
              Text(
                "Or",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w300,
                  letterSpacing: 1.2,
                  fontSize: 20,
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.width / 9),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {
                      // initiateFacebookLogin();
                    },
                    child: Container(
                      height: 55,
                      width: 55,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.white,
                          width: 2,
                        ),
                      ),
                      child: Center(
                        child: Icon(
                          FontAwesomeIcons.facebookF,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      height: 55,
                      width: 55,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.white,
                          width: 2,
                        ),
                      ),
                      child: Center(
                        child: FaIcon(
                          FontAwesomeIcons.twitter,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      height: 55,
                      width: 55,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.white,
                          width: 2,
                        ),
                      ),
                      child: Center(
                        child: FaIcon(
                          FontAwesomeIcons.instagram,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  // _logout() async {
  //   await facebookLogin.logOut();
  //   onLoginStatusChanged(false);
  //   print("Logged out");
  // }

  // _displayUserData(profileData) {
  //   return Column(
  //     mainAxisSize: MainAxisSize.min,
  //     children: <Widget>[
  //       Container(
  //         height: 200.0,
  //         width: 200.0,
  //         decoration: BoxDecoration(
  //           shape: BoxShape.circle,
  //           image: DecorationImage(
  //             fit: BoxFit.fill,
  //             image: NetworkImage(
  //               profileData['picture']['data']['url'],
  //             ),
  //           ),
  //         ),
  //       ),
  //       SizedBox(height: 28.0),
  //       Text(
  //         "FBID ${profileData['id']}\n${profileData['name']}\n${profileData['email']}",
  //         style: TextStyle(
  //           fontSize: 20.0,
  //           letterSpacing: 1.1,
  //         ),
  //         textAlign: TextAlign.center,
  //       ),
  //     ],
  //   );
  // }

  // bool isLoggedIn = false;
  // var profileData;

  // var facebookLogin = FacebookLogin();

  // void onLoginStatusChanged(bool isLoggedIn, {profileData}) {
  //   setState(() {
  //     this.isLoggedIn = isLoggedIn;
  //     this.profileData = profileData;
  //   });
  // }

  // void initiateFacebookLogin() async {
  //   var facebookLoginResult = await facebookLogin.logIn(['email']);
  //   print("facebook login result is ${facebookLoginResult.toString()}");

  //   switch (facebookLoginResult.status) {
  //     case FacebookLoginStatus.error:
  //       onLoginStatusChanged(false);
  //       break;
  //     case FacebookLoginStatus.cancelledByUser:
  //       onLoginStatusChanged(false);
  //       break;
  //     case FacebookLoginStatus.loggedIn:
  //       var graphResponse = await http.get(
  //           'https://graph.facebook.com/v2.12/me?fields=name,first_name,last_name,email,picture.width(400)&access_token=${facebookLoginResult.accessToken.token}');
  //       print(graphResponse.toString());

  //       var profile = json.decode(graphResponse.body);
  //       print(profile.toString());

  //       onLoginStatusChanged(true, profileData: profile);
  //       break;
  //   }
  // }
}
