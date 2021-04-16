import 'package:flutter/material.dart';
import 'package:listapp/class.dart';
import 'class.dart';

void main() {
  runApp(MaterialApp(
    home: listQuotes(),
    debugShowCheckedModeBanner: false,
  ));
}

class listQuotes extends StatefulWidget {
  @override
  _listQuotesState createState() => _listQuotesState();
}

class _listQuotesState extends State<listQuotes> {
  List<Quote> namelist = [
    Quote(
        author: 'ashir saleh', text: 'this is something that has been written'),
    Quote(
        author: 'ashir saleh', text: 'this is something that has been written'),
    Quote(author: 'ashir saleh', text: 'and the list is end here')
  ];

  Widget quoteTemplate(quote) {
    return Card(
      margin: EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 0),
      color: Colors.grey[800],
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child:
            Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
          Text(
            quote.author,
            style: TextStyle(
              fontSize: 20.0,
              color: Colors.grey[600],
            ),
          ),
          SizedBox(height: 15.0),
          Text(
            quote.text,
            style: TextStyle(
              fontSize: 15.0,
              color: Colors.grey[600],
            ),
          ),
        ]),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.grey[600],
      appBar: AppBar(
        title: Text(
          "These are my favourite quotes",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.white70,
        centerTitle: true,
      ),
      body: Column(
        children: namelist.map((quote) => quoteTemplate(quote)).toList(),
      ),
    );
  }
}
