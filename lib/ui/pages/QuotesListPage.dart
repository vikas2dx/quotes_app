import 'package:flutter/material.dart';
import 'package:qutoes_app/model/QuotesData.dart';
import 'package:qutoes_app/ui/widgets/QuotesListWidget.dart';

class QuotesListPage extends StatefulWidget {
  const QuotesListPage({Key key}) : super(key: key);

  @override
  _QuotesListPageState createState() => _QuotesListPageState();
}

class _QuotesListPageState extends State<QuotesListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
          itemCount: QuotesData().getQuotesData().length,
          itemBuilder: (context, index) {
            return QuotesListWidget(QuotesData().getQuotesData()[index],true);
          },
        ),
      ),
    );
  }
}
