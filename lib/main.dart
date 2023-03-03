import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

void main() {
  runApp(MyApp());
}

class Post {
  int? id;
  String? title;
  String? body;

  Post({this.id, this.title, this.body});

  factory Post.fromJson(Map<String, dynamic> json) {
    return Post(
      id: json['id'],
      title: json['title'],
      body: json['body'],
    );
  }
}

class User {
  int? id;
  String? firstName;

  User({this.id, this.firstName});

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json['id'],
      firstName: json['firstName'],
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Post>? posts;
  List<User>? users;

  @override
  void initState() {
    super.initState();
    fetchPost();
    fetchUser();
  }

  Future<void> fetchPost() async {
    final response = await http.get(Uri.parse('https://dummyjson.com/posts'));
    if (response.statusCode == 200) {
      var data = jsonDecode(response.body);
      // print(data['posts']);
      setState(() {
        posts =
            (data['posts'] as List).map((data) => Post.fromJson(data)).toList();
      });
      // print(posts);
    }
  }

  Future<void> fetchUser() async {
    final response = await http.get(Uri.parse('https://dummyjson.com/users'));
    if (response.statusCode == 200) {
      var data = jsonDecode(response.body);
      // print(data['users'][0]['firstName']);
      setState(() {
        users =
            (data['users'] as List).map((data) => User.fromJson(data)).toList();
      });
      // print(users?[0].firstName);
    }
  }

  String getUserName(int postId) {
    final user = users?.firstWhere((user) => user.id == postId);
    // print(user.);
    return user?.firstName ?? 'kosong';
    // return userId.toString();
  }

  // getUserName();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Test'),
      ),
      body: posts == null || users == null
          ? Text('loading')
          : ListView.builder(
              itemCount: posts?.length,
              itemBuilder: (context, index) {
                final post = posts?[index];
                return ListTile(
                  title: Text(post?.title ?? ''),
                  subtitle: Text(getUserName(post?.id ?? 0)),
                );
              },
            ),
    );
  }
}
