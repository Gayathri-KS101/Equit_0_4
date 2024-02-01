import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class DetailViewScreen extends StatefulWidget{
  String newsUrl;
  DetailViewScreen({super.key, required this.newsUrl});

  @override
  State<DetailViewScreen> createState() => _DetailViewScreenState();
}

class _DetailViewScreenState extends State<DetailViewScreen> {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body : WebView(
        initialUrl: widget.newsUrl,
        javascriptMode: JavaScriptMode.unrestricted,
        onWebViewCreated: (WebViewController webViewController) {
          setState(() {
            controller.complete(webViewController);
          });
        },
      ),
    ),
    // Center(child:Text(widget.newsUrl))
    );
  }
}