import 'package:flutter/material.dart';
import 'package:foods/constants/colorsconstants.dart';

class Tables extends StatelessWidget {
  const Tables({super.key});

  colortesting(int index) {
    if (tablelist[index] == 'free') {
      return const Color(0xff2CD578);
    } else if (tablelist[index] == 'busy') {
      return const Color(0xffFCD945);
    } else {
      return const Color(0xff34C8EC);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 40, left: 15, right: 15),
        child: Card(
          elevation: 10,
          child: Container(
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(20)),
            height: 100,
            child: Row(
              children: [0, 1, 2, 3, 4]
                  .map((e) => Expanded(
                        child: GestureDetector(
                          onTap: () {},
                          child: Center(
                            child: e == 4
                                ? Card(
                                    elevation: 10,
                                    child: Container(
                                        width: 200,
                                        height: 50,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(12),
                                            color: Mycolors.primarycolor),
                                        child: const Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              'Add Floor',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 25,
                                                  color: Colors.white),
                                            ),
                                            Icon(
                                              Icons.add,
                                              color: Colors.white,
                                              size: 30,
                                            )
                                          ],
                                        )),
                                  )
                                : Card(
                                    color: Mycolors.primarycolor,
                                    elevation: e == 0 ? 10 : 0,
                                    child: Container(
                                        width: 200,
                                        height: 50,
                                        decoration: BoxDecoration(
                                            borderRadius: e == 0
                                                ? BorderRadius.circular(12)
                                                : null,
                                            color: e == 0
                                                ? Mycolors.primarycolor
                                                    .withOpacity(0.20)
                                                : Colors.white,
                                            border: Border.all(
                                                width: 2,
                                                color: e == 0
                                                    ? Mycolors.primarycolor
                                                    : Colors.white)),
                                        child: Center(
                                            child: Text(
                                          'Floor ${e + 1}',
                                          style: TextStyle(
                                              fontWeight: e == 0
                                                  ? FontWeight.bold
                                                  : FontWeight.w400,
                                              fontSize: 25,
                                              color: e == 0
                                                  ? Colors.white
                                                  : Colors.black),
                                        ))),
                                  ),
                          ),
                        ),
                      ))
                  .toList(),
            ),
          ),
        ),
      ),
      appBar: AppBar(
        toolbarHeight: 80,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Table Management',
              style: TextStyle(
                fontSize: 36,
                fontWeight: FontWeight.w500,
                color: Mycolors.primarycolor,
                fontFamily: 'Aeric',
              ),
            ),
            Row(
              children: [
                tooltipwidget(const Color(0xffFCD945), 'BUSY'),
                tooltipwidget(const Color(0xff2CD578), 'Free'),
                tooltipwidget(const Color(0xff34C8EC), 'Bill to be printed')
              ],
            )
          ],
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12), color: Colors.grey[200]),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SizedBox(
            width: MediaQuery.of(context).size.width / 2 + 300,
            height: MediaQuery.of(context).size.height,
            child: GridView.builder(
                itemCount: 15,
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 5),
                itemBuilder: (context, index) {
                  int newindex = index + 1;

                  Color primarycolor = colortesting(index);

                  return Padding(
                    padding: const EdgeInsets.all(0.0),
                    child: Card(
                      elevation: 10,
                      child: Container(
                        decoration: BoxDecoration(
                            color: primarycolor,
                            borderRadius: BorderRadius.circular(12),
                            border:
                                Border.all(color: Colors.grey[200] as Color)),
                        height: 100,
                        width: 200,
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    newindex < 10
                                        ? '0$newindex'
                                        : newindex.toString(),
                                    style: const TextStyle(
                                        fontSize: 40,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                ],
                              ),
                              Expanded(
                                  child: tablelist[index] == 'bill'
                                      ? Container()
                                      : SizedBox(
                                          child: Opacity(
                                              opacity: 0.30,
                                              child: tablelist[index] == 'free'
                                                  ? const Icon(
                                                      Icons.chair,
                                                      size: 120,
                                                    )
                                                  : const Column(
                                                      children: [
                                                        Text(
                                                          '6: 30 PM',
                                                          style: TextStyle(
                                                              fontSize: 22,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold),
                                                        ),
                                                        Icon(
                                                          Icons.dinner_dining,
                                                          size: 100,
                                                        )
                                                      ],
                                                    )))),
                              tablelist[index] == 'bill'
                                  ? const Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Arbaz Khan',
                                          style: TextStyle(
                                              fontSize: 25,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black45),
                                        ),
                                        Text(
                                          '\$62.08',
                                          style: TextStyle(
                                              fontSize: 25,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black45),
                                        ),
                                      ],
                                    )
                                  : Container()
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                }),
          ),
        ),
      ),
    );
  }
}

tooltipwidget(Color color, String text) {
  return Row(
    children: [
      Container(
        width: 80,
        height: 40,
        decoration: BoxDecoration(
            border: Border.all(color: color, width: 3),
            borderRadius: BorderRadius.circular(20)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              width: 50,
              height: 30,
              decoration: BoxDecoration(color: color, shape: BoxShape.circle),
            )
          ],
        ),
      ),
      const SizedBox(
        width: 10,
      ),
      Text(
        text,
        style: const TextStyle(fontWeight: FontWeight.w400),
      ),
      const SizedBox(
        width: 40,
      )
    ],
  );
}

List<String> tablelist = [
  'busy',
  'busy',
  'free',
  'bill',
  'free',
  'busy',
  'free',
  'bill',
  'free',
  'busy',
  'free',
  'bill',
  'free',
  'busy',
  'free',
];
