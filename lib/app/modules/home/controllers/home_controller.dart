import 'dart:convert';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class HomeController extends GetxController {
  RxList posts = RxList([]); // Initialize with an empty RxList.

  Future<bool> getPosts() async {
    String serviceUrl = "https://jsonplaceholder.typicode.com/posts";
    var response = await http.get(Uri.parse(serviceUrl));
    if (response.statusCode == 200) {
      // Check if the HTTP request was successful.
      List<dynamic> decodedData = jsonDecode(response.body);
      posts.assignAll(decodedData); // Convert and assign to RxList.
      return true;
    } else {
      // Handle error cases here.
      return false;
    }
  }

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
    getPosts();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
