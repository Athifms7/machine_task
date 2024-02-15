import 'package:codex_ui/view/blood_book/blood_details.dart';
import 'package:codex_ui/view/constants.dart';
import 'package:flutter/material.dart';

class BloodBookScreen extends StatelessWidget {
  const BloodBookScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red[500],
        elevation: 10,
        toolbarHeight: height * 0.10,
        title: const Text(
          'Blood Book',
          style: kAppBarTextStyle,
        ),
      ),
      backgroundColor: Colors.grey[200],
      body: SingleChildScrollView(
        child: Column(children: [
          Center(
            heightFactor: 3,
            child: Text(
              'Select One',
              style: kAppBarTextStyle,
            ),
          ),
          GridView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              crossAxisSpacing: 1.0,
              mainAxisSpacing: 1.0,
              // childAspectRatio: 1,
            ),
            itemCount: bloodCardText.length,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.all(3.0),
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: BloodCard(
                    width: width,
                    height: height,
                    index: index,
                  ),
                ),
              );
            },
          ),
        ]),
      ),
    );
  }
}
//  BloodCard(width: width, height: height,index: index,)

class BloodCard extends StatelessWidget {
  const BloodCard({
    super.key,
    required this.width,
    required this.height,
    required this.index,
  });

  final double width;
  final double height;
  final index;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => BloodBookDetails(),
        ));
      },
      child: Material(
        borderRadius: BorderRadius.circular(20),
        elevation: 5,
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,

            borderRadius:
                BorderRadius.circular(20), // Adjust the radius as needed
          ),
          width: width * 0.32,
          height: height * 0.16,
          child: Center(
              child: Text(
            bloodCardText[index],
            style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w600,
                color: bloodCardColor[index]),
          )),
        ),
      ),
    );
  }
}

List<Color> bloodCardColor = [
  Colors.red,
  Colors.purple,
  Colors.brown,
  Colors.green,
  Colors.pink,
  Colors.blue,
  Colors.red,
  Colors.black,
];
List<String> bloodCardText = [
  'A+ve',
  'A-ve',
  'B+ve',
  'B-ve',
  'AB+ve',
  'AB-ve',
  'O+ve',
  'O-ve',
];
