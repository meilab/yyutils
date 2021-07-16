import 'package:flutter/material.dart';

class SmallIconImage extends StatelessWidget {
  final String url;
  SmallIconImage(this.url);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      url,
      width: 30,
      height: 30,
    );
  }
}

class SmallCircleIconImage extends StatelessWidget {
  final String url;
  SmallCircleIconImage(this.url);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundImage: ExactAssetImage(url),
    );
  }
}

class NormalIconImage extends StatelessWidget {
  final String url;
  NormalIconImage(this.url);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      url,
      width: 50,
      height: 50,
    );
  }
}

class BigIconImage extends StatelessWidget {
  final String url;
  BigIconImage(this.url);

  @override
  Widget build(BuildContext context) {
    return Image.asset(url, width: 80, height: 80, fit: BoxFit.fill);
  }
}
