import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar:  AppBar(
          title: const Text('Boostera.',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color: Colors.black),),
          actions: const [
            IconButton(onPressed: null, icon: Icon(Icons.search,color: Colors.black)),
            IconButton(onPressed: null, icon: Icon(Icons.notifications_outlined,color: Colors.black))
          ],
          elevation: 0,
          backgroundColor: Colors.white,
        ),
        body: const Column(
          children: [

          ],
        )
    );
  }
}
