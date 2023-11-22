import 'package:flutter/material.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
          color: Colors.white,
          child: const Row(
            children: [
              Text("TravelM.",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
              Spacer(),
              Row(
                children: [
                  IconButton(onPressed: null, icon: Icon(Icons.search,color: Colors.black)),
                  IconButton(onPressed: null, icon: Icon(Icons.notifications_outlined,color: Colors.black))
                ],
              )
            ],
          ),

    );
  }
}
