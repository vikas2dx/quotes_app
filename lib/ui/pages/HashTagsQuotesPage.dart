import 'package:flutter/material.dart';
import 'package:qutoes_app/model/QuotesData.dart';
import 'package:qutoes_app/ui/widgets/HashTagsQuotesWidget.dart';

class HashTagsQuotesPage extends StatelessWidget {
  HashTagsQuotesPage({Key key}) : super(key: key);

  PageController pageController = PageController(initialPage: 0);
  List<QuotesData> list;

  @override
  Widget build(BuildContext context) {
    return PageView(
      scrollDirection: Axis.horizontal,
      children: [
        for (int i = 0; i < QuotesData().getQuotesData().length; i++)
          HashTagsQuotesWidget(QuotesData().getQuotesData()[i],true)
      ],
    );
  }
}
