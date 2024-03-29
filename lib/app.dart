import 'package:boostera/src/core/route/app_route.dart';
import 'package:boostera/src/features/app_overview/bloc/bloc/category.bloc.dart';
import 'package:boostera/src/features/app_overview/bloc/bloc/destination.bloc.dart';
import 'package:boostera/src/features/app_overview/bloc/bloc/like.blloc.dart';
import 'package:boostera/src/features/app_overview/repositories/category.repository.dart';
import 'package:boostera/src/features/app_overview/repositories/destinaiton.repository.dart';
import 'package:boostera/src/features/event/bloc/event.bloc.dart';
import 'package:boostera/src/features/event/repositories/event.repo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

class BossteraApp extends StatelessWidget {
  const BossteraApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(providers: [
      BlocProvider(create: (context)=>LikeBloc()),
      BlocProvider(create: (context)=>DestinationBloc(
          GetIt.instance<DestinationRepository>(),
          context.read<LikeBloc>()
      )),
      BlocProvider(create: (context)=>CategoryBloc(
          GetIt.instance<CategoryRepository>(),
          context.read<DestinationBloc>()
      )),
      BlocProvider(create: (context) => EventBloc(
          GetIt.instance<EventRepositoryProvider>()
      )),

    ], child: MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: AppRouter.router,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
           color: Colors.white,
           elevation: 0,
           iconTheme: IconThemeData(color: Colors.black87)
        )
      ),
    ));
  }
}
