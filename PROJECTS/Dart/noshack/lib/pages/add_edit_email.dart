import 'package:flutter/material.dart';

class AddMail extends StatefulWidget {
  const AddMail({super.key});

  @override
  State<AddMail> createState() => _AddMailState();
}

class _AddMailState extends State<AddMail> {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: const Icon(
          Icons.arrow_back_ios_new,
          color: Color(0xFF363636),
          ),
          leadingWidth: 48.0,
      ),

      backgroundColor: Colors.white,

      body: const Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 8.0),
            child: Text(
              "Add or edit email ID",
              style:TextStyle(
              fontWeight: FontWeight.w900,
              fontFamily: 'Lato',
              fontSize: 24.0,
              color: Color(0xFF363636),
              ),
            ),
          ),

          Padding(
            padding: EdgeInsets.fromLTRB(16.0, 24.0, 16.0, 24.0),
            child: TextField(
              decoration: InputDecoration(
                floatingLabelAlignment: FloatingLabelAlignment.start,
                labelText: 'reallygreatid@awesome.com',
                border: OutlineInputBorder(
                  borderSide: BorderSide(width: 1.0,color: Color.fromARGB(255, 25, 25, 25)),
                  borderRadius: BorderRadius.all(Radius.circular(6.0)),
                ),
              ),
          
            ),
          ),

          Padding(
            padding: EdgeInsets.all(16.0),
            child: TextButton(
              style: ButtonStyle(
                // elevation: MaterialStatePropertyAll(3.0),
                padding: MaterialStatePropertyAll(EdgeInsets.all(16.0)),
              ),
              onPressed: null, 
              child: Text('Continue'),
          
              ),
          ),
        ],
      ),
      
    );
  }
}