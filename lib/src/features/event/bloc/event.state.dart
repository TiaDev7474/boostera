

import 'package:boostera/src/common/enums/enums.dart';
import 'package:boostera/src/features/event/bloc/event.action.dart';
import 'package:boostera/src/features/event/model/event.model.dart';

class EventState {
  List<Event>? events;
  final RequestState requestStatus;
  final EventBlocEvent  currentEvent;
  final String? errorMessage;
  EventState({required this.currentEvent, this.errorMessage, this.events,required this.requestStatus});
}