// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:flutter_websportfire/src/domain/uscases/url_service.dart';

class WebViewScreen extends StatefulWidget {
  final String url;
  const WebViewScreen({
    Key? key,
    required this.url,
  }) : super(key: key);

  @override
  State<WebViewScreen> createState() => _WebViewScreenState();
}

class _WebViewScreenState extends State<WebViewScreen> {
  WebViewController controller = WebViewController()
    ..setJavaScriptMode(JavaScriptMode.unrestricted)
    ..setBackgroundColor(const Color(0x00000000))
    ..setNavigationDelegate(
      NavigationDelegate(
        onProgress: (int progress) {
          // Update loading bar.
        },
        onPageStarted: (String url) {},
        onPageFinished: (String url) {},
        onWebResourceError: (WebResourceError error) {},
        onNavigationRequest: (NavigationRequest request) {
          if (request.url.startsWith('https://reddeveloper.ru/')) {
            return NavigationDecision.prevent;
          }
          return NavigationDecision.navigate;
        },
      ),
    )
    ..loadRequest(Uri.parse('https://reddeveloper.ru/'));

  @override
  Widget build(BuildContext context) {
    print('ewebview');
    return Scaffold(
      body: WebViewWidget(controller: controller),
    );
  }
}


// class WebViewScreen extends StatefulWidget {
//   const WebViewScreen({super.key});

//   @override
//   State<WebViewScreen> createState() => _WebViewScreenState();
// }

// class _WebViewScreenState extends State<WebViewScreen> {
//   UrlService service = UrlService();

//   @override
//   void initState() {
//     service.initService();
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Column(children: [
//         const Text('home screen'),
//         FilledButton.tonal(
//           onPressed: () {},
//           child: const Text('go to 2 widget'),
//         )
//       ]),
//     );
//   }
// }
