import 'package:flutter/material.dart';
import 'package:general/controllers/home_controller.dart';
import 'package:general/widgets/card_task.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  final homeScreenController = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          homeScreenController.addTask();
        },
        child: Icon(Icons.add),
      ),
      body: SafeArea(
        child: Container(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'General',
                style: TextStyle(fontSize: 24),
              ),
              SizedBox(
                height: 14,
              ),
              Expanded(
                child: Obx(
                  () => ListView.builder(
                      padding: EdgeInsets.only(bottom: 80),
                      itemCount: homeScreenController.tasks.length,
                      itemBuilder: (context, index) {
                        var task = homeScreenController.tasks[index];
                        return CardTask(task: task);
                      }),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
