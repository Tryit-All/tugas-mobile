// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import './models.dart';
import 'package:get/get.dart';

import 'pages/getX/controller/demoController.dart';
import 'pages/getX/view/demoPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final DemoController ctrl = Get.put(DemoController());

  @override
  Widget build(BuildContext context) {
    return SimpleBuilder(
      builder: (_) {
        return GetMaterialApp(
          home: MyHomePage(),
          title: 'anu',
          theme: ctrl.theme,
          debugShowCheckedModeBanner: false,
          initialRoute: '/',
          routes: {
            '/cart': (context) => DemoPage(),
          },
        );
      },
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tugas APP'),
      ),
      body: Container(
        child: ListView.separated(
          itemBuilder: (ctx, i) {
            return ListTile(
              onTap: () => Get.to(items[i].page),
              title: Text(
                items[i].name,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text(items[i].message),
              trailing: Text(items[i].time),
            );
          },
          separatorBuilder: (ctx, i) {
            return Divider();
          },
          itemCount: items.length,
        ),
      ),
    );
  }
}
