import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:primerapp/presenter/controller/message_controller.dart';

class MessagePage extends StatelessWidget {
  const MessagePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Messages'),
        ),
        body:
        Center(child: Text(Get.find<MessagePageController>().title.value)));
  }
}