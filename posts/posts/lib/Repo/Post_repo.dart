

import 'package:http/http.dart' as http;
import 'package:posts/Model/Post_Model.dart';
import 'package:posts/config/constant.dart';
import 'dart:convert';


abstract class PostRepo {
  Future<List<PostsModel>> getPosts();
}

class PostRepoImpl implements PostRepo {
  @override
  Future<List<PostsModel>> getPosts() async {
    http.Response respons = await http.get(Uri.parse(AppAPI.Posturl));
    if (respons.statusCode == 200) {
      var data = json.decode(respons.body);
      List<PostsModel> views =
          (await PostsModel.fromJson(data)) as List<PostsModel>;
      return views;
    } else {
      throw Exception();
    }
  }
}
