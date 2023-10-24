import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('HomeView'),
          centerTitle: true,
          backgroundColor: Colors.transparent,
        ),
        body: Obx(() => Container(
              height: double.infinity,
              width: double.infinity,
              child: ListView.builder(
                  itemCount: controller.posts.length,
                  itemBuilder: (context, index) {
                    return Card(
                      shape: RoundedRectangleBorder(
                        side: const BorderSide(
                          color: Colors.greenAccent,
                        ),
                        borderRadius:
                            BorderRadius.circular(20.0), //<-- SEE HERE
                      ),
                      elevation: 50,
                      shadowColor: Colors.black,
                      color: Colors.grey.shade100,
                      child: SizedBox(
                        width: 300,
                        height: 500,
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            children: [
                              CircleAvatar(
                                backgroundColor: Colors.green[500],
                                radius: 80,
                                child: Text(
                                  'User Id:${controller.posts[index]["userId"]}',
                                  style: const TextStyle(
                                  
                                      fontSize: 30,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.red),
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                'ID: ${controller.posts[index]["id"]}',
                                style: TextStyle(
                                  fontSize: 30,
                                  color: Colors.green[900],
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ), //SizedBox
                              Text(
                                '${controller.posts[index]["title"]}',
                                style: const TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.red,
                                ), //Textstyle
                              ), //Text
                              const SizedBox(
                                height: 10,
                              ), //SizedBox
                              Text(
                                '${controller.posts[index]["body"]}',
                                style: const TextStyle(
                                  fontSize: 16,
                                  color: Colors.green,
                                ), //Textstyle
                              ),
                            ],
                          ), //Column
                        ),
                      ), //Padding
                    );
                  }),
            )));
  }
}
