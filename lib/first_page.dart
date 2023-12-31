import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_app/example_1/home_page_example1.dart';
import 'package:my_app/example_2/home_page_example2.dart';
import 'package:my_app/example_3/home_page_example3.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  Colors.brown.withOpacity(0.8),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            OutlinedButton(
              style: OutlinedButton.styleFrom(
                side: const BorderSide(
                  width: 3.0,
                  color: Color(0xffF1916D),
                ),
              ),
              child: const Text(
                'Example 1',
                style: TextStyle(
                  fontSize: 20,
                  color: Color(0xffF5D7DB),
                ),
              ),
              onPressed: () {
                Get.to(
                  const HomePageExample1(),
                );
              },
            ),
            OutlinedButton(
              style: OutlinedButton.styleFrom(
                side: const BorderSide(
                  width: 3.0,
                  color: Color(0xffF1916D),
                ),
              ),
              child: const Text(
                'Example 2',
                style: TextStyle(
                  fontSize: 20,
                  color: Color(0xffF5D7DB),
                ),
              ),
              onPressed: () {
                Get.to(
                  const HomePageExample2(),
                );
              },
            ),
            OutlinedButton(
              style: OutlinedButton.styleFrom(
                side: const BorderSide(
                  width: 3.0,
                  color: Color(0xffF1916D),
                ),
              ),
              child: const Text(
                'Example 3',
                style: TextStyle(
                  fontSize: 20,
                  color: Color(0xffF5D7DB),
                ),
              ),
              onPressed: () {
                Get.to(
                  const HomePageExample3(),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
