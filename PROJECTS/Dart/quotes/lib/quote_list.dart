import 'package:flutter/material.dart';
import 'quote_class.dart';
import 'quote_card.dart';
//Quote class that saves the quote and its author together
class QuoteList extends StatefulWidget {
  const QuoteList({super.key});

  @override
  State<QuoteList> createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  List<Quote> quotes = [
    Quote(text: "Be Amazing", author: "Mary Kom"),
    Quote(text:"Quit complaining, start working", author:"TRS Guest"),
    Quote(text:"Happiness is a choice", author: "Buddha"),
  ];

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Quotes",),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        children: quotes.map((quot) => QuoteCard(
          myQuote: quot, 
          delete: () => setState((){ quotes.remove(quot); })
        )).toList(),
      ),
    );
  }
}