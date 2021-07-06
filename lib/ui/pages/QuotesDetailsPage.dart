import 'package:flutter/material.dart';
import 'package:qutoes_app/model/QuotesData.dart';
import 'package:qutoes_app/ui/widgets/QuotesListWidget.dart';

class QuotesDetailsPage extends StatelessWidget {
  String author;

  QuotesDetailsPage(this.author, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(author),),
        body:  Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView.builder(
            itemCount: QuotesData().getListByAuthorName(author).length,
            itemBuilder: (context, index) {
              return QuotesListWidget(QuotesData().getListByAuthorName(author)[index],false);
            },
          ),
        )

    );
  }
}
