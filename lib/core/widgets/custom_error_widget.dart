import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomErrorWidget extends StatelessWidget {
  const CustomErrorWidget({super.key, required this.errorMassage});

  final String errorMassage;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        errorMassage,
        style: Styles.textStyle18,
      ),
    );
  }
}