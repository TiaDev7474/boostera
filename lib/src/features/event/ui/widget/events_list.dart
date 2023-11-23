import 'package:boostera/src/common/enums/enums.dart';
import 'package:boostera/src/features/event/bloc/event.action.dart';
import 'package:boostera/src/features/event/bloc/event.bloc.dart';
import 'package:boostera/src/features/event/bloc/event.state.dart';
import 'package:boostera/src/features/event/model/event.model.dart';
import 'package:boostera/src/features/event/repositories/event.repo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import 'event_card.dart';

class EventList extends StatelessWidget {
  const EventList({super.key});

  @override
  Widget build(BuildContext context) {
    context.read<EventBloc>().add(EventLoadAll(perPage: 5, currentPAge: 0));
    return BlocBuilder<EventBloc, EventState>(
      builder: (BuildContext context, state) {
        if (state.status == RequestState.loading && state.events == null) {
          return const Center(child: CircularProgressIndicator());
        } else {
          return ListView.builder(
            physics: const ClampingScrollPhysics(),
            itemCount: state.events?.length,
            itemBuilder: (context, index) {
              Event? event = state.events?[index];

              return InkWell(
                onTap: (){
                  context.push('/event/1');
                },
                child: CardEvent(
                  event: event!,
                ),
              );
            },
            scrollDirection: Axis.horizontal,
          );
        }
      },
    );
  }
}
