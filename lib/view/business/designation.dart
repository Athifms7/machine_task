import 'package:codex_ui/view/constants.dart';
import 'package:codex_ui/view/members/widgets/members_class.dart';
import 'package:flutter/material.dart';

class DesignationScreen extends StatelessWidget {
  const DesignationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 5, 49, 86),
          elevation: 10,
          toolbarHeight: height * 0.10,
          title: const Text(
            'Business Categories',
            style: kAppBarTextStyle,
          ),
        ),
        backgroundColor: Colors.grey[200],
        body: ListView.separated(
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
                          // border: Border.all(
                          //     // color: Colors.blue, // Border color
                          //     // width: 2.0, // Border width
                          //     ),
                        ),
                        // color: Colors.white,
                        height: height * 0.15,
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Container(
                                    width: 30 * 2,
                                    height: 30 * 2,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      border: Border.all(width: 0.3),
                                      image: DecorationImage(
                                        image: AssetImage(
                                            memberList[index].image!),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    // child: child,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        memberList[index].name!,
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w400),
                                      ),
                                      Text(
                                        '+864531212',
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.w400),
                                      ),
                                    ],
                                  ),
                                  ElevatedButton(
                                    style: ButtonStyle(
                                        backgroundColor: myGreenColor),
                                    onPressed: () {},
                                    child: const Icon(Icons.call),
                                  )
                                ],
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 25),
                                child: Text(
                                  memberList[index].address!,
                                  softWrap: false,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w400),
                                ),
                              ),
                            ])),
                  ),
                ),
              );
            },
            separatorBuilder: (context, index) {
              return const Divider(
                thickness: 0.1,
              );
            },
            itemCount: memberList.length));
  }
}
// Image.asset('assets/images/call.jpg')

MaterialStateProperty<Color?> get myGreenColor {
  return MaterialStateProperty.resolveWith((states) {
    // You can check for specific states here
    // and return different shades of green or other colors
    return Colors.green;
  });
}
