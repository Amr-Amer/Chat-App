import 'package:chat_app/components/my_bubble_specil.dart';
import 'package:chat_app/constant/const.dart';
import 'package:chat_app/model/model_chat.dart';
import 'package:flutter/material.dart';
import '../components/my_text_field.dart';

class Chat1 extends StatefulWidget {
  const Chat1({super.key});

  @override
  State<Chat1> createState() => _Chat1State();
}

class _Chat1State extends State<Chat1> {

  TextEditingController textController = TextEditingController();
  String routeName = "chat1";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: const Text("chat 1"),
        centerTitle: true,
        toolbarHeight: 100,
        elevation: 0,
        backgroundColor: Colors.black87,
      ),
      body: Container(
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                  itemCount: chat.length,
                  itemBuilder: (context, index) =>
                      MyBubbleSpecial(
                        color: chat[index].senderName == routeName? Colors.green: Colors.blue,
                          text: chat[index].text.toString(),
                        isSender: chat[index].senderName == routeName? true : false,)
              ),
            ),
            Container(
              color: Colors.black87,
              height: 100,
              child: Row(
                children: [
                  Expanded(
                      child: MyTextField(textController: textController),),
                  IconButton(
                      onPressed: () {
                        setState(() {
                          chat.add(ModelChat(
                              text: textController.text,
                              senderName: routeName ));
                          textController.text = '';
                        });
                      },
                      icon: const Icon(Icons.send, color: Colors.green,))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
