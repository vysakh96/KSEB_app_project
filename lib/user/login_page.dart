import 'package:flutter/material.dart';

import 'register_page.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Container(
          height: double.maxFinite,
          width: double.maxFinite,
          child: ListView(
            shrinkWrap: true,
            children: [
              Center(child: Image(image: AssetImage('images/kseb.jpg'))),
              Padding(
                padding: const EdgeInsets.only(right: 5,left: 5,top: 50),
                child: TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5)),
                    hintText: 'User Name',
                    contentPadding: EdgeInsets.symmetric(horizontal: 5,vertical: 5)
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 5,left: 5,top: 30),
                child: TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5)),
                    hintText: 'Password',
                    suffixIcon: Icon(Icons.remove_red_eye_outlined,color: Colors.black54,),
                    contentPadding: EdgeInsets.symmetric(horizontal: 5,vertical: 5),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 5,left: 5,top: 50),
                child: Container(
                  height: 40,
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.blue[800]),
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      'LOGIN',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 5,left: 5,top: 80),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Not Yet Registered ?',
                      style: TextStyle(color: Colors.black54, fontSize: 15),
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const Register(),
                              ));
                        },
                        child: Text('Register Now'))
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
