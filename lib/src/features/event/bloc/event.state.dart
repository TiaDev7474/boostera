

import 'package:boostera/src/features/event/model/event.model.dart';

class EventState {
  List<Event>? events;
  final String requestStatus;
  final String currentEvent;
  final String? errorMessage;
  EventState({required this.currentEvent, this.errorMessage, this.events,required this.requestStatus});
}