

import 'package:http/http.dart' as http;
import 'package:posts/Model/Post_Model.dart';
import 'package:posts/config/constant.dart';
import 'dart:convert';


abstract class PostRepo {
  Future<List<Postmodel>> getPosts();
}

class PostRepoImpl implements PostRepo {
  @override
  Future<List<Postmodel>> getPosts() async {
    http.Response respons = await http.get(Uri.parse(AppAPI.Posturl));
    if (respons.statusCode == 200) {
      var data = json.decode(respons.body);
      List<Postmodel> views =
          (await Postmodel.fromJson(data)) as List<Postmodel>;
      return views;
    } else {
      throw Exception();
    }
  }
}
