import 'package:flutter/material.dart';
import 'package:qutoes_app/model/QuotesData.dart';
import 'package:qutoes_app/ui/widgets/HashTagsQuotesWidget.dart';

class HashTagsDetailsPage extends StatelessWidget {
  String hashTags;

  HashTagsDetailsPage(this.hashTags, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(hashTags),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView.builder(
            itemCount: QuotesData().getListByHashTags(hashTags).length,
            itemBuilder: (context, index) {
              return HashTagsQuotesWidget(
                  QuotesData().getListByHashTags(hashTags)[index],false);
            },
          ),
        ));
  }
}
