import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final String username;

  
  const HomePage({Key? key, required this.username}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 126.0,
            decoration: BoxDecoration(
              color: Color(0xFF76B852),
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(30.0),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  
                  Text(
                    'Welcome back,$username!',
                    style: TextStyle(
                      fontSize: 18,
                      fontFamily: 'Raleway',
                      color: Colors.white,
                    ),
                  ),
                  
                  Container(
                    width: 50.0,
                    height: 50.0,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage('asset/profile.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
         Container(
  margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
  height: 125,
  width: double.infinity,
  decoration: BoxDecoration(
    color: Color(0xFF76B852),
    borderRadius: BorderRadius.circular(20.0),
  ),
  child: Padding(
    padding: const EdgeInsets.all(20.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Total Houses',
              style: TextStyle(
                fontSize: 14,
                fontFamily: 'Poppins',
                color: Colors.white,
                
              ),
            ),
            SizedBox(height: 8),
            Text(
              'Total Member',
              style: TextStyle(
                fontSize: 14,
                fontFamily: 'Poppins',
                color: Colors.white,
              ),
            ),
          ],
        ),
        SizedBox(width: 130), 
        Align(
          alignment: Alignment.centerRight,
          child: Container(
            width: 90.0,
            height: 90.0,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage('asset/home.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ],
    ),
  ),
),

          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(width: 24.0),
              Text(
                'Gallery',
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
              ),
              SizedBox(width: 230.0), 
              Text(
                'View all',
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'Poppins',
                  color: Colors.black,
                ),
              ),
            ],
          ),
          
            Row(
  mainAxisAlignment: MainAxisAlignment.spaceAround,
  children: [
    Container(
      height: 132.0,
      width: 160.0,
      decoration: BoxDecoration(
        color: Color(0xFF76B852),
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Container(
        margin: EdgeInsets.only(bottom: 0.0),
        width: 160.0,
        height: 132.0,
        child: Image.asset(
          'asset/img.png', 
          fit: BoxFit.fill,
        ),
      ),
    ),
    Container(
      height: 132.0,
      width: 160.0,
      decoration: BoxDecoration(
        color: Color(0xFF76B852),
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Container(
        margin: EdgeInsets.only(bottom: 0.0),
        width: 160.0,
        height: 132.0,
        child: Image.asset(
          'asset/img.png', 
          fit: BoxFit.fill,
        ),
      ),
    ),
  ],
),

          
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(width: 30.0),
              Text(
                'Khuthuba',
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
              ),
              SizedBox(width: 135.0), 
              Text(
                'Kuthuba',
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(width: 30.0),
              Text(
                'Hakeem',
                style: TextStyle(
                  fontSize: 14,
                  fontFamily: 'Poppins',
                  color: Colors.black,
                ),
              ),
              SizedBox(width: 145.0), 
              Text(
                'Hakeem',
                style: TextStyle(
                  fontSize: 14,
                  fontFamily: 'Poppins',
                  color: Colors.black,
                ),
              ),
            ],
          ),
          
          Padding(
            padding: const EdgeInsets.only(left: 24.0, top: 20),
            child: Text(
              'Services',
              style: TextStyle(
                fontSize: 16,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
            ),
          ),
          SizedBox(height: 14), 
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                width: 165,
                height: 160,
                padding: const EdgeInsets.all(10),
                decoration: ShapeDecoration(
                  gradient: LinearGradient(
                    begin: Alignment(0.98, -0.18),
                    end: Alignment(-0.98, 0.18),
                    colors: [Colors.white, Color(0xFFF2F2F2)],
                  ),
                  shape: RoundedRectangleBorder(
                    side: BorderSide(width: 1, color: Color(0xFFDADADA)),
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 80,
                      height: 80,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xFF76B852), 
                      ),
                      child: Center(
                        child: Image.asset(
                          'asset/people.png', 
                          width: 40, 
                          height: 40, 
                        ),
                      ),
                    ),
                    SizedBox(height: 16),
                    Text(
                      'Mahal',
                      style: TextStyle(
                        fontSize: 14,
                        fontFamily: 'Poppins',
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      'Committee',
                      style: TextStyle(
                        fontSize: 14,
                        fontFamily: 'Poppins',
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: 165,
                height: 160,
                padding: const EdgeInsets.all(10),
                decoration: ShapeDecoration(
                  gradient: LinearGradient(
                    begin: Alignment(0.98, -0.18),
                    end: Alignment(-0.98, 0.18),
                    colors: [Colors.white, Color(0xFFF2F2F2)],
                  ),
                  shape: RoundedRectangleBorder(
                    side: BorderSide(width: 1, color: Color(0xFFDADADA)),
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 80,
                      height: 80,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xFF76B852), // Green color
                      ),
                      child: Center(
                        child: Image.asset(
                          'asset/people.png', 
                          width: 40, 
                          height: 40, 
                        ),
                      ),
                    ),
                    SizedBox(height: 16), 
                    Text(
                      'Madrasa',
                      style: TextStyle(
                        fontSize: 14,
                        fontFamily: 'Poppins',
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 14), 
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                width: 165,
                height: 160,
                padding: const EdgeInsets.all(10),
                decoration: ShapeDecoration(
                  gradient: LinearGradient(
                    begin: Alignment(0.98, -0.18),
                    end: Alignment(-0.98, 0.18),
                    colors: [Colors.white, Color(0xFFF2F2F2)],
                  ),
                  shape: RoundedRectangleBorder(
                    side: BorderSide(width: 1, color: Color(0xFFDADADA)),
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 80,
                      height: 80,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xFF76B852), 
                      ),
                      child: Center(
                        child: Image.asset(
                          'asset/people.png', 
                          width: 40, 
                          height: 40, 
                        ),
                      ),
                    ),
                    SizedBox(height: 16),
                    Text(
                      'Marriage',
                      style: TextStyle(
                        fontSize: 14,
                        fontFamily: 'Poppins',
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      'Proposal',
                      style: TextStyle(
                        fontSize: 14,
                        fontFamily: 'Poppins',
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: 165,
                height: 160,
                padding: const EdgeInsets.all(10),
                decoration: ShapeDecoration(
                  gradient: LinearGradient(
                    begin: Alignment(0.98, -0.18),
                    end: Alignment(-0.98, 0.18),
                    colors: [Colors.white, Color(0xFFF2F2F2)],
                  ),
                  shape: RoundedRectangleBorder(
                    side: BorderSide(width: 1, color: Color(0xFFDADADA)),
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 80,
                      height: 80,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xFF76B852), 
                      ),
                      child: Center(
                        child: Image.asset(
                          'asset/people.png', 
                          width: 40, 
                          height: 40, 
                        ),
                      ),
                    ),
                    SizedBox(height: 16), 
                    Text(
                      'Notice Board',
                      style: TextStyle(
                        fontSize: 14,
                        fontFamily: 'Poppins',
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 14), 
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                width: 165,
                height: 160,
                padding: const EdgeInsets.all(10),
                decoration: ShapeDecoration(
                  gradient: LinearGradient(
                    begin: Alignment(0.98, -0.18),
                    end: Alignment(-0.98, 0.18),
                    colors: [Colors.white, Color(0xFFF2F2F2)],
                  ),
                  shape: RoundedRectangleBorder(
                    side: BorderSide(width: 1, color: Color(0xFFDADADA)),
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 80,
                      height: 80,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xFF76B852),
                      ),
                      child: Center(
                        child: Image.asset(
                          'asset/people.png',
                          width: 40, 
                          height: 40, 
                        ),
                      ),
                    ),
                    SizedBox(height: 16), 
                    Text(
                      'Charity',
                      style: TextStyle(
                        fontSize: 14,
                        fontFamily: 'Poppins',
                        color: Colors.black,
                      ),
                    ),
                    
                  ],
                ),
              ),
              Container(
                width: 165,
                height: 160,
                padding: const EdgeInsets.all(10),
                decoration: ShapeDecoration(
                  gradient: LinearGradient(
                    begin: Alignment(0.98, -0.18),
                    end: Alignment(-0.98, 0.18),
                    colors: [Colors.white, Color(0xFFF2F2F2)],
                  ),
                  shape: RoundedRectangleBorder(
                    side: BorderSide(width: 1, color: Color(0xFFDADADA)),
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 80,
                      height: 80,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xFF76B852), 
                      ),
                      child: Center(
                        child: Image.asset(
                          'asset/people.png', 
                          width: 40,
                          height: 40, 
                        ),
                      ),
                    ),
                    SizedBox(height: 16), 
                    Text(
                      'Speech',
                      style: TextStyle(
                        fontSize: 14,
                        fontFamily: 'Poppins',
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
      ),
    );
  }
}
