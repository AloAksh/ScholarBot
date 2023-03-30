import 'package:flutter/material.dart';
import 'quote_class.dart';

class QuoteCard extends StatelessWidget {
  final Quote myQuote;
  final Function delete;
  const QuoteCard({super.key, required this.myQuote, required this.delete});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0.0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              '${myQuote.text}',
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.grey[700],
              ),
              ),
              const SizedBox(height: 6.0,),
              Text(
                '${myQuote.author}',
                style: TextStyle(
                  fontSize: 14.0,
                  color: Colors.grey[900], 
                ),
              ),
              const SizedBox(height: 8.0,),
              TextButton(
                onPressed: (){
                  delete();
                  },  
                  child: const Text("Delete Quote"),
              ),
          ],
        ),
      ),
    );
  }
}