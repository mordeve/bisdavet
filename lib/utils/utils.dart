import 'package:url_launcher/url_launcher.dart';

Future<void> _launchUrl(String _url) async {
  if (!await launchUrl(Uri.parse(_url))) {
    throw Exception('Could not launch $_url');
  }
}

launchInstagram(String username) async {
  final nativeUrl = "instagram://user?username=$username";
  final webUrl = "https://www.instagram.com/$username/";
  final nativeUri = Uri.parse(nativeUrl);
  final webUri = Uri.parse(webUrl);
  if (await canLaunchUrl(nativeUri)) {
    await launchUrl(nativeUri);
  } else if (await canLaunchUrl(webUri)) {
    await launchUrl(webUri);
  } else {
    print("can't open Instagram");
  }
}
