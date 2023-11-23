import 'package:boostera/src/common/enums/enums.dart';
import 'package:boostera/src/features/event/model/event.model.dart';
import 'package:equatable/equatable.dart';

enum EventStatus { initial, loading, loaded, error }

class EventState extends Equatable {
  final RequestState status;
  final List<Event>? events;
  final Event? event;
  const EventState( {
    required this.status,
    required this.events,
    required this.event,
  });
  static EventState initial() {
    return const EventState(
      status: RequestState.none,
      events: null,
      event: null,
    );
  }

  EventState copyWith({
    RequestState? status,
    List<Event>? events,
    Event? event,
  }) =>
      EventState(
        status: status ?? this.status,
        events: events ?? this.events,
        event: event ?? this.event,
      );

  @override
  // TODO: implement props
  List<Object?> get props => [status, events, event];
}
