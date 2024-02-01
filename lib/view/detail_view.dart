import 'dart:async';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';



class DetailViewScreen extends StatefulWidget {
  String newsUrl;
  DetailViewScreen({Key?key, required this.newsUrl}): super(key: key);
  @override
  State<DetailViewScreen> createState() => _DetailViewScreenState();
}
class _DetailViewScreenState extends State<DetailViewScreen> {
  late Completer<WebViewController> controller;

  @override
  void initState() {
    super.initState();
    setState(() {
      widget.newsUrl = widget.newsUrl.contains("http:")
          ? widget.newsUrl.replaceAll("http:", "https:")
          : widget.newsUrl;
    });

    controller = Completer<WebViewController>();
  }

  //final Completer<WebViewController> controller =
  //Completer<WebViewController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Equit")),
      body: WebViewWidget(
        initialUrl: widget.newsUrl,
        javascriptMode: JavaScriptMode.unrestricted,
        onWebViewCreated: (WebViewController webViewController) {
          setState(() {
            controller.complete(webViewController);
          });
        },
      ),
    );
  }
}