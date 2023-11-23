import 'package:boostera/src/common/enums/enums.dart';
import 'package:boostera/src/features/event/bloc/event.action.dart';
import 'package:boostera/src/features/event/bloc/event.bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../bloc/event.state.dart';

class EventDetails extends StatelessWidget {
  final String eventId;

  const EventDetails({super.key, required this.eventId});

  @override
  Widget build(BuildContext context) {
    context.read<EventBloc>().add(EventLoadOne(eventId: eventId));
    return Scaffold(body: BlocBuilder<EventBloc, EventState>(
      builder: (BuildContext context, state) {
        if(state.status == RequestState.loading){
          return const CircularProgressIndicator();
        } else {
          return Container(
            padding: const EdgeInsets.all(0),
            child: Column(
              children: [
                Stack(children: [
                  Image.asset('assets/Somaroho.jpg'),
                  Positioned(
                    child: IconButton(
                        onPressed:(){
                          context.read<EventBloc>().add(EventLoadAll(perPage: 5, currentPAge: 0));
                          context.pop();
                        },
                        icon: const Icon(Icons.arrow_back_outlined,color: Colors.white,)
                    ),
                  )
                ]),
                Text("text")
              ],
            ),
          );
        }

      },
    ));
  }
}
