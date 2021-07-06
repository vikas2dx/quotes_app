import 'package:qutoes_app/model/QuotesModel.dart';
import 'package:qutoes_app/res/AppColor.dart';

class QuotesData {
  String quotes =
      "People Often says that motivation doesn't lost. Well, neither does bathing-- That's why we recommended it daily";
  List<String> hastTags = [
    '#motivational',
    '#truth',
    '#peotry',
    '#love',
    '#lifestyle',
    '#happiness'
  ];

  List<String> hastTagsFilter = ['#love', '#lifestyle', '#happiness'];
  String author = 'Zig Ziglar';
  String authorForFilter = 'Mark';

  List<QuotesModel> getQuotesData() {
    List<QuotesModel> listQuotes = List();
    listQuotes
        .add(QuotesModel(quotes, author, hastTags, AppColor.randomColor1));
    listQuotes
        .add(QuotesModel(quotes, author, hastTags, AppColor.randomColor2));
    listQuotes
        .add(QuotesModel(quotes, author, hastTags, AppColor.randomColor3));
    listQuotes.add(QuotesModel(
        quotes, authorForFilter, hastTagsFilter, AppColor.randomColor4));
    listQuotes.add(
        QuotesModel(quotes, author, hastTagsFilter, AppColor.randomColor1));
    listQuotes
        .add(QuotesModel(quotes, author, hastTags, AppColor.randomColor2));
    listQuotes.add(
        QuotesModel(quotes, author, hastTagsFilter, AppColor.randomColor3));
    listQuotes
        .add(QuotesModel(quotes, author, hastTags, AppColor.randomColor4));
    return listQuotes;
  }

  List<QuotesModel> getListByAuthorName(String authorName) {
    List<QuotesModel> list = getQuotesData()
        .where((element) => element.author == authorName)
        .toList();
    return list;
  }

  List<QuotesModel> getListByHashTags(String hashtags) {
    List<QuotesModel> list = getQuotesData()
        .where((element) => element.hasTags.contains(hashtags))
        .toList();
    return list;
  }
}
