import 'package:flutter/material.dart';
import 'package:mit/core/constant/colors/colors.dart';
import 'package:mit/core/constant/styles/styles.dart';

class StaticPageScreen extends StatelessWidget {
  final String title;
  final String png;
  const StaticPageScreen({super.key, required this.title, required this.png});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: white,
        title: Text(
          title,
          style: TextStyles.textViewBold20,
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 18),
              Image.asset(
                png,
                fit: BoxFit.fill,
                height: 200,
                width: 200,
              ),
              const SizedBox(height: 10),
              Text(
                  ' text text text text text text text text text text text text text text text',
                  style: TextStyles.textViewRegular18),
            ],
          ),
        ),
      ),
    );
  }
}
