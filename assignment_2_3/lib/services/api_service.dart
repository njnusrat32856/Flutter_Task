
import 'dart:convert';

import 'package:assignment_2_3/helpers/database_helper.dart';
import 'package:http/http.dart' as http;
import 'package:assignment_2_3/models/post.dart';
import 'package:flutter/material.dart';

class ApiService {
  static const String baseUrl = 'https://jsonplaceholder.typicode.com';

  Future<List<Post>> fetchPosts() async {
    try {
      final response = await http.get(Uri.parse('$baseUrl/posts'));

      // print(response.body);

      if (response.statusCode == 200) {
        final List<dynamic> jsonData = json.decode(response.body);
        return jsonData.map((json) => Post.fromJson(json)).toList();

        // Cache the data
        // await DatabaseHelper.instance.insertPosts(posts);
        // print(posts);
        // return posts;

      } else {
        throw Exception('Failed to load posts');
      }
    } catch (e) {

      final cachedPosts = await DatabaseHelper.instance.getPosts();
      if (cachedPosts.isNotEmpty) {
        return cachedPosts;
      }
      throw Exception('No internet connection and no cached data available');
    }
  }
}