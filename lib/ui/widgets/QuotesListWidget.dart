import 'package:flutter/material.dart';
import 'package:qutoes_app/model/QuotesModel.dart';
import 'package:qutoes_app/ui/pages/QuotesDetailsPage.dart';

class QuotesListWidget extends StatelessWidget {
  QuotesModel quotesData;
  bool clickActive;

  QuotesListWidget(this.quotesData, this.clickActive, {Key key})
      : super(key: key);

  var hastTagsWidget = List<Widget>();

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (clickActive) {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => QuotesDetailsPage(quotesData.author),
              ));
        }
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                quotesData.quotes,
                style: TextStyle(fontSize: 18, color: Color(quotesData.colors)),
                textAlign: TextAlign.center,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                " - " + quotesData.author,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 18),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Divider(
                color: Colors.black,
              ),
            )
          ],
        ),
      ),
    );
  }
}
