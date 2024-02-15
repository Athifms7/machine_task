import 'package:codex_ui/view/constants.dart';
import 'package:codex_ui/view/home_screen/widgets/homescreen_card.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 9, 35, 57),
          elevation: 10,
          toolbarHeight: height * 0.10,
          title: Center(
            child: Image.asset(
              'assets/images/main-logo.png',
              color: Colors.white,
              width: width * 0.500,
            ),
          ),
        ),
        backgroundColor: Colors.grey[200],
        body: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const CircleAvatar(
                backgroundImage: AssetImage("assets/images/user.jpg"),
                radius: 60,
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Hello,User',
                style: kCardTextStyle,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: GridView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 1.0,
                    mainAxisSpacing: 1.0,
                    // childAspectRatio: 1,
                  ),
                  itemCount: choices.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: SelectCard(
                        width: width,
                        height: height,
                        choice: choices[index],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ));
  }
}
