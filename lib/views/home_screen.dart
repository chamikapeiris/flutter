import 'package:flutter/material.dart';
import 'package:general/controllers/home_controller.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  final homeScreenController = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                child: ListView.builder(
                    itemCount: homeScreenController.usersList.length,
                    itemBuilder: (context, index) {
                      var user = homeScreenController.usersList[index];
                      return Card(
                        child: Padding(
                          padding: EdgeInsets.all(16),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(user),
                              ElevatedButton(
                                onPressed: () {},
                                child: Text('Click'),
                              ),
                            ],
                          ),
                        ),
                      );
                    }),
              )
            ],
          ),
        ),
      ),
    );
  }
}
