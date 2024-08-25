import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class HomeScreen extends StatelessWidget {
  WebViewController webViewController = WebViewController()
    ..loadRequest(Uri.parse('https://blog.codeFactory.ai'))
    ..setJavaScriptMode(JavaScriptMode.unrestricted);

  // webviewcontroller가 non-const 이기 때문에 삭제
  HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text('Code Factory'),
        centerTitle: true,
        actions: [
          IconButton(onPressed: () {
            webViewController.loadRequest(Uri.parse('https://blog.codeFactory.ai'));
          },
          icon: Icon(
            Icons.home,
          ))
        ]
      ),
      body: WebViewWidget(
        controller: webViewController,
      )
    );
  }
}