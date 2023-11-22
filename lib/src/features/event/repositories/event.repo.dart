
import 'dart:io';

import 'package:boostera/src/common/constants/events.dart';
import 'package:boostera/src/features/event/dto/event.create.dto.dart';
import 'package:boostera/src/features/event/dto/event.update.dto.dart';
import 'package:boostera/src/features/event/model/event.model.dart';

abstract class EventRepository {
  Future<List<Event>> getAll({required int perPage, int? currentPage = 0});
  Future<void> createOne({ required CreateEventDTO createEventDTO});
  Future<Event> getOne({required String id});
  Future<void> deleteOne({required String id});
  Future<Event> updateOne({required String id, required UpdateEventDTO updateEventDTO});
}

class EventRepositoryImpl implements EventRepository {

  EventRepositoryImpl({ this.client});
  var client;

  @override
  Future<void> createOne({required CreateEventDTO createEventDTO}) {
    // TODO: implement createOne
    throw UnimplementedError();
  }

  @override
  Future<void> deleteOne({required String id}) {
    // TODO: implement deleteOne
    throw UnimplementedError();
  }

  @override
  Future<List<Event>> getAll({required int perPage, int? currentPage = 0}) async {
     await Future.delayed(const Duration(seconds: 5000));
     return eventList.map((event )=> Event.fromJson(event)).toList();
  }

  @override
  Future<Event> getOne({required String id}) {
    // TODO: implement getOne
    throw UnimplementedError();
  }

  @override
  Future<Event> updateOne({required String id, required UpdateEventDTO updateEventDTO}) {
    // TODO: implement updateOne
    throw UnimplementedError();
  }

}

class EventRepositoryProvider implements EventRepository{
  EventRepositoryProvider(this.eventRepositoryImpl);
  final EventRepositoryImpl eventRepositoryImpl;
  @override
  Future<void> createOne({required CreateEventDTO createEventDTO}) {
     return eventRepositoryImpl.createOne(createEventDTO: createEventDTO);
  }

  @override
  Future<void> deleteOne({required String id}) {
     return eventRepositoryImpl.deleteOne(id: id);
  }

  @override
  Future<List<Event>> getAll({required int perPage, int? currentPage = 0}) {
     return eventRepositoryImpl.getAll(perPage: perPage,currentPage: currentPage);
  }

  @override
  Future<Event> getOne({required String id}) {
     return eventRepositoryImpl.getOne(id: id);
  }

  @override
  Future<Event> updateOne({required String id, required UpdateEventDTO updateEventDTO}) {
    return eventRepositoryImpl.updateOne(id: id, updateEventDTO: updateEventDTO);
  }

}