class NewsArt{
String imgUrl;
String newsHead;
String newsDes;
String newsUrl;
String newsCnt;

NewsArt({
  required this.imgUrl,
  required this.newsDes,
  required this.newsCnt,
  required this.newsHead,
  required this.newsUrl
});


static NewsArt fromAPItoAPP(Map<String, dynamic> article) {
return NewsArt(
imgUrl: article["urlToImage"] ??
"https://media.istockphoto.com/id/1313303632/video/breaking-news-template-intro-for-tv-broadcast-news-show-program-with-3d-breaking-news-text.jpg?s=640x640&k=20&c=S0dTZp37XKVcCAnoguMnRatvv4Nkp2cjmA5aYOOrJs8=",
newsCnt: article["content"] ?? "--",
newsDes: article["description"] ?? "--",
newsHead: article["title"] ?? "--",
newsUrl: article["url"] ??
"https://news.google.com/home?hl=en-IN&gl=IN&ceid=IN:en");
}

}