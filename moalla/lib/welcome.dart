// welcome_page.dart
import 'package:flutter/material.dart';
import 'home.dart';
import 'registration.dart';

class WelcomePage extends StatefulWidget {
  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Sign in',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(24.0, 80.0, 24.0, 30.0),
            child: Text(
              'Welcome Back',
              style: TextStyle(
                color: Colors.black,
                fontSize: 28,
                fontFamily: 'Raleway',
                height: 0.04,
                letterSpacing: -0.56,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(24, 6, 24.0, 16.0),
            child: Text(
              'Log In to your account to access your ',
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontFamily: 'Poppins',
                height: 0.09,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(24, 7, 24.0, 16.0),
            child: Text(
              'community contents',
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontFamily: 'Poppins',
                height: 0.09,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(24.0, 45.0, 24.0, 7.0),
            child: TextField(
              controller: usernameController,
              decoration: InputDecoration(
                labelText: 'Username',
                border: OutlineInputBorder(),
                contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(24.0, 6.0, 24.0, 7.0),
            child: TextField(
              controller: passwordController,
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Password',
                border: OutlineInputBorder(),
                contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 16.0),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(24.0, 15.0, 24.0, 7.0),
            child: Column(
              children: [
                ElevatedButton(
                  onPressed: () {
                    String username = usernameController.text.trim();
                    String password = passwordController.text.trim();

                    if (username.isNotEmpty && password.isNotEmpty) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => HomePage(username: username)),
                      );
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text('Enter Username and password'),
                        ),
                      );
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xFF76B852),
                    minimumSize: Size(350, 50),
                  ),
                  child: Text(
                    'Log In',
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                ),
                SizedBox(height: 265),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => RegisterPage()),
                    );
                  },
                  child: Text(
                    'Register Now',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
