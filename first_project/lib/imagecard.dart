import 'package:flutter/material.dart';

class ImageCard extends StatelessWidget {
  final String _assetPath;

  const ImageCard(this._assetPath);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.fromLTRB(0, 10, 0, 0),
        constraints: const BoxConstraints.expand(height: 400.0, width: 100.0),
        decoration: const BoxDecoration(
            color: Colors.black,
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
