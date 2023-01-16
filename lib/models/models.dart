

import 'package:api/globle/global.dart';

class SplashHolder {
  late int userid;
  late int id;
  late int postId;
  late int albumId;
  late String title;
  late String body;
  late String name;
  late String username;
  late String email;
  late bool completed;

  SplashHolder.post({
    required this.userid,
    required this.id,
    required this.title,
    required this.body,
  });

  SplashHolder.comments({
    required this.postId,
    required this.id,
    required this.name,
    required this.email,
    required this.body,
  });

  SplashHolder.album({
    required this.userid,
    required this.id,
    required this.title,
  });

  SplashHolder.photo({
    required this.albumId,
    required this.id,
    required this.title,
  });

  SplashHolder.todo({
    required this.userid,
    required this.id,
    required this.title,
    required this.completed,
  });

  SplashHolder.user({
    required this.id,
    required this.name,
    required this.username,
    required this.email,
  });

  factory SplashHolder.fromMap({required Map data}) {
    if (Global.endpoint == "/posts") {
      return SplashHolder.post(
        userid: data['userId'],
        id: data['id'],
        title: data['title'],
        body: data['body'],
      );
    } else if (Global.endpoint == "/comments") {
      return SplashHolder.comments(
        postId: data['postId'],
        id: data['id'],
        name: data['name'],
        email: data['email'],
        body: data['body'],
      );
    } else if (Global.endpoint == "/albums") {
      return SplashHolder.album(
        userid: data['userId'],
        id: data['id'],
        title: data['title'],
      );
    } else if (Global.endpoint == "/photos") {
      return SplashHolder.photo(
        albumId: data['albumId'],
        id: data['id'],
        title: data['title'],
      );
    } else if (Global.endpoint == "/todos") {
      return SplashHolder.todo(
        userid: data['userId'],
        id: data['id'],
        title: data['title'],
        completed: data['completed'],
      );
    }
    return SplashHolder.user(
        id: data['id'],
        name: data['name'],
        username: data['username'],
        email: data['email']);
  }
}
