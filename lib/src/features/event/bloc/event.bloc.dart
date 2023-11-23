import 'package:bloc/bloc.dart';
import 'package:boostera/src/common/enums/enums.dart';
import 'package:boostera/src/features/event/bloc/event.action.dart';
import 'package:boostera/src/features/event/bloc/event.state.dart';
import 'package:boostera/src/features/event/model/event.model.dart';
import 'package:boostera/src/features/event/repositories/event.repo.dart';


class EventBloc extends Bloc<EventBlocEvent, EventState> {
  EventBloc(EventRepositoryProvider eventRepositoryProvider)
      : super(EventState.initial()) {
    on<EventLoadAll>((event, emit) async {
      emit(state.copyWith(status: RequestState.loading));
      List<Event> events = await  eventRepositoryProvider.getAll(
          perPage: event.perPage as int,
          currentPage: event.perPage as int);
      emit(state.copyWith(status: RequestState.loaded, events: events));
    });
    on<EventLoadOne>((event, emit) async {
      emit(state.copyWith(status: RequestState.loading));
      Event foundEvent = await eventRepositoryProvider.getOne(id:event.eventId);
      emit(state.copyWith(status: RequestState.loaded, event: foundEvent));
    });
  }
}
