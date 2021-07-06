import 'package:flutter/material.dart';
import 'package:qutoes_app/ui/pages/QuotesListPage.dart';
import 'package:qutoes_app/ui/pages/HashTagsQuotesPage.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool slideQuotesActive = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Quotes"),
        actions: [
          IconButton(
            icon: Icon(
              Icons.message,
              color: slideQuotesActive ? Colors.blue : Colors.grey,
            ),
            onPressed: () {
              setState(() {
                slideQuotesActive = true;
              });
            },
          ),
          IconButton(
            icon: Icon(
              Icons.list,
              color: slideQuotesActive ? Colors.grey : Colors.blue,
            ),
            onPressed: () {
              setState(() {
                slideQuotesActive = false;
              });
            },
          ),
        ],
      ),
      body: slideQuotesActive ? HashTagsQuotesPage() : QuotesListPage(),
    );
  }
}
