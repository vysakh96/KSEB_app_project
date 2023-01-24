import 'package:flutter/material.dart';

import 'kseb_bill.dart';

class Kseb_Register extends StatefulWidget {
  const Kseb_Register({Key? key}) : super(key: key);

  @override
  State<Kseb_Register> createState() => _Kseb_RegisterState();
}

class _Kseb_RegisterState extends State<Kseb_Register> {
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
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
      body: Form(
        key: _formkey,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: ListView(
              shrinkWrap: true,
              children: [
                Row(
                  children: [
                    Text(
                      'Email Id',
                      style: TextStyle(fontSize: 15, color: Colors.green[800]),
                    ),
                    Text(
                      '*',
                      style: TextStyle(
                          color: Colors.red, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                TextFormField(
                    controller: email,
                    decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5)),
                        contentPadding:
                            EdgeInsets.symmetric(vertical: 8, horizontal: 5),
                        hintText: '@gmail.com'),
                    validator: (valueMail) {
                      if (valueMail!.isEmpty) {
                        return 'Please enter Email Id';
                      }
                      RegExp email = new RegExp(
                          r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
                      if (email.hasMatch(valueMail)) {
                        return null;
                      } else {
                        return 'Invalid Email Id';
                      }
                    }),
                Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: Row(
                    children: [
                      Text(
                        'Location',
                        style:
                            TextStyle(fontSize: 15, color: Colors.green[800]),
                      ),
                      Text(
                        '*',
                        style: TextStyle(
                            color: Colors.red, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
                TextFormField(
                    controller: location,
                    // onChanged: (uName){},
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5)),
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 8, horizontal: 5),
                    ),
                    validator: (valueName) {
                      if (valueName!.isEmpty) {
                        return 'Please Enter your location';
                      } else {
                        return null;
                      }
                    }),
                Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: Row(
                    children: [
                      Text(
                        'Password',
                        style:
                            TextStyle(fontSize: 15, color: Colors.green[800]),
                      ),
                      Text(
                        '*',
                        style: TextStyle(
                            color: Colors.red, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
                TextFormField(
                  controller: password,
                  // onChanged: (uPassword){},
                  obscureText: false,
                  decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5)),
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 8, horizontal: 5),
                      suffixIcon: Icon(
                        Icons.remove_red_eye_outlined,
                        color: Colors.black54,
                      )),
                  validator: (valuePass) {
                    if (valuePass!.isEmpty) {
                      return 'Please enter your Password';
                    } else if (valuePass.length < 6) {
                      return 'Password too short';
                    } else {
                      return null;
                    }
                  },
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: Row(
                    children: [
                      Text(
                        'Confirm Password',
                        style:
                            TextStyle(fontSize: 15, color: Colors.green[800]),
                      ),
                      Text(
                        '*',
                        style: TextStyle(
                            color: Colors.red, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
                TextFormField(
                  controller: conPassword,
                  obscureText: false,
                  decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5)),
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 8, horizontal: 5),
                      suffixIcon: Icon(
                        Icons.remove_red_eye_outlined,
                        color: Colors.black54,
                      )),
                  validator: (valueConPass) {
                    if (valueConPass!.isEmpty) {
                      return 'Please confirm your Password';
                    } else if (valueConPass.length < 6) {
                      return 'Please check your Password';
                    } else if (valueConPass == password) {
                      return null;
                    }
                  },
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: Row(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 40, right: 20),
                          child: Container(
                              height: 40,
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
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.white)),
                              )),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20, right: 40),
                          child: Container(
                            height: 40,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                  colors: [Colors.grey, Colors.green]),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: TextButton(
                              onPressed: () {
                                if (_formkey.currentState!.validate()) {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => Kseb_Bill(),
                                      ));
                                }
                                ;
                              },
                              child: Text('SUBMIT',
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.white)),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  TextEditingController email = TextEditingController();
  TextEditingController location = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController conPassword = TextEditingController();

  void reset() {
    setState(() {
      email.text = '';
      location.text = '';
      password.text = '';
      conPassword.text = '';
    });
  }
}
