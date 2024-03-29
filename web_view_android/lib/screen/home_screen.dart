import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

// ignore: must_be_immutable
class HomeScreen extends StatelessWidget {
  WebViewController? controller;
  final homeUrl = 'https://blog.codefactory.ai';

  HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: const Text('Code Factory'),
          centerTitle: true,
          actions: [
            IconButton(
                onPressed: () {
                  if (controller == null) {
                    return;
                  }
                  controller!.loadUrl(homeUrl);
                },
                icon: const Icon(
                  Icons.home,
                ))
          ],
        ),
        body: WebView(
          onWebViewCreated: (WebViewController controller) {
            this.controller = controller;
          },
          initialUrl: homeUrl,
          javascriptMode: JavascriptMode.unrestricted,
        ));
  }
}
