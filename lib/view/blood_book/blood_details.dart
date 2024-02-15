import 'package:codex_ui/view/constants.dart';
import 'package:codex_ui/view/members/widgets/members_class.dart';
import 'package:flutter/material.dart';

class BloodBookDetails extends StatelessWidget {
  const BloodBookDetails({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    // final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red[500],
        elevation: 10,
        toolbarHeight: height * 0.10,
        title: const Text(
          'Blood Book Details',
          style: kAppBarTextStyle,
        ),
      ),
      backgroundColor: Colors.grey[200],
      body: ListView.separated(
        separatorBuilder: (context, index) => Divider(
          thickness: 0.1,
        ),
        itemBuilder: (context, index) {
          return SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 8),
              child: Material(
                borderRadius: BorderRadius.circular(20),
                elevation: 5,
                child: Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(
                          20), // Adjust the radius as needed
                    ),
                    height: height * 0.15,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          width: 30 * 2,
                          height: 30 * 2,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(width: 0.3),
                            image: DecorationImage(
                              image: AssetImage(memberList[index].image!),
                              fit: BoxFit.cover,
                            ),
                          ),
                          // child: child,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              memberList[index].name!,
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w400),
                            ),
                            Text(
                              '+864531212',
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.w400),
                            ),
                          ],
                        ),
                        ElevatedButton(
                          style: ButtonStyle(backgroundColor: myRedColor),
                          onPressed: () {},
                          child: const Icon(Icons.call),
                        )
                      ],
                    )),
              ),
            ),
          );
        },
        itemCount: memberList.length,
      ),
    );
  }
}

MaterialStateProperty<Color?> get myRedColor {
  return MaterialStateProperty.resolveWith((states) {
    // You can check for specific states here
    // and return different shades of green or other colors
    return Colors.red;
  });
}
