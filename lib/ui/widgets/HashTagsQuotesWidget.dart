import 'package:flutter/material.dart';
import 'package:qutoes_app/model/QuotesModel.dart';
import 'package:qutoes_app/res/AppColor.dart';
import 'package:qutoes_app/ui/pages/HashTagsDetailsPage.dart';

class HashTagsQuotesWidget extends StatelessWidget {
  QuotesModel quotesData;
  bool isClick;

  HashTagsQuotesWidget(this.quotesData, this.isClick, {Key key})
      : super(key: key);

  var hastTagsWidget = List<Widget>();

  @override
  Widget build(BuildContext context) {
    return Padding(
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
            padding: const EdgeInsets.all(8.0),
            child: Wrap(
              spacing: 5,
              children: [
                for (int i = 0; i < quotesData.hasTags.length; i++)
                  Padding(
                    padding: const EdgeInsets.all(8),
                    child: InkWell(
                      onTap: () {
                        if (isClick) {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    HashTagsDetailsPage(quotesData.hasTags[i]),
                              ));
                        }
                      },
                      child: Text(
                        quotesData.hasTags[i],
                        style: TextStyle(
                            fontSize: 16,
                            background: Paint()..color = AppColor.hashTags,
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  )
              ],
            ),
          )
        ],
      ),
    );
  }
}
