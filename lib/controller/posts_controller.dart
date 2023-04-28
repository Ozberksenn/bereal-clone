import 'dart:async';
import 'dart:convert';
import 'package:bereal/model/posts.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class PostController extends GetxController {
  RxBool isLoading = false.obs;
  var postData = <postModel>[].obs;
  @override
  void onInit() {
    super.onInit();
    getPosts();
  }

  getPosts() async {
    try {
      const postsUrl = 'http://localhost:8080/api/posts';
      http.Response response = await http.get(Uri.parse(postsUrl));
      if (response.statusCode == 200) {
        var json = jsonDecode(response.body);
        print(json);
        List jsonData = json['data'];
        postData.value =
            List<postModel>.from(jsonData.map((e) => postModel.fromJson(e)));
        Timer(Duration(seconds: 2), () {
          isLoading.value = true;
        });
        print(isLoading);
      } else {
        print('error');
      }
    } catch (e) {
      print(e);
    }
  }
}
