import 'package:flutter/material.dart';
import 'package:foods/constants/colorsconstants.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({super.key});

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      child: Container(
        color: Colors.white,
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            SizedBox(
              height: 500,
              child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: iconslist.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: CircleAvatar(
                        backgroundColor:
                            index == 1 ? Mycolors.primarycolor : Colors.white,
                        radius: 30,
                        child: Center(
                          child: Icon(iconslist[index],
                              size: 30,
                              color: index == 1
                                  ? Colors.white
                                  : const Color(0xff9A9A9A)),
                        ),
                      ),
                    );
                  }),
            ),
            Expanded(child: Container()),
            const CircleAvatar(
              backgroundColor: Colors.amber,
              backgroundImage: NetworkImage(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSon7UXXyxvoxfrD0brWchUB7kIU545JP7QtQ&usqp=CAU'),
              radius: 20,
            ),
            const SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    );
  }

  List<IconData> iconslist = [
    Icons.dashboard_outlined,
    Icons.home_outlined,
    Icons.document_scanner_outlined,
    Icons.dashboard_outlined,
    Icons.home_outlined,
    Icons.document_scanner_outlined
  ];
}
