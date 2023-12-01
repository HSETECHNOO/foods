import 'package:flutter/material.dart';
import 'package:foods/details.dart';
// import 'package:foods/details.dart';
import 'package:foods/drawer.dart';
import 'package:foods/table.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        child: Row(
          children: [
            const SizedBox(
              width: 80,
              child: MyDrawer(),
            ),
            const Expanded(flex: 8, child: SizedBox(child: Tables())),
            Expanded(
                flex: 4,
                child: Container(
                  color: Colors.white,
                  child: const DetailsPage(),
                ))
          ],
        ),
      ),
    );
  }
}
