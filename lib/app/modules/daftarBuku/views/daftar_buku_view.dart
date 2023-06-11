import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/daftar_buku_controller.dart';

class DaftarBukuView extends GetView<DaftarBukuController> {
  const DaftarBukuView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0XFF27374D),
      appBar: AppBar(
        title: const Text('Daftar Buku'),
        centerTitle: true,
        backgroundColor: const Color(0XFF27374D),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        itemCount: controller.books.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Image.asset(controller.filename[index]),
            title: Text(
              controller.books[index],
              style: const TextStyle(
                color: Colors.white,
              ),
            ),
          );
        },
      ),
    );
  }
}
