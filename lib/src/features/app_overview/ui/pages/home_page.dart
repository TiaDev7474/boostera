import 'package:boostera/src/common/widget/logo.widget.dart';
import 'package:boostera/src/features/app_overview/ui/widget/list.category.widget.dart';
import 'package:boostera/src/features/app_overview/ui/widget/list.destination.dart';
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
        body: SingleChildScrollView(

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
                Container(
                    padding: const EdgeInsets.all(16),
                    child: const Text('Category',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 20))),
                const ListCategoryWidget(),
              Row(
                mainAxisAlignment:  MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      padding: const EdgeInsets.all(16),
                      child: const Text('Destination',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 20))),
                  Container(
                      padding: const EdgeInsets.all(16),
                      child: const Text('See All',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 20))),
                ],
              ),
                const DestinationList()
            ],
          ),
        )
    );
  }
}
