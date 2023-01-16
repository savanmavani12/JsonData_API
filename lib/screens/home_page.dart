import 'package:api/globle/global.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {


  @override
  Widget build(BuildContext context) {
    ButtonStyle button = ButtonStyle(
      shape: MaterialStateProperty.all(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      backgroundColor: MaterialStateProperty.all(
        Colors.teal,
      ),
    );

    TextStyle buttonText = const TextStyle(
      color: Colors.black,
      fontSize: 16,
      fontWeight: FontWeight.w500,
    );

    var size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: const Text(
          "Splash Holder",
          style: TextStyle(color: Colors.black,),
        ),
        centerTitle: true,
      ),
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SizedBox(
              height: size.height * 0.07,
              width: size.width * 0.4,
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    Global.endpoint = "/posts";
                    Global.title = "Posts";
                  });
                  Navigator.pushNamed(context, "details",);
                },
                style: button,
                child: Text("Posts",style: buttonText,),
              ),
            ),
            SizedBox(
              height: size.height * 0.07,
              width: size.width * 0.4,
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    Global.title = "Comments";
                    Global.endpoint = "/comments";
                  });
                  Navigator.pushNamed(context, "details",);
                },
                style: button,
                child: Text("Comments",style: buttonText),
              ),
            ),
            SizedBox(
              height: size.height * 0.07,
              width: size.width * 0.4,
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    Global.endpoint = "/albums";
                    Global.title = "Albums";
                  });
                  Navigator.pushNamed(context, "details",);
                },
                style: button,
                child: Text("Albums",style: buttonText),
              ),
            ),
            SizedBox(
              height: size.height * 0.07,
              width: size.width * 0.4,
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    Global.endpoint = "/photos";
                    Global.title = "Photos";
                  });
                  Navigator.pushNamed(context, "details",);
                },
                style: button,
                child: Text("Photos",style: buttonText),
              ),
            ),
            SizedBox(
              height: size.height * 0.07,
              width: size.width * 0.4,
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    Global.endpoint = "/todos";
                    Global.title = "Todos";
                  });
                  Navigator.pushNamed(context, "details",);
                },
                style: button,
                child: Text("Todos",style: buttonText),
              ),
            ),
            SizedBox(
              height: size.height * 0.07,
              width: size.width * 0.4,
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    Global.endpoint = "/users";
                    Global.title = "Users";
                  });
                  Navigator.pushNamed(context, "details",);
                },
                style: button,
                child: Text("Users",style: buttonText),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
