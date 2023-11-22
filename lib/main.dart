import 'package:boostera/app.dart';
import 'package:boostera/src/core/route/app_route.dart';
import 'package:boostera/src/features/app_overview/repositories/category.repository.dart';
import 'package:boostera/src/features/event/repositories/event.repo.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:http/http.dart' as http;

void main(){
  AppRouter.instance;
  GetIt.instance.registerLazySingleton<EventRepositoryImpl>(() => EventRepositoryImpl(client: http.Client()));
  GetIt.instance.registerLazySingleton<EventRepositoryProvider>(() => EventRepositoryProvider(GetIt.instance<EventRepositoryImpl>()));
  GetIt.instance.registerLazySingleton<CategoryRepository>(()=>CategoryRepository());
  runApp(const BossteraApp());
}

