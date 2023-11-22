import 'package:bloc/bloc.dart';
import 'package:boostera/src/common/enums/enums.dart';
import 'package:boostera/src/features/event/bloc/event.action.dart';
import 'package:boostera/src/features/event/bloc/event.state.dart';
import 'package:boostera/src/features/event/model/event.model.dart';
import 'package:boostera/src/features/event/repositories/event.repo.dart';

class EventBloc extends Bloc<EventBlocEvent, EventState> {
  EventBloc(EventRepositoryProvider eventRepositoryProvider)
      : super(EventState(
            currentEvent: EventStarted(),
            requestStatus: RequestState.none,
            events: [],
            errorMessage: "")) {
    on<EventLoadAll>((event, emit) {
      emit(
          EventState(currentEvent: event, requestStatus: RequestState.loading));
      List<Event> events = eventRepositoryProvider.getAll(
          perPage: event.perPage as int,
          currentPage: event.perPage as int) as List<Event>;
      emit(EventState(currentEvent: event, requestStatus: RequestState.loaded,events: events));
    });
  }
}
