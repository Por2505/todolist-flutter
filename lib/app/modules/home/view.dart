import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tutorial/app/core/utils/extensions.dart';
import 'package:tutorial/app/modules/home/controller.dart';
import 'package:tutorial/app/modules/home/widgets/add_card.dart';
import 'package:tutorial/app/modules/home/widgets/task_card.dart';

import '../../data/models/task.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({Key?key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Padding(
              padding: EdgeInsets.all(4.0.wp),
              child: Text('My List',style: TextStyle(fontSize: 24.0.sp,fontWeight: FontWeight.bold)),
            ),
            GridView.count(
                crossAxisCount: 2,
              shrinkWrap: true,
              physics: const ClampingScrollPhysics(),
              children: [TaskCard(task: Task(title:'title',icon:0xe59c,color: '#FF2B60E6')),AddCard()],
            )
          ],
        ),

      )
    );
  }
}