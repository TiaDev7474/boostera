

import 'package:boostera/src/features/event/dto/event.create.dto.dart';
import 'package:boostera/src/features/event/dto/event.update.dto.dart';

sealed class EventBlocEvent {}

final class EventStarted extends EventBlocEvent{}

final class EventLoadAll extends EventBlocEvent{
  final String? perPage;
  final String? currentPAge;
  EventLoadAll(this.perPage, this.currentPAge);
}

final class EventUpdate extends EventBlocEvent{
  final UpdateEventDTO updateEventDTO;
  final String id;

  EventUpdate({required this.id, required this.updateEventDTO});
}
final class EventCreate extends EventBlocEvent{
  final CreateEventDTO createEventDTO;
  final String id;

  EventCreate({required this.id, required this.createEventDTO});
}

final class EventDelete extends EventBlocEvent{
  final String id;

  EventDelete({required this.id});
}

final class EventSaved extends EventBlocEvent {

}

