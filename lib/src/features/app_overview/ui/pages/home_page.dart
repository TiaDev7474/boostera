import 'package:boostera/src/common/widget/logo.widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar:  AppBar(
          title: const BoosteraLogo(),
          actions: const [
            IconButton(onPressed: null, icon: Icon(Icons.search,color: Colors.black)),
            IconButton(onPressed: null, icon: Icon(Icons.notifications_outlined,color: Colors.black))
          ],
          elevation: 0,
          backgroundColor: Colors.white10,
        ),
        body: const Column(
          children: [

          ],
        )
    );
  }
}
