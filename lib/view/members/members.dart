import 'package:codex_ui/view/constants.dart';
import 'package:codex_ui/view/members/members_detail.dart';
import 'package:codex_ui/view/members/widgets/members_class.dart';
import 'package:flutter/material.dart';

class MembersScreen extends StatelessWidget {
  const MembersScreen({super.key, this.member});
  final MembersClass? member;

  @override
  Widget build(BuildContext context) {
    final TextEditingController _searchController = TextEditingController();
    final height = MediaQuery.of(context).size.height;
    // final width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[700],
        elevation: 10,
        toolbarHeight: height * 0.10,
        title: const Text(
          'Search Members',
          style: kAppBarTextStyle,
        ),
      ),
      backgroundColor: Colors.grey[200],
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              margin: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white, // Set the desired background color here
                borderRadius:
                    BorderRadius.circular(20.0), // Set border radius if needed
              ),
              child: Material(
                elevation: 11,
                borderRadius: BorderRadius.circular(20),
                child: TextField(
                  controller: _searchController,
                  decoration: InputDecoration(
                    hintText: 'Search...',
                    suffixIcon: IconButton(
                      icon: Icon(Icons.clear),
                      onPressed: () => _searchController.clear(),
                    ),
                    prefixIcon: IconButton(
                      icon: const Icon(Icons.search),
                      onPressed: () {},
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                ),
              ),
            ),
            const Text(
              'Results',
              style: kCardTextStyle,
            ),
            SizedBox(
              height: 10,
            ),
            ListView.separated(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20, top: 8),
                    child: Material(
                      borderRadius: BorderRadius.circular(20),
                      elevation: 5,
                      child: InkWell(
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) {
                                return MembersDetails(
                                  index: index,
                                );
                              },
                            ),
                          );
                        },
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
                                      image:
                                          AssetImage(memberList[index].image!),
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
                                          fontSize: 20,
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ],
                                ),
                                Icon(
                                  Icons.arrow_circle_right_outlined,
                                  size: 40,
                                  weight: 30,
                                ),
                              ],
                            )),
                      ),
                    ),
                  );
                },
                separatorBuilder: (context, index) {
                  return const Divider(
                    thickness: 0.1,
                  );
                },
                itemCount: memberList.length)
          ],
        ),
      ),
    );
  }
}
