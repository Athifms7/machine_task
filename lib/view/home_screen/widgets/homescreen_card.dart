import 'package:codex_ui/view/blood_book/blood_book.dart';
import 'package:codex_ui/view/business/business.dart';
import 'package:codex_ui/view/constants.dart';
import 'package:codex_ui/view/members/members.dart';
import 'package:flutter/material.dart';

class Choice {
  const Choice({this.title, this.image, this.spColors, this.location});
  final String? title;
  final String? image;
  final Color? spColors;
  final Widget? location;
}

const List<Choice> choices = <Choice>[
  Choice(
    title: 'Business',
    image: 'assets/images/business.png',
    spColors: Colors.blue,
    location: BusinessScreen(),
  ),

  Choice(
    title: 'Members',
    image: 'assets/images/members.png',
    spColors: Colors.grey,
    location: MembersScreen(),
  ),
  Choice(
    title: 'Blood Book',
    image: 'assets/images/blood-analysis.png',
    spColors: Colors.red,
    location: BloodBookScreen(),
  ),
  Choice(
      title: 'News',
      image: 'assets/images/newspaper.png',
      spColors: Colors.brown),
  Choice(
      title: 'Activity',
      image: 'assets/images/activity.png',
      spColors: Colors.green),
  Choice(
      title: 'Settings',
      image: 'assets/images/settings.png',
      spColors: Colors.deepPurple),
  // const Choice(title: 'Album', image: Icons.photo_album),
  // const Choice(title: 'WiFi', image: Icons.wifi),
];

class SelectCard extends StatelessWidget {
  const SelectCard({
    Key? key,
    this.choice,
    required this.width,
    required this.height,
  }) : super(key: key);
  final Choice? choice;
  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    // final TextStyle textStyle = Theme.of(context).textTheme.display1;
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: InkWell(
        splashColor: choice!.spColors,
        onTap: () {
          if (choice!.location != null) {
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => choice!.location!,
            ));
          }
        },
        child: SizedBox(
          width: width * 0.4,
          height: height * 0.20,
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Container(
              width: width * 0.35,
              height: height * 0.12,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(choice!.image.toString()))),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              choice!.title.toString(),
              style: kCardTextStyle,
            )
          ]),
        ),
      ),
    );
  }
}
