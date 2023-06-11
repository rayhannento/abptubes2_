import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:tubes2_1304192002/app/routes/app_pages.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0XFF27374D),
      appBar: AppBar(
        title: const Text('Aplikasi Mari Membaca'),
        automaticallyImplyLeading: false,
        centerTitle: true,
        backgroundColor: const Color(0XFF27374D),
      ),
      body: ListView(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10.0),
            child: Container(
              margin: const EdgeInsets.all(18),
              decoration: BoxDecoration(
                color: const Color(0XFF27374D),
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 15),
                child: Column(
                  children: [
                    const Text(
                      "Selamat Datang",
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Image.asset('image/icon.png', height: 200),
                    ),
                    const Text(
                      "Mari bersama tingkatkan minat baca muda-mudi Indonesia",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              ),
            ),
          ),
          ListTile(
            iconColor: Colors.white,
            textColor: Colors.white,
            leading: const Icon(Icons.book),
            title: const Text('Daftar Buku'),
            onTap: () => Get.toNamed(Routes.DAFTAR_BUKU),
          ),
          const ListTile(
            iconColor: Colors.white,
            textColor: Colors.white,
            leading: Icon(Icons.category),
            title: Text('Kategori Buku'),
          ),
          const ListTile(
            iconColor: Colors.white,
            textColor: Colors.white,
            leading: Icon(Icons.star),
            title: Text('Paling Banyak Dibaca'),
          ),
          const ListTile(
            iconColor: Colors.white,
            textColor: Colors.white,
            leading: Icon(Icons.contact_page),
            title: Text('Contact Us'),
          ),
        ],
      ),
    );
  }
}
