import 'package:boostera/src/features/app_overview/bloc/state/category.state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../bloc/action/category.action.dart';
import '../../bloc/bloc/category.bloc.dart';

class ListCategoryWidget extends StatelessWidget {
  const ListCategoryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    context.read<CategoryBloc>().add(CategoryLoadAllEvent());
    return BlocBuilder<CategoryBloc,CategoryState>(
        builder: (context,state)=>SizedBox(
          height: 150,
          child: ListView.builder
            (
            itemBuilder: (context,index) =>
                Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Container(
                      padding: const EdgeInsets.all(2),
                      width: 80,
                      child: Column(
                        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            margin: const EdgeInsets.only(bottom: 8.0),
                            child: CircleAvatar(
                              backgroundColor: Colors.grey,
                              child: Text('${state.categories[index].imageUrl}'
                                ,style: const TextStyle(color: Colors.white)
                                ,),
                            ),
                          ),
                          Text('${state.categories[index].name}',softWrap: false,),
                        ],
                      )
                  ),
                ),
            itemCount: state.categories.length,
            scrollDirection: Axis.horizontal,
          ),
        )
    );
  }
}
