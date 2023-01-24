import 'package:flutter/material.dart';

class LoginKseb extends StatefulWidget {
  const LoginKseb({Key? key}) : super(key: key);

  @override
  State<LoginKseb> createState() => _LoginKsebState();
}

class _LoginKsebState extends State<LoginKseb> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: ListView(
            shrinkWrap: true,
            children: [
              Align(alignment: Alignment.center,
                  child: Text('Login',style: TextStyle(color: Colors.black,fontSize: 39,fontWeight: FontWeight.bold),)),
              Align(alignment: Alignment.center,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: Text('Login to your account',style: TextStyle(color: Colors.black54,fontSize: 20,fontWeight: FontWeight.bold),),
                  )),
              Padding(
                padding: const EdgeInsets.only(top: 45),
                child: Text('Email',style: TextStyle(color: Colors.black,fontSize: 18),),
              ),
              TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5)
                  ),
                  contentPadding: EdgeInsets.symmetric(vertical: 3,horizontal: 5),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Text('Password',style: TextStyle(color: Colors.black,fontSize: 18),),
              ),
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5)
                  ),
                  contentPadding: EdgeInsets.symmetric(vertical: 3,horizontal: 5),
                  suffixIcon: IconButton(
                    onPressed: (){},
                    icon: Icon(Icons.remove_red_eye_outlined,color: Colors.black54,),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10,left: 10,top: 40),
                child: Container(
                  height:55,
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.blue),
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      'Login',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
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
                          // Navigator.push(
                          //     context,
                          //     MaterialPageRoute(
                          //       builder: (context) => const Register(),
                          //     ));
                        },
                        child: Text('Sign up',style: TextStyle(color: Colors.black,fontSize: 20),)),
                    Container(
                      height: 100,
                    ),
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
