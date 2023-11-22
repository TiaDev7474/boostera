import 'package:boostera/src/common/widget/logo.widget.dart';
import 'package:boostera/src/features/event/ui/widget/events_list.dart';
import 'package:boostera/src/features/event/ui/widget/filter_button.dart';
import 'package:boostera/src/features/event/ui/widget/search.widget.dart';
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
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 16 , vertical:8.0),
          child: const Column(
             crossAxisAlignment: CrossAxisAlignment.start,
             mainAxisAlignment: MainAxisAlignment.start,
             children: [
                   Row(
                     children: [
                       Expanded(
                           child: SearchField()
                       ),
                       Filter(),
                     ],
                   ),
                   SizedBox(height: 24,),
                   Text("Upcoming Events", style: TextStyle(fontSize: 22),),
                   SizedBox(height: 8,),
                   SizedBox(
                       height:270,
                       child: EventList()
                   ),
                   SizedBox(height: 24,),
                   Text("Popular Events", style: TextStyle(fontSize: 22),),
                   SizedBox(height: 8,),
                   SizedBox(
                       height: 270,
                       child: EventList()
                   )


                 ],
               )
          ),
      )
    );
  }
}
