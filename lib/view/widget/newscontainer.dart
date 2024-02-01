import "package:equit_0_4/view/detail_view.dart";
import "package:flutter/material.dart";
//import 'package:equit/view/detail_view.dart';
//import 'package:url_launcher/url_launcher.dart';

class NewsContainer extends StatelessWidget {
  //const NewsContainer({super.key});
  String imgUrl;
  String newsHead;
  String newsDes;
  String newsUrl;
  String newsCnt;


  NewsContainer({super.key,
    required this.imgUrl,
    required this.newsDes,
    required this.newsCnt,
    required this.newsHead,
    required this.newsUrl});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: MediaQuery
            .of(context)
            .size
            .height,
        width: MediaQuery
            .of(context)
            .size
            .width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          //children: [
          //widget(
          children: [
            FadeInImage.assetNetwork(
                height: 400,
                width: MediaQuery
                    .of(context)
                    .size
                    .width,
                fit: BoxFit.cover,
                placeholder: "Assets/img/breakingnews.webp",
                image: imgUrl),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 20),
                    Text(
                        newsHead.length>70? '${newsHead.substring(0,70)}...':
                        newsHead,
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold)),
                    SizedBox(height: 10),
                    Text(
                        newsCnt != "--"?
                        newsCnt.length>250
                            ? newsCnt.substring(0,250)
                            : "${newsCnt.toString().substring(0, newsCnt.length-15)}...": newsCnt,
                        style: TextStyle(fontSize: 12, color: Colors.grey)),
                    SizedBox(height: 10),
                    Text(newsDes, style: TextStyle(fontSize: 16))

                  ]
              ),
            ),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: ElevatedButton(onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>DetailViewScreen(newsUrl: newsUrl)));
                  },
                      child: Text("Know Your Rights")),
                ),
              ],
            ),


            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: ElevatedButton(onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>DetailViewScreen(newsUrl: newsUrl)));
                  },
                      child: Text("Read More")),
                ),
              ],
            ),
            SizedBox(height: 10,)
            // ElevatedE
          ],
        )
    );
  }
}

/*widget(child: Spacer()),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: ElevatedButton(onPressed: () {
                    print("Going To $newsUrl");
                  },
                      child: Text("Read More")),
                ),
              ],
            ),
            SizedBox(height: 10,)// ElevatedE
          ],
        )
    );
  }


}*/
