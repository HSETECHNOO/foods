import 'package:flutter/material.dart';
import 'package:foods/constants/colorsconstants.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Mycolors.backgroundcolor,
            border: Border.all(color: Colors.black12)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 7,
              child: Padding(
                padding: const EdgeInsets.all(0.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Instore Customer',
                                style: TextStyle(
                                  fontSize: 42,
                                  fontWeight: FontWeight.w500,
                                  color: Mycolors.primarycolor,
                                  fontFamily: 'Aeric',
                                ),
                              ),
                              const Text(
                                ' Phone Number : +923092771719',
                                style: TextStyle(
                                  letterSpacing: 1,
                                  fontWeight: FontWeight.w500,
                                  color: Color.fromRGBO(158, 158, 158, 1),
                                  fontFamily: 'Aeric',
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Container(
                                height: 50,
                                width: 150,
                                decoration: BoxDecoration(
                                    color: Mycolors.primarycolor,
                                    borderRadius: BorderRadius.circular(8)),
                                child: const Center(
                                    child: Text(
                                  'Counter',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                )),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Card(
                      color: Mycolors.primarycolor,
                      child: SizedBox(
                        height: 30,
                        child: Row(
                          children: [0, 1, 2, 3]
                              .map((e) => Expanded(
                                      child: SizedBox(
                                    height: 30,
                                    child: Center(
                                      child: Text(
                                        e == 0
                                            ? 'QTY'
                                            : e == 1
                                                ? 'Product'
                                                : e == 2
                                                    ? 'Value'
                                                    : 'Total',
                                        style: const TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  )))
                              .toList(),
                        ),
                      ),
                    ),
                    ListView.builder(
                        shrinkWrap: true,
                        itemCount: 5,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.all(5),
                            child: Card(
                              child: Container(
                                color: Colors.white,
                                height: 90,
                                child: Row(
                                  children: [0, 1, 2, 3]
                                      .map((e) => Expanded(
                                              child: SizedBox(
                                            height: 90,
                                            child: e == 0
                                                ? Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            left: 12,
                                                            right: 12),
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        SizedBox(
                                                          width: 45,
                                                          height: 60,
                                                          child: Image.asset(
                                                              'images/pizza.png'),
                                                        ),
                                                        IconButton(
                                                          onPressed: () {},
                                                          icon: const Icon(
                                                            Icons.remove_circle,
                                                            color: Colors.red,
                                                          ),
                                                        ),
                                                        const Text('3 X ')
                                                      ],
                                                    ),
                                                  )
                                                : e == 1
                                                    ? const Column(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          Text(
                                                            'Fishes Seafood',
                                                            style: TextStyle(
                                                                letterSpacing:
                                                                    1.2,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500),
                                                          ),
                                                          Text(
                                                            'Medium Half 3 person meal',
                                                            style: TextStyle(
                                                              color:
                                                                  Colors.grey,
                                                              fontSize: 12,
                                                            ),
                                                          )
                                                        ],
                                                      )
                                                    : e != 3
                                                        ? const Center(
                                                            child: Text(
                                                              '£50.00',
                                                              style: TextStyle(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500),
                                                            ),
                                                          )
                                                        : Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                    .all(12.0),
                                                            child: Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .spaceBetween,
                                                              children: [
                                                                Container(
                                                                  decoration:
                                                                      BoxDecoration(
                                                                          color:
                                                                              Mycolors.primarycolor),
                                                                  child: IconButton(
                                                                      onPressed: () {},
                                                                      icon: const Icon(
                                                                        Icons
                                                                            .remove,
                                                                        color: Colors
                                                                            .white,
                                                                      )),
                                                                ),
                                                                const Text('3'),
                                                                Container(
                                                                  decoration:
                                                                      BoxDecoration(
                                                                          color:
                                                                              Mycolors.primarycolor),
                                                                  child: IconButton(
                                                                      onPressed: () {},
                                                                      icon: const Icon(
                                                                        Icons
                                                                            .add,
                                                                        color: Colors
                                                                            .white,
                                                                      )),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                          )))
                                      .toList(),
                                ),
                              ),
                            ),
                          );
                        })
                  ],
                ),
              ),
            ),
            Expanded(
                flex: 2,
                child: Padding(
                  padding: const EdgeInsets.all(0.0),
                  child: Card(
                    elevation: 0,
                    child: Container(
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          children: [
                            const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Payable Amount',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 22),
                                ),
                                Text(
                                  '56.05',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 22),
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Container(
                                width: double.infinity,
                                height: 50,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    color: Mycolors.primarycolor),
                                child: const Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Check OUT',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 25,
                                          color: Colors.white),
                                    ),
                                  ],
                                )),
                            const SizedBox(
                              height: 10,
                            ),
                            Container(
                                width: double.infinity,
                                height: 50,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    color: Mycolors.primarycolor
                                        .withOpacity(0.50)),
                                child: const Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Add Button',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 25,
                                          color: Colors.white),
                                    ),
                                  ],
                                )),
                          ],
                        ),
                      ),
                    ),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
