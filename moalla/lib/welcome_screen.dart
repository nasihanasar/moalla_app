import 'package:flutter/material.dart';
import 'welcome.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(top: 225),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    'asset/welcome.png',
                    width: 165.0,
                    height: 165.0,
                  ),
                  SizedBox(height: 30.0),
                  Padding(
                    padding: EdgeInsets.only(left: 16.0),
                    child: Text(
                      'Welcome to ',
                      style: TextStyle(
                        color: Color(0xFF3F3F3F),
                        fontSize: 36,
                        fontFamily: 'Raleway',
                        fontWeight: FontWeight.w600,
                        height: 0.03,
                        letterSpacing: -0.50,
                      ),
                    ),
                  ),
                  SizedBox(height: 40.0),
                  Padding(
                    padding: EdgeInsets.only(left: 16.0),
                    child: Text(
                      'Moalla App',
                      style: TextStyle(
                        color: Color(0xFF76B852),
                        fontSize: 36,
                        fontFamily: 'Raleway',
                        fontWeight: FontWeight.w500,
                        height: 0.03,
                        letterSpacing: -0.50,
                      ),
                    ),
                  ),
                  SizedBox(height: 40.0),
                  Padding(
                    padding: EdgeInsets.only(left: 16.0),
                    child: Text(
                      'Community that stays together.',
                      style: TextStyle(
                        color: Color(0xFF3F3F3F),
                        fontSize: 14,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                        height: 0.11,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Spacer(),
            Align(
              alignment: Alignment.bottomCenter,
              child: Column(
                children: [
                  SizedBox(height: 12.0),
                  Text(
                    'By continuing, you are agreeing to the \n',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                      height: 0.10,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Terms of Services ',
                        style: TextStyle(
                          color: Color(0xFF76B852),
                          fontSize: 14,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                          height: 0.10,
                        ),
                      ),
                      Text(
                        '&', 
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                          height: 0.10,
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          
                        },
                        child: Text(
                          'Privacy Policy',
                          style: TextStyle(
                            color: Color(0xFF76B852),
                            fontSize: 14,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                            height: 0.10,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 3.0), 
                  ElevatedButton(
                    onPressed: () {
                      
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => WelcomePage()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xFF76B852), 
                      minimumSize: Size(325, 50), 
                    ),
                    child: Text(
                      'continue',
                      style: TextStyle(
                        fontSize: 14,
                      ),
                    ),
                  ),
                  SizedBox(height: 22.0),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// WelcomePage class (you can replace it with your actual WelcomePage implementation)
