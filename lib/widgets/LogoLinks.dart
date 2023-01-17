import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher_string.dart';

class LogoLinks extends StatelessWidget {
  const LogoLinks({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: Row(
        children: const [
          Logo(
            src: 'images/insta-logo.png',
            nativeUrl: "instagram://user?username=spell_la_liste",
            webUrl: "https://www.instagram.com/spell_la_liste",
          ),
          Logo(
            src: 'images/fb-logo.png',
            nativeUrl: "fb://profile/100089281489236/",
            webUrl: "https://www.facebook.com/profile.php?id=100089281489236",
          ),
          Logo(
            src: 'images/yt-logo.png',
            nativeUrl: "youtube://@spell-la-liste",
            webUrl: "https://www.youtube.com/@spell-la-liste",
          ),
        ],
      ),
    );
  }
}

_launchInstagram(String nativeUrl, String webUrl) async {
  // var nativeUrl = "instagram://user?username=balkan.exe";
  // var webUrl = "https://www.instagram.com/balkan.exe";

  try {
    await launchUrlString(nativeUrl, mode: LaunchMode.externalApplication);
  } catch (e) {
    await launchUrlString(webUrl, mode: LaunchMode.platformDefault);
  }
}

class Logo extends StatelessWidget {
  final String src;
  final String nativeUrl;
  final String webUrl;

  const Logo({
    Key? key,
    this.src = "images/insta-logo.png",
    this.nativeUrl = "instagram://user?username=balkan.exe",
    this.webUrl = "https://www.instagram.com/balkan.exe",
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TextButton(
        onPressed: () => {_launchInstagram(nativeUrl, webUrl)},
        child: Image.asset(
          src,
        ),
      ),
    );
  }
}
