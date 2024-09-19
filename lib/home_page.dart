import 'package:chat_app/chats/chat_1.dart';
import 'package:chat_app/chats/chat_2.dart';
import 'package:chat_app/constant/app_color.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.blackColor,
        toolbarHeight: 100,
        elevation: 0,
        centerTitle: true,
        title: const Text("Home"),
      ),
      body: Container(
        color: Colors.black,
        child: ListView(
          children: [
            InkWell(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => const Chat1(),));
              },
              child: const Column(
                children: [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: ListTile(
                      leading: CircleAvatar(radius: 30,),
                      title: Text(
                        "Chat 1",
                        style: TextStyle(
                            color: AppColor.whiteColor,
                            fontWeight: FontWeight.bold),),
                    ),
                  ),
                  Divider(color: AppColor.whiteColor,),
                ],
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => const Chat2(),));
              },
              child: const Column(
                children: [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: ListTile(
                      leading: CircleAvatar(radius: 30,backgroundColor: Colors.orange,),
                      title: Text(
                        "Chat 2",
                        style: TextStyle(
                            color: AppColor.whiteColor,
                            fontWeight: FontWeight.bold),),
                    ),
                  ),
                  Divider(color: AppColor.whiteColor,),
                ],
              ),
            ),
          ],
        ),

      ),
    );
  }
}
