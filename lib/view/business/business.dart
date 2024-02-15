import 'package:codex_ui/view/business/widgets/business_card.dart';
import 'package:codex_ui/view/constants.dart';
import 'package:flutter/material.dart';

class BusinessScreen extends StatelessWidget {
  const BusinessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 5, 49, 86),
        elevation: 10,
        toolbarHeight: height * 0.10,
        title: Text(
          'Business Categories',
          style: kAppBarTextStyle,
        ),
      ),
      backgroundColor: Colors.grey[200],
      body: ListView.separated(
          itemBuilder: (context, index) {
            return BusinessCard(
              width: width,
              height: height,
              choice: choices[index],
            );
          },
          separatorBuilder: (context, index) => Divider(
                thickness: 0.1,
              ),
          itemCount: choices.length),
    );
  }
}
