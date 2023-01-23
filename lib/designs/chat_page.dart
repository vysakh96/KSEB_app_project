import 'package:flutter/material.dart';

class Chat extends StatefulWidget {
  const Chat({Key? key}) : super(key: key);

  @override
  State<Chat> createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(5.0),
        child: TextFormField(
          maxLines: null,
          decoration: InputDecoration(
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
              hintText: 'Type Here',
              suffixIcon: Icon(
                Icons.send,
                color: Colors.green[700],
              )),
        ),
      ),
      appBar: AppBar(
        title: Text(
          'Messages',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.green[700],
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 30, left: 5, right: 80),
            child: Card(
              color: Colors.grey[300],
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  'user message send',
                  style: TextStyle(color: Colors.black, fontSize: 15),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30, left: 80, right: 5),
            child: Card(
              color: Colors.grey[300],
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  'user message replay',
                  style: TextStyle(color: Colors.black, fontSize: 15),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
