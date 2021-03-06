import 'package:ScreensUI/Screens/SignUpScreen.dart';
import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Color(0xffe8ebed),
      backgroundColor: Colors.lightBlueAccent,
      // backgroundColor: Colors.grey,
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height -
              70, //For moving according to the screen when the keyboard popsup.
          alignment: Alignment.bottomCenter,
          child: Container(
              padding: EdgeInsets.all(30),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Stack(
                    children: <Widget>[
                      Container(
                        height: 180,
                        width: 600,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(50),
                          child: Image.asset("assets/images/friendship.png"),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 30),
                  Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                      child: Text(
                        "Welcome",
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.w900,
                            color: Colors.white),
                      )),
                  SizedBox(height: 20),
// From here the login Credentials start.
                  Container(
                    padding: EdgeInsets.fromLTRB(10, 10, 10, 13),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xffe1e2e3),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.3),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(0, 3),
                          ),
                        ]),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 3),
                              child: Text(
                                "Login",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w800),
                              )),
                          SizedBox(height: 5),
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 2, vertical: 5),
                            decoration: BoxDecoration(
                                color: Color(0xfff5f8fd),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20))),
                            child: TextFormField(
                              decoration: InputDecoration(
                                hintText: "Email",
                                border: InputBorder.none,
                                prefixIcon: Icon(
                                  Icons.email,
                                  color: Colors.grey,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 15),
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 2, vertical: 5),
                            decoration: BoxDecoration(
                                color: Color(0xfff5f8fd),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20))),
                            child: TextFormField(
                              obscureText: true,
                              decoration: InputDecoration(
                                hintText: "Password",
                                border: InputBorder.none,
                                prefixIcon:
                                    Icon(Icons.vpn_key, color: Colors.grey),
                              ),
                            ),
                          ),
                        ]),
                  ),

                  SizedBox(
                    height: 25,
                  ),

                  Container(
                    alignment: Alignment.centerRight,
                    child: Container(
                        child: Text(
                      "Forgot Password?",
                      style: TextStyle(
                          color: Colors.black87, fontWeight: FontWeight.w500),
                    )),
                  ),

                  SizedBox(height: 25),

                  //From here the signin buttons will occur.

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      RaisedButton(
                          elevation: 3,
                          padding: EdgeInsets.symmetric(
                              vertical: 15, horizontal: 50),
                          onPressed: () {},
                          color: Colors.pinkAccent.shade100,
                          // .deepPurpleAccent, //Not bad=>Color(0xff1d56b8),
                          child: Text(
                            "Sign In",
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.w700),
                          ),
                          shape: RoundedRectangleBorder(
                            side: BorderSide(color: Colors.white70),
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                          )),
                    ],
                  ),

                  SizedBox(height: 30),

                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    Text("Don't have an account?"),
                    SizedBox(width: 10),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return SignUp();
                        }));
                      },
                      child: Container(
                        child: Text("Register now",
                            style: TextStyle(
                                fontWeight: FontWeight.w700,
                                color: Colors.black87)),
                      ),
                    )
                  ]),
                ],
              )),
        ),
      ),
    );
  }
}
