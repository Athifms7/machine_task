import 'package:codex_ui/view/blood_book/blood_book.dart';
import 'package:codex_ui/view/business/business.dart';
import 'package:codex_ui/view/business/designation.dart';
import 'package:codex_ui/view/constants.dart';
import 'package:codex_ui/view/members/members.dart';
import 'package:flutter/material.dart';

class BusinessChoice {
  const BusinessChoice(
      {this.name, this.image, this.cardColors, this.location, this.letter});
  final String? name;
  final String? image;
  final Color? cardColors;
  final Widget? location;
  final String? letter;
}

const List<BusinessChoice> choices = <BusinessChoice>[
  BusinessChoice(
      name: 'Lawyers',
      image: 'assets/images/business.png',
      cardColors: Colors.red,
      location: BusinessScreen(),
      letter: 'L'),
  BusinessChoice(
      name: 'Doctors',
      image: 'assets/images/members.png',
      cardColors: Colors.blueAccent,
      location: MembersScreen(),
      letter: 'D'),
  BusinessChoice(
      name: 'Teachers',
      image: 'assets/images/blood-analysis.png',
      cardColors: Colors.purple,
      location: BloodBookScreen(),
      letter: 'T'),
  BusinessChoice(
      name: 'Engineers',
      image: 'assets/images/newspaper.png',
      cardColors: Colors.brown,
      letter: 'E'),
  BusinessChoice(
      name: 'Architects',
      image: 'assets/images/activity.png',
      cardColors: Colors.green,
      letter: 'A'),
];

class BusinessCard extends StatelessWidget {
  const BusinessCard({
    Key? key,
    this.choice,
    required this.width,
    required this.height,
  }) : super(key: key);
  final BusinessChoice? choice;
  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    // final TextStyle textStyle = Theme.of(context).textTheme.display1;
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 8),
        child: Material(
          borderRadius: BorderRadius.circular(20),
          elevation: 5,
          child: InkWell(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) {
                  return const DesignationScreen();
                },
              ));
            },
            child: Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius:
                      BorderRadius.circular(20), // Adjust the radius as needed
                ),
                height: height * 0.12,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    // Container(
                    //   width: 30 * 2,
                    //   height: 30 * 2,
                    //   decoration: BoxDecoration(
                    //     shape: BoxShape.circle,
                    //     border: Border.all(width: 0.3),
                    //     image: DecorationImage(
                    //       image: AssetImage('assets/images/profile-pic.jpg'),
                    //       fit: BoxFit.cover,
                    //     ),
                    //   ),
                    //   // child: child,
                    // ),
                    CircleAvatar(
                      backgroundColor: choice!.cardColors,
                      radius: 30,
                      child: Center(
                        child: Text(
                          choice!.letter!,
                          style: const TextStyle(
                              fontSize: 25,
                              color: Colors.white,
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                    ),
                    Text(
                      choice!.name!,
                      style: kListTextStyle,
                    ),
                    Icon(
                      Icons.navigate_next_outlined,
                      size: 40,
                      weight: 30,
                    ),
                  ],
                )),
          ),
        ),
      ),
    );
  }
}
