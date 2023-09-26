import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_app/example_3/example_3.dart';

class HomePageExample3 extends StatefulWidget {
  const HomePageExample3({super.key});

  @override
  State<HomePageExample3> createState() => _HomePageExample3State();
}

class _HomePageExample3State extends State<HomePageExample3> {
  Example3 example3 = Get.put(Example3());

  FavouriteController controller = Get.put(FavouriteController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Like And DisLike',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30,
          ),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Obx(() {
                return Text(
                  'Notification',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color:
                        example3.notification.value ? Colors.teal : Colors.red,
                  ),
                );
              }),
              Obx(() {
                return Switch(
                  activeColor: Colors.teal,
                  inactiveThumbColor: Colors.red,
                  value: example3.notification.value,
                  onChanged: (value) {
                    example3.setNotification(value);
                  },
                );
              }),
            ],
          ),
           Obx(
               (){
                 return Divider(
                   thickness: 3,
                   color: example3.notification.value ? Colors.teal : Colors.red,
                   indent: 30,
                   endIndent: 30,
                 );
               }
           ),
          Expanded(
            child: ListView.builder(
              itemCount: controller.macosVersion.length,
              itemBuilder: (context, index) {
                return Card(
                  color: Colors.brown.withOpacity(0.2),
                  child: ListTile(
                    onTap: () {
                      if (controller.favOs.contains(
                          controller.macosVersion[index].toString())) {
                        controller.removeFromFavourite(
                            controller.macosVersion[index].toString());
                      } else {
                        controller.addToFavourite(
                            controller.macosVersion[index].toString());
                      }
                    },
                    title: Text(
                      controller.macosVersion[index].toString(),
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    trailing: Obx(() {
                      return Icon(controller.favOs.contains(
                          controller.macosVersion[index].toString())?
                        Icons.favorite_rounded: Icons.favorite_border_rounded,
                        color: controller.favOs.contains(
                                controller.macosVersion[index].toString())
                            ?  Colors.red
                            : Colors.black
                      );
                    }),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
