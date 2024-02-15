import 'package:codex_ui/view/constants.dart';
import 'package:codex_ui/view/members/widgets/members_class.dart';
import 'package:flutter/material.dart';

class MembersDetails extends StatelessWidget {
  const MembersDetails({super.key, required this.index});
  final index;
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[700],
        elevation: 10,
        toolbarHeight: height * 0.10,
        title: const Text(
          'Members Details',
          style: kAppBarTextStyle,
        ),
      ),
      backgroundColor: Colors.grey[200],
      body: SingleChildScrollView(
        child: Center(
          child: Material(
            borderRadius: BorderRadius.circular(20),
            elevation: 20,
            child: Container(
              //  margin: EdgeInsets.only(left: 200),
              padding: EdgeInsets.all(30),
              width: width * 0.8,
              height: height * 0.8,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius:
                    BorderRadius.circular(20), // Adjust the radius as needed
                // border: Border.all(
                //     // color: Colors.white, // Border color
                //     // width: 2.0, // Border width
                //     ),
              ),
              child: Column(
                  // textDirection: TextDirection.ltr,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: CircleAvatar(
                        radius: 100,
                        backgroundImage: AssetImage(memberList[index].image!),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      memberList[index].name!,
                      style: TextStyle(fontSize: 30),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      memberList[index].designation!,
                      style: TextStyle(fontSize: 20),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Nickname: ${memberList[index].nickName!}',
                      style: TextStyle(fontSize: 20),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Age:  ${memberList[index].age!}',
                      style: TextStyle(fontSize: 20),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Bloodgroup:  ${memberList[index].blood!}',
                      style: TextStyle(fontSize: 20),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Address: ${memberList[index].address!}',
                      textAlign: TextAlign.start,
                      style: TextStyle(fontSize: 20),
                    ),
                  ]),
            ),
          ),
        ),
      ),
    );
  }
}
