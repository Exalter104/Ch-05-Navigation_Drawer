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
          title: const Text("Navigation Drawer 2"),
          backgroundColor: const Color(0xff764abc),
        ),
        body: Column(children: [
          Expanded(
              child: ListView.builder(
                  itemCount: 100,
                  itemBuilder: (context, index) {
                    return const ListTile(
                      leading: CircleAvatar(
                        backgroundImage: AssetImage("images/me.png"),
                      ),
                      title: Text("Shearz"),
                      subtitle: Text(
                        "Misscall",
                        style: TextStyle(color: Colors.red),
                      ),
                      trailing: Text("2:45"),
                    );
                  }))
        ]));
  }
}
