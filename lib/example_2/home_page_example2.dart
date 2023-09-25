import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_app/example_2/example_2.dart';

class HomePageExample2 extends StatefulWidget {
  const HomePageExample2({super.key});

  @override
  State<HomePageExample2> createState() => _HomePageExample2State();
}

class _HomePageExample2State extends State<HomePageExample2> {
  Example2 example2 = Get.put(Example2());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Example 2"),
        centerTitle: true,
        elevation: 0,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Obx(
            () => Container(
              height: 200,
              width: 200,
              decoration: BoxDecoration(
                border: Border.all(
                  width: 5,
                  color: Colors.black.withOpacity(example2.opacity.value),
                ),
                borderRadius: BorderRadius.circular(
                  example2.radius.value,
                ),
                color: Colors.teal.withOpacity(
                  example2.opacity.value,
                ),
              ),
            ),
          ),
          Column(
            children: [
              const Text(
                "Color Opacity Slider",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Obx(
                () => Slider(
                  inactiveColor: Colors.orangeAccent.withOpacity(0.3),
                  activeColor: Colors.orangeAccent,
                  value: example2.opacity.value,
                  onChanged: (value) {
                    example2.setOpacity(value);
                  },
                ),
              ),
            ],
          ),
          Column(
            children: [
              const Text(
                "Border Radius Slider",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Obx(
                () => Slider(
                  // min: 0.0,
                  activeColor: Colors.deepPurpleAccent,
                  inactiveColor: Colors.deepPurpleAccent.withOpacity(0.3),
                  max: 100.0,
                  value: example2.radius.value,
                  onChanged: (value) {
                    example2.setRadius(value);
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
