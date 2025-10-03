import 'package:flutter/material.dart';

class ImageWidget extends StatelessWidget {
  final String imagePayment;

  const ImageWidget({
    Key? key,
    required this.imagePayment,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image.asset(imagePayment),
    );
  }
}
