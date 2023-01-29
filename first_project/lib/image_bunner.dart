import 'package:flutter/material.dart';

class ImageBanner extends StatelessWidget {
  final String _assetPath;

  const ImageBanner(this._assetPath);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.fromLTRB(0, 30, 0, 0),
        constraints: const BoxConstraints.expand(height: 500.0),
        decoration: const BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.all(Radius.circular(10))),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.asset(
            _assetPath,
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
        ));
  }
}
