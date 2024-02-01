import 'dart:convert';
import 'dart:math';
import '../model/newsArt.dart';
import 'package:http/http.dart';

//import '../model/newsArt.dart';


class FetchNews{
  static List sourcesId = ["abc-news",

    "bbc-news",
    "bbc-sport",

    "business-insider",

    "engadget",
    "entertainment-weekly",
    "espn",
    "espn-cric-info",
    "financial-post",

    "fox-news",
    "fox-sports",
    "globo",
    "google-news",
    "google-news-in",

    "medical-news-today",

    "national-geographic",

    "news24",
    "new-scientist",

    "new-york-magazine",
    "next-big-future",

    "techcrunch",
    "techradar",

    "the-hindu",

    "the-wall-street-journal",

    "the-washington-times",
    "time",
    "usa-today",
  ];
  static Future<NewsArt> fetchNews( )async {
    final _random = new Random();
    var sourcesID = sourcesId[_random.nextInt(sourcesId.length)];
    print(sourcesID);

    Response response = await get( Uri.parse("https://newsapi.org/v2/everything?q=crime+India&pageSize=10&sources=$sourcesID&apiKey=ad49536a87164deab036a7c739339aaa"));
    Map body_data = jsonDecode(response.body);
    List articles = body_data["articles"];
    //print(articles);
    print("**********************************************************************************************");

    final _Newrandom = new Random();
    var myArticle = articles[_random.nextInt(articles.length)];
    print(myArticle);
    print("***************************************************************************");

    return NewsArt.fromAPItoAPP(myArticle);

  }
}