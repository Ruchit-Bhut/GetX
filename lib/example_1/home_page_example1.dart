import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_app/example_1/counter_controller.dart';

class HomePageExample1 extends StatefulWidget {
  const HomePageExample1({super.key});

  @override
  State<HomePageExample1> createState() => _HomePageExample1State();
}

class _HomePageExample1State extends State<HomePageExample1> {
  final CounterController controller = Get.put(CounterController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Example 1'),
        centerTitle: true,
        elevation: 0,
      ),
      body: Center(
        child: Obx(() {
          return Text(
            controller.counter.toString(),
            style: const TextStyle(fontSize: 60),
          );
        }),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.plus_one_rounded),
        onPressed: () {
          controller.incrementCounter();
        },
      ),
    );
  }
}
