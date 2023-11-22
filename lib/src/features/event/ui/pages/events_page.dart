import 'package:boostera/src/common/widget/logo.widget.dart';
import 'package:flutter/material.dart';

class EventPage extends StatelessWidget {
  const EventPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const BoosteraLogo(),
         actions: [
           IconButton(
               onPressed: () {},
               icon: const Icon(Icons.notifications_outlined),
           )
         ],
      ),
    );
  }
}
