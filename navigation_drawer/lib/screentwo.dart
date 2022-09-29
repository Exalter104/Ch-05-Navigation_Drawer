import 'package:flutter/material.dart';

class ScrrenTwo extends StatefulWidget {
  static const String id = "ScrrenTwo";
  const ScrrenTwo({super.key});

  @override
  State<ScrrenTwo> createState() => _ScrrenTwoState();
}

class _ScrrenTwoState extends State<ScrrenTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Navigation Drawer2"),
        backgroundColor: const Color(0xff764abc),
      ),
      drawer: Drawer(
        child: ListView(
          children: const [
            UserAccountsDrawerHeader(
                decoration: BoxDecoration(color: Color(0xff764abc)),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: AssetImage("images/me.png"),
                ),
                accountName: Text("Muhammad Sheraz"),
                accountEmail: Text("Muhammadsherazkhan104@gmail.com ")),
          ],
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: TextButton(onPressed: () {}, child: const Text("Screen 02")),
          )
        ],
      ),
    );
  }
}
