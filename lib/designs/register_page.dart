import 'package:flutter/material.dart';

import 'home_page.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  final GlobalKey<FormState> _emailFormkey = GlobalKey<FormState>();
  final GlobalKey<FormState> _nameFormkey = GlobalKey<FormState>();
  final GlobalKey<FormState> _addressFormkey = GlobalKey<FormState>();
  final GlobalKey<FormState> _passFormkey = GlobalKey<FormState>();
  final GlobalKey<FormState> _conPassFormkey = GlobalKey<FormState>();
  bool? valid;
  bool? mailValid;
  bool? nameValid;
  bool? addressValid;
  bool? passValid;
  bool? conPassValid;
  @override
  Widget build(BuildContext context) {
    // return Container(
    //   decoration: BoxDecoration(
    //     gradient: LinearGradient(
    //         begin: Alignment.topLeft,
    //         end: Alignment.bottomRight,
    //         colors: [Colors.grey, Colors.green]),
    //   ),
    child:
    return Scaffold(
      backgroundColor: Colors.lightGreen[100],
      appBar: AppBar(
        title: Text(
          'REGISTER FORM',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Colors.grey, Colors.green]),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(5),
          child: Column(
            children: [
              Row(
                children: [
                  Text(
                    'Full Name',
                    style: TextStyle(fontSize: 20, color: Colors.green[800]),
                  ),
                  Text(
                    '*',
                    style: TextStyle(
                        color: Colors.red, fontWeight: FontWeight.bold),
                  )
                ],
              ),
              Form(
                key: _nameFormkey,
                child: TextFormField(
                    controller: userName,
                    // onChanged: (uName){},
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5)),
                    ),
                    validator: (valueName) {
                      if (valueName!.isEmpty) {
                        return 'Please Enter Name';
                      } else {
                        nameValid = true;
                      }
                    }),
              ),
              SizedBox(height: 30),
              Row(
                children: [
                  Text(
                    'Address',
                    style: TextStyle(fontSize: 20, color: Colors.green[800]),
                  ),
                  Text(
                    '*',
                    style: TextStyle(
                        color: Colors.red, fontWeight: FontWeight.bold),
                  )
                ],
              ),
              Form(
                key: _addressFormkey,
                child: TextFormField(
                  controller: userAddress,
                  // onChanged: (uAddress){},
                  maxLines: null,
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5)),
                  ),
                  validator: (valueAddress) {
                    if (valueAddress!.isEmpty) {
                      return 'Please Enter Address';
                    } else {
                      addressValid = true;
                    }
                  },
                ),
              ),
              SizedBox(height: 45),
              Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: DropdownButtonFormField<String>(
                        decoration: InputDecoration(
                            fillColor: Colors.white,
                            filled: true,
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5))),
                        hint: Text('Current City'),
                        value: selectCity,
                        items: city
                            .map((cities) => DropdownMenuItem<String>(
                                value: cities, child: Text(cities)))
                            .toList(),
                        onChanged: (cities) {
                          selectCity = cities;
                        }),
                  ),
                  SizedBox(width: 5),
                  Expanded(
                    child: TextFormField(
                      controller: userPincode,
                      // onChanged: (uPin){},
                      decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        hintText: 'Pincode',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5)),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30),
              Row(
                children: [
                  Text(
                    'Phone Number',
                    style: TextStyle(fontSize: 20, color: Colors.green[800]),
                  ),
                  Text(
                    '*',
                    style: TextStyle(
                        color: Colors.red, fontWeight: FontWeight.bold),
                  )
                ],
              ),
              Form(
                key: _formkey,
                child: TextFormField(
                  keyboardType: TextInputType.text,
                  controller: userNumber,
                  // onChanged: (uNumber){},
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5)),
                    hintText: '+91',
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter Mobile Number';
                    }
                    RegExp number = new RegExp(r'(^(?:[+0]9)?[0-9]{10,12}$)');
                    if (number.hasMatch(value)) {
                      valid = true;
                      return null;
                    } else {
                      valid = false;
                      return 'Invalid Mobile Number';
                    }
                  },
                ),
              ),
              SizedBox(height: 30),
              Row(
                children: [
                  Text(
                    'Email Id',
                    style: TextStyle(fontSize: 20, color: Colors.green[800]),
                  ),
                  Text(
                    '*',
                    style: TextStyle(
                        color: Colors.red, fontWeight: FontWeight.bold),
                  )
                ],
              ),
              Form(
                key: _emailFormkey,
                child: TextFormField(
                    controller: userEmail,
                    // onChanged: (uEmail){},
                    decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5)),
                        hintText: '@gmail.com'),
                    validator: (valueMail) {
                      if (valueMail!.isEmpty) {
                        return 'Please enter Email Id';
                      }
                      RegExp email = new RegExp(
                          r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
                      if (email.hasMatch(valueMail)) {
                        mailValid = true;
                        return null;
                      } else {
                        mailValid = false;
                        return 'Invalid Email Id';
                      }
                    }),
              ),
              SizedBox(height: 30),
              Row(
                children: [
                  Text(
                    'Password',
                    style: TextStyle(fontSize: 20, color: Colors.green[800]),
                  ),
                  Text(
                    '*',
                    style: TextStyle(
                        color: Colors.red, fontWeight: FontWeight.bold),
                  )
                ],
              ),
              Form(
                key: _passFormkey,
                child: TextFormField(
                  controller: userPassword,
                  // onChanged: (uPassword){},
                  obscureText: false,
                  decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5)),
                      suffixIcon: Icon(
                        Icons.remove_red_eye_outlined,
                        color: Colors.black54,
                      )),
                  validator: (valuePass) {
                    if (valuePass!.isEmpty) {
                      return 'Please enter your Password';
                    } else {
                      passValid = true;
                    }
                  },
                ),
              ),
              SizedBox(height: 30),
              Row(
                children: [
                  Text(
                    'Confirm Password',
                    style: TextStyle(fontSize: 20, color: Colors.green[800]),
                  ),
                  Text(
                    '*',
                    style: TextStyle(
                        color: Colors.red, fontWeight: FontWeight.bold),
                  )
                ],
              ),
              Form(
                key: _conPassFormkey,
                child: TextFormField(
                  controller: userConPassword,
                  // onChanged: (uPassword){},
                  obscureText: false,
                  decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5)),
                      suffixIcon: Icon(
                        Icons.remove_red_eye_outlined,
                        color: Colors.black54,
                      )),
                  validator: (valueConPass) {
                    if (valueConPass!.isEmpty) {
                      return 'Please confirm your Password';
                    } else if (userPassword != userConPassword) {
                      return 'Please check password';
                    } else {
                      conPassValid = true;
                    }
                  },
                ),
              ),
              SizedBox(height: 30),
              Row(
                children: [
                  Expanded(
                    child: Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: [Colors.grey, Colors.green]),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: TextButton(
                          onPressed: () {
                            reset();
                          },
                          child: Text('RESET',
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white)),
                        )),
                  ),
                  SizedBox(width: 20),
                  Expanded(
                    child: Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: [Colors.grey, Colors.green]),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: TextButton(
                          onPressed: () {
                            if (_nameFormkey.currentState!.validate() &&
                                _addressFormkey.currentState!.validate() &&
                                _formkey.currentState!.validate() &&
                                _emailFormkey.currentState!.validate() &&
                                _passFormkey.currentState!.validate()) {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Home(),
                                  ));
                            } else if (valid = false) {
                              return;
                            } else if (mailValid = false) {
                              return;
                            } else if (nameValid = true) {
                              return;
                            } else if (addressValid = true) {
                              return;
                            } else if (passValid = true) {
                              return;
                            }
                          },
                          child: Text('SUBMIT',
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white)),
                        )),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      // ),
    );
  }

  final List city = [
    'Thiruvananthapuram',
    'Kollam',
    'Pathanamthitta',
    'Alapuzha',
    'Kottayam',
    'Idukki',
    'Ernakulam',
    'Thrissur',
    'Palakkad',
    'Malappuram',
    'Kozhikode',
    'Wayanad',
    'Kannur',
    'Kasargod'
  ];
  String? selectCity;
  // String userName='';
  // String userAddress='';
  // String userPincode='';
  // String userNumber='';
  // String userEmail='';
  // String userPassword='';
  TextEditingController userName = TextEditingController();
  TextEditingController userAddress = TextEditingController();
  TextEditingController userPincode = TextEditingController();
  TextEditingController userNumber = TextEditingController();
  TextEditingController userEmail = TextEditingController();
  TextEditingController userPassword = TextEditingController();
  TextEditingController userConPassword = TextEditingController();

  void reset() {
    setState(() {
      userName.text = '';
      userAddress.text = '';
      userPincode.text = '';
      userNumber.text = '';
      userEmail.text = '';
      userPassword.text = '';
      userConPassword.text = '';
    });
  }
}
