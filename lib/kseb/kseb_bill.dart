import 'package:flutter/material.dart';

class Kseb_Bill extends StatefulWidget {
  const Kseb_Bill({Key? key}) : super(key: key);

  @override
  State<Kseb_Bill> createState() => _Kseb_BillState();
}

class _Kseb_BillState extends State<Kseb_Bill> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreen[100],
      appBar: AppBar(
        title: Text(
          'Bill Generation',
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
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: ListView(
            shrinkWrap: true,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Row(
                  children: [
                    Text(
                      'Bill Number',
                      style: TextStyle(color: Colors.black, fontSize: 18),
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
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: BorderSide(color: Colors.orange)),
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 8, horizontal: 5),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 5, right: 5, top: 30),
                child: Row(
                  children: [
                    Text(
                      'Consumer Number',
                      style: TextStyle(color: Colors.black, fontSize: 18),
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
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: BorderSide(color: Colors.orange)),
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 8, horizontal: 5),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Row(
                  children: [
                    Text(
                      'Owner Name',
                      style: TextStyle(color: Colors.black, fontSize: 18),
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
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: BorderSide(color: Colors.orange)),
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 8, horizontal: 5),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Row(
                  children: [
                    Text(
                      'Amount',
                      style: TextStyle(color: Colors.black, fontSize: 18),
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
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: BorderSide(color: Colors.orange)),
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 8, horizontal: 5),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 50, right: 100, left: 100),
                child: Container(
                  height: 40,
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [Colors.grey, Colors.green]),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: TextButton(
                    onPressed: () {
                    },
                    child: Text('SUBMIT',
                        style: TextStyle(fontSize: 20, color: Colors.white)),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
