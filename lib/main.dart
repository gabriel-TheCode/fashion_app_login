import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  _buildTextField(IconData icon, String hintText) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
      decoration: BoxDecoration(color: Colors.black54),
      child: TextField(
        style: TextStyle(fontSize: 20, color: Colors.grey),
        decoration: InputDecoration(
            hintText: hintText,
            border: InputBorder.none,
            icon: Icon(icon, color: Colors.grey),
            hintStyle: TextStyle(fontSize: 20, color: Colors.grey)),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
          children: [
            Positioned.fill(child: Image.asset(
              'assets/fashion-bg-login.jpeg',
              fit: BoxFit.cover,
              color: Colors.black38,
              colorBlendMode: BlendMode.darken,)),
            Positioned(
                top: 50,
                left: 20,
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.arrow_back_ios,
                    color: Colors.white,
                  ),
                )
            ),
            Positioned.fill(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 150,
                    ),
                    Text('Welcome Back',
                      style: TextStyle(color: Colors.white, fontSize: 40),
                    ),
                    SizedBox(
                        height: 20
                    ),
                    Text('Sign in to your account',
                      style: TextStyle(color: Colors.white, fontSize: 28),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    _buildTextField(Icons.mail_outline, 'Email'),
                    SizedBox(
                      height: 20,
                    ),
                    _buildTextField(Icons.lock_outline, 'Password'),
                    SizedBox(
                      height: 10,
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        'Forgot Password',
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    MaterialButton(
                        onPressed: () {},
                        minWidth: double.maxFinite,
                        color: Colors.red[700],
                        elevation: 0,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 16.0),
                          child: Text(
                            'LOGIN',
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                        )
                    ),
                    Expanded(child: Container()),
                    Container(
                      height: 50,
                      margin: EdgeInsets.only(bottom: 100),
                      decoration:
                      BoxDecoration(border: Border.all(color: Colors.white)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Row(
                            children: [
                              Icon(FontAwesomeIcons.google,
                                  color: Colors.white),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                'Google',
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          ),

                          VerticalDivider(color: Colors.white),

                          Row(
                            children: [
                              Icon(FontAwesomeIcons.facebookF,
                                  color: Colors.white),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                'Facebook',
                                style: TextStyle(color: Colors.white),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ]
      ),
    );
  }
}
