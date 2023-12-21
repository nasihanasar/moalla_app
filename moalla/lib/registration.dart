import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:image_picker/image_picker.dart';
import 'welcome.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  bool? donateBlood;
  bool? residesAbroad;
  bool? typeOwner;
  bool? acceptTermsAndConditions = false;

  TextEditingController memberIdController = TextEditingController();
  TextEditingController houseIdController = TextEditingController();
  TextEditingController fullNameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController ageController = TextEditingController();
  TextEditingController fatherNameController = TextEditingController();
  TextEditingController motherNameController = TextEditingController();
  TextEditingController contactNumberController = TextEditingController();
 
    final _formKey = GlobalKey<FormState>();

   

 

 Future<void> _loadData() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  memberIdController.text = prefs.getString('memberId') ?? '';
  houseIdController.text = prefs.getString('houseId') ?? '';
  fullNameController.text = prefs.getString('fullName') ?? '';
  passwordController.text = prefs.getString('password') ?? '';
  ageController.text = prefs.getString('age') ?? '';
  donateBlood = prefs.getBool('donateBlood') ?? false;
  fatherNameController.text = prefs.getString('fatherName') ?? '';
  motherNameController.text = prefs.getString('motherName') ?? '';
  contactNumberController.text = prefs.getString('contactNumber') ?? '';
  residesAbroad = prefs.getBool('residesAbroad') ?? false;
  typeOwner = prefs.getBool('typeOwner') ?? false;
  _formKey.currentState?.reset();
}

Future<void> _saveData() async {
  if (_formKey.currentState?.validate() ?? false) {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  prefs.setString('memberId', memberIdController.text);
  prefs.setString('houseId', houseIdController.text);
  prefs.setString('fullName', fullNameController.text);
  prefs.setString('password', passwordController.text);
  prefs.setString('age', ageController.text);
  prefs.setBool('donateBlood', donateBlood ?? false);
  prefs.setString('fatherName', fatherNameController.text);
  prefs.setString('motherName', motherNameController.text);
  prefs.setString('contactNumber', contactNumberController.text);
  prefs.setBool('residesAbroad', residesAbroad ?? false);
  prefs.setBool('typeOwner', typeOwner ?? false);
  
  memberIdController.clear();
  houseIdController.clear();
  fullNameController.clear();
  passwordController.clear();
  ageController.clear();
  fatherNameController.clear();
  motherNameController.clear();
  contactNumberController.clear();
  
  Navigator.pushReplacement(
    context,
    MaterialPageRoute(builder: (context) => RegisterPage()),
  );
}
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Registration',
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
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: 0),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 0.0),
                        Text(
                          'Member ID',
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                        SizedBox(height: 2),
                        Padding(
                          padding: EdgeInsets.fromLTRB(3.0, 4.0, 5.0, 18.0),
                          child: TextField(
                            controller: memberIdController,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              contentPadding:
                                  EdgeInsets.symmetric(vertical: 2.0, horizontal: 15.0),
                            ),
                          ),
                        ),
                        SizedBox(height: 0),
                        Text(
                          'House ID',
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                        SizedBox(height: 0),
                        Padding(
                          padding: EdgeInsets.fromLTRB(3.0, 4.0, 5.0, 1.0),
                          child: TextField(
                            controller: houseIdController,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              contentPadding:
                                  EdgeInsets.symmetric(vertical: 2.0, horizontal: 15.0),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 18),
                  Container(
                    padding: EdgeInsets.only(top: 28.0),
                    child: InkWell(
                       onTap: () async {
    final imagePicker = ImagePicker();
    final pickedFile = await imagePicker.pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      
    }
  },
                      child: Container(
                        width: 115,
                        height: 115,
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: Icon(
                          Icons.camera_alt,
                          size: 50,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 0),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 24.0),
                child: Text(
                  'Full Name',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ),
            ),
           SizedBox(height: 0),
              Padding(
                padding: EdgeInsets.fromLTRB(22.0, 3.0, 20.0, 15.0),
                child: TextFormField(
                  controller: fullNameController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 2.0, horizontal: 10.0),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your full name';
                    }
                    return null;
                  },
                ),
              ),

            Align(
  alignment: Alignment.centerLeft,
  child: Padding(
    padding: EdgeInsets.only(left: 24.0),
    child: Text(
      'Password',
      style: TextStyle(
        fontSize: 16,
      ),
    ),
  ),
),
SizedBox(height: 0),
              Padding(
                padding: EdgeInsets.fromLTRB(22.0, 3.0, 20.0, 15.0),
                child: TextFormField(
                  controller: passwordController,
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 2.0, horizontal: 10.0),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter a password';
                    }
                    return null;
                  },
                ),
              ),

            Row(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      SizedBox(height: 0),
                      Text(
                        'Age',
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(height: 0),
                      Padding(
                        padding: EdgeInsets.fromLTRB(22.0, 3.0, 15.0, 15.0),
                        child: TextField(
                          controller: ageController,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            contentPadding:
                                EdgeInsets.symmetric(vertical: 2.0, horizontal: 10.0),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 1),
                Expanded(
                  child: Column(
                    children: [
                      SizedBox(height: 0),
                      Text(
                        'Gender',
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(height: 0),
                      Padding(
                        padding: EdgeInsets.fromLTRB(22.0, 3.0, 15.0, 15.0),
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 10.0),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          child: DropdownButtonFormField<String>(
                            isExpanded: true,
                            items: ['Male', 'Female', 'Other']
                                .map((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                            onChanged: (String? value) {
                              // Handle the selection
                            },
                            decoration: InputDecoration(
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 0),
                Expanded(
                  child: Column(
                    children: [
                      SizedBox(height: 0),
                      Text(
                        'Blood',
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(height: 0),
                      Padding(
                        padding: EdgeInsets.fromLTRB(22.0, 3.0, 15.0, 15.0),
                        child: DropdownButtonFormField<String>(
                          items: ['A', 'B', 'AB', 'O']
                              .map((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value),
                                );
                              })
                              .toList(),
                          onChanged: (String? value) {
                           
                          },
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            contentPadding:
                                EdgeInsets.symmetric(vertical: 2.0, horizontal: 10.0),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 24.0),
                child: Text(
                  'Willing to donate blood?',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(22.0, 3.0, 20.0, 15.0),
              child: Row(
                children: [
                  Radio(
                    value: true,
                    groupValue: donateBlood,
                    onChanged: (bool? value) {
                      setState(() {
                        donateBlood = value;
                      });
                    },
                    activeColor: Colors.green,
                  ),
                  Text('Yes'),
                  Radio(
                    value: false,
                    groupValue: donateBlood,
                    onChanged: (bool? value) {
                      setState(() {
                        donateBlood = value;
                      });
                    },
                    activeColor: Colors.green,
                  ),
                  Text('No'),
                ],
              ),
            ),
            SizedBox(height: 0),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 24.0),
                child: Text(
                  'Father Name',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ),
            ),
            SizedBox(height: 0),
            Padding(
              padding: EdgeInsets.fromLTRB(24.0, 3.0, 20.0, 10.0),
              child: TextField(
                controller: fatherNameController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  contentPadding: EdgeInsets.symmetric(vertical: 2.0, horizontal: 10.0),
                ),
              ),
            ),
            SizedBox(height: 0),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 24.0),
                child: Text(
                  'Mother Name',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ),
            ),
            SizedBox(height: 0),
            Padding(
              padding: EdgeInsets.fromLTRB(24.0, 3.0, 20.0, 10.0),
              child: TextField(
                controller: motherNameController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  contentPadding: EdgeInsets.symmetric(vertical: 2.0, horizontal: 10.0),
                ),
              ),
            ),
            SizedBox(height: 0),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 24.0),
                child: Text(
                  'Contact Number',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ),
            ),
            SizedBox(height: 0),
            Padding(
              padding: EdgeInsets.fromLTRB(24.0, 3.0, 20.0, 10.0),
              child: TextField(
                controller: contactNumberController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  contentPadding: EdgeInsets.symmetric(vertical: 2.0, horizontal: 10.0),
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 24.0),
                child: Text(
                  'Resides',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(22.0, 3.0, 20.0, 15.0),
              child: Row(
                children: [
                  Radio(
                    value: true,
                    groupValue: residesAbroad,
                    onChanged: (bool? value) {
                      setState(() {
                        residesAbroad = value;
                      });
                    },
                    activeColor: Colors.green,
                  ),
                  Text('Abroad'),
                  Radio(
                    value: false,
                    groupValue: residesAbroad,
                    onChanged: (bool? value) {
                      setState(() {
                        residesAbroad = value;
                      });
                    },
                    activeColor: Colors.green,
                  ),
                  Text('Native'),
                ],
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 24.0),
                child: Text(
                  'Type',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(22.0, 3.0, 20.0, 15.0),
              child: Row(
                children: [
                  Radio(
                    value: true,
                    groupValue: typeOwner,
                    onChanged: (bool? value) {
                      setState(() {
                        typeOwner = value;
                      });
                    },
                    activeColor: Colors.green,
                  ),
                  Text('Owner'),
                  Radio(
                    value: false,
                    groupValue: typeOwner,
                    onChanged: (bool? value) {
                      setState(() {
                        typeOwner = value;
                      });
                    },
                    activeColor: Colors.green,
                  ),
                  Text('Member'),
                ],
              ),
            ),

           
      Padding(
  padding: EdgeInsets.only(top: 0.0, left: 10), 
  child: Row(
    
    children: [
      Checkbox(
        value: acceptTermsAndConditions,
        onChanged: (value) {
          setState(() {
            acceptTermsAndConditions = value;
          });
        },
        activeColor: Colors.green, 
      ),
      SizedBox(width: 5), 
      Expanded(
        child: Text(
          'I have read and accept the terms and conditions of this application',
          style: TextStyle(
            fontSize: 14,
          ),
        ),
      ),
    ],
  ),
),



            
            SizedBox(height: 3.0), 
                ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState?.validate() ?? false) {
                    if (acceptTermsAndConditions == true) {
                      _saveData().then((_) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => WelcomePage()),
                        );
                      });
                    } else {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: Text('Terms and Conditions'),
                            content: Text(
                              'Please accept the terms and conditions to register.',
                            ),
                            actions: <Widget>[
                              TextButton(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                child: Text('OK'),
                              ),
                            ],
                          );
                        },
                      );
                    }
                  }
                },
                style: ElevatedButton.styleFrom(
                  primary: Color(0xFF76B852),
                  minimumSize: Size(325, 50),
                ),
                child: Text(
                  'Register',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ),


                  SizedBox(height: 22.0),
          ],
        ),
      ),),
    );
  }
}

