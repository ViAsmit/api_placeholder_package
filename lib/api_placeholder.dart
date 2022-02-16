library api_placeholder;

import 'dart:convert';
import 'dart:math';

import 'package:http/http.dart' as http;

class ApiPlaceholder {
  String baseUrl = "https://jsonplaceholder.typicode.com";

  /// Return a list of posts
  ///
  /// [limit] is the limit of posts to return
  ///
  /// [id] is the id of a particular post to return
  Future<String> getPosts({int? limit, int? id}) async {
    try {
      if (id == null) {
        var response = await http.get(
          Uri.parse("$baseUrl/posts"),
        );
        List<dynamic> posts = jsonDecode(response.body);
        if (limit != null) {
          posts = posts.sublist(0, min(limit, posts.length));
        }
        return jsonEncode(posts);
      } else {
        var response = await http.get(
          Uri.parse("$baseUrl/posts/$id"),
        );
        return response.body;
      }
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  /// Return a list of comments
  ///
  /// [limit] is the limit of comments to return
  ///
  /// [id] is the id of a particular comment to return
  Future<String> getComments({int? limit, int? id}) async {
    try {
      if (id == null) {
        var response = await http.get(
          Uri.parse("$baseUrl/comments"),
        );
        List<dynamic> posts = jsonDecode(response.body);
        if (limit != null) {
          posts = posts.sublist(0, min(limit, posts.length));
        }
        return jsonEncode(posts);
      } else {
        var response = await http.get(
          Uri.parse("$baseUrl/comments/$id"),
        );
        return response.body;
      }
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  /// Return a list of albums
  ///
  /// [limit] is the limit of albums to return
  ///
  /// [id] is the id of a particular album to return
  Future<String> getAlbums({int? limit, int? id}) async {
    try {
      if (id == null) {
        var response = await http.get(
          Uri.parse("$baseUrl/albums"),
        );
        List<dynamic> posts = jsonDecode(response.body);
        if (limit != null) {
          posts = posts.sublist(0, min(limit, posts.length));
        }
        return jsonEncode(posts);
      } else {
        var response = await http.get(
          Uri.parse("$baseUrl/albums/$id"),
        );
        return response.body;
      }
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  /// Return a list of photos
  ///
  /// [limit] is the limit of photos to return
  ///
  /// [id] is the id of a particular photo to return
  Future<String> getPhotos({int? limit, int? id}) async {
    try {
      if (id == null) {
        var response = await http.get(
          Uri.parse("$baseUrl/photos"),
        );
        List<dynamic> posts = jsonDecode(response.body);
        if (limit != null) {
          posts = posts.sublist(0, min(limit, posts.length));
        }
        return jsonEncode(posts);
      } else {
        var response = await http.get(
          Uri.parse("$baseUrl/photos/$id"),
        );
        return response.body;
      }
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  /// Return a list of todos
  ///
  /// [limit] is the limit of todos to return
  ///
  /// [id] is the id of a particular todo to return
  Future<String> getTodos({int? limit, int? id}) async {
    try {
      if (id == null) {
        var response = await http.get(
          Uri.parse("$baseUrl/todos"),
        );
        List<dynamic> posts = jsonDecode(response.body);
        if (limit != null) {
          posts = posts.sublist(0, min(limit, posts.length));
        }
        return jsonEncode(posts);
      } else {
        var response = await http.get(
          Uri.parse("$baseUrl/todos/$id"),
        );
        return response.body;
      }
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  /// Return a list of users
  ///
  /// [limit] is the limit of users to return
  ///
  /// [id] is the id of a particular user to return
  Future<String> getUsers({int? limit, int? id}) async {
    try {
      if (id == null) {
        var response = await http.get(
          Uri.parse("$baseUrl/users"),
        );
        List<dynamic> posts = jsonDecode(response.body);
        if (limit != null) {
          posts = posts.sublist(0, min(limit, posts.length));
        }
        return jsonEncode(posts);
      } else {
        var response = await http.get(
          Uri.parse("$baseUrl/users/$id"),
        );
        return response.body;
      }
    } catch (e) {
      throw Exception(e.toString());
    }
  }
}
