import 'package:api/globle/global.dart';
import 'package:api/helper/api_helper.dart';
import 'package:api/models/models.dart';
import 'package:flutter/material.dart';


class DetailsPage extends StatefulWidget {
  const DetailsPage({Key? key}) : super(key: key);

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text(
          Global.title,
          style: const TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: FutureBuilder(
          future: ApiHelpers.apiHelpers.getData(),
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            if (snapshot.hasError) {
              return Center(
                child: Text("Error is : ${snapshot.error}"),
              );
            } else if (snapshot.hasData) {
              List<SplashHolder>? data = snapshot.data;
              return (data != null)
                  ? ListView.builder(
                  itemCount: data.length,
                  itemBuilder: (context, i) {
                    if (Global.endpoint == "/posts") {
                      Map e = {
                        "id": data[i].id,
                        "title": data[i].title,
                        "subtitle": data[i].body,
                        "userId": data[i].userid,
                      };
                      return Global.post(
                        context: context,
                        id: data[i].id,
                        title: data[i].title,
                        subtitle: data[i].body,
                        userid: data[i].userid,
                        e: e,
                      );
                    } else if (Global.endpoint == "/comments") {
                      Map e = {
                        "id": data[i].id,
                        "title": data[i].name,
                        "subtitle": data[i].body,
                        "userId": data[i].postId,
                      };
                      return Global.comment(
                        context: context,
                        id: data[i].id,
                        title: data[i].name,
                        subtitle: data[i].body,
                        postId: data[i].postId,
                        e: e,
                      );
                    } else if (Global.endpoint == "/albums") {
                      Map e = {
                        "id": data[i].id,
                        "title": data[i].title,
                        "userId": data[i].userid,
                      };
                      return Global.album(
                        context: context,
                        id: data[i].id,
                        title: data[i].title,
                        userId: data[i].userid,
                        e: e,
                      );
                    } else if (Global.endpoint == "/photos") {
                      Map e = {
                        "id": data[i].id,
                        "title": data[i].title,
                        "userId": data[i].albumId,
                      };
                      return Global.photo(
                        context: context,
                        id: data[i].id,
                        title: data[i].title,
                        albumId: data[i].albumId,
                        e: e,
                      );
                    } else if (Global.endpoint == "/todos") {
                      Map e = {
                        "id": data[i].id,
                        "title": data[i].title,
                        "subtitle": data[i].completed,
                        "userId": data[i].userid,
                      };
                      return Global.todo(
                        context: context,
                        id: data[i].id,
                        title: data[i].title,
                        subtitle: data[i].completed,
                        userId: data[i].userid,
                        e: e,
                      );
                    } else {
                      Map e = {
                        "id": data[i].id,
                        "userId": data[i].name,
                        "title": data[i].username,
                        "subtitle": data[i].email,
                      };
                      return Global.user(
                        context: context,
                        id: data[i].id,
                        title: data[i].name,
                        name: data[i].username,
                        subtitle: data[i].email,
                        e: e,
                      );
                    }
                  })
                  : const Center(
                child: Text("Data is Not Founds ...."),
              );
            }
            return const Center(
              child: CircularProgressIndicator(),
            );
          },
        ),
      ),
    );
  }
}
