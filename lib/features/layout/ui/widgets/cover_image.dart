import 'package:flutter/material.dart';

class CoverImage extends StatelessWidget {
  const CoverImage({super.key, required this.coverImage});
  final String coverImage;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: Image(image: AssetImage(coverImage)),
    );
  }
}
