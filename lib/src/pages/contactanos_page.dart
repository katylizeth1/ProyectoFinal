import 'package:flutter/material.dart';

class ContactanosPage extends StatelessWidget {
  const ContactanosPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Comentarios'),
        backgroundColor: const Color(0xFFA5D6A7),
      ),
      body: Column(
        children: const <Widget>[
          Padding(
            padding: EdgeInsets.all(16.0),
            child: TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(), labelText: "Title"),
              maxLines: 1,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(16.0),
            child: TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(), labelText: "Description"),
              maxLines: 5,
            ),
          ),
        ],
      ),
    );
  }
}
