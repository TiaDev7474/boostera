import 'package:boostera/src/features/app_overview/bloc/bloc/destination.bloc.dart';
import 'package:boostera/src/features/app_overview/bloc/state/destination.state.dart';
import 'package:boostera/src/features/app_overview/ui/widget/item.destination.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DestinationList extends StatelessWidget {
  const DestinationList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DestinationBloc,DestinationState>(
        builder: (context,state)=>
            SizedBox(
              height: 290,
              child: ListView.builder(
                  itemBuilder: (context,index)=>  DestinationItem(destination: state.destinations[index]),
                  itemCount: state.destinations.length,
                  scrollDirection: Axis.horizontal,
              ),
            )
    );
  }
}
