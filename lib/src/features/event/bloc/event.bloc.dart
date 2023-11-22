
import 'package:bloc/bloc.dart';
import 'package:boostera/src/features/event/bloc/event.action.dart';
import 'package:boostera/src/features/event/bloc/event.state.dart';


class EventBloc extends Bloc<EventBlocEvent, EventState> {
  EventBloc(): super(EventState(currentEvent: '', requestStatus: ,events: [], errorMessage: "")){
    on<EventLoadAll>((event, emit){
       emit(EventState(currentEvent: , requestStatus: ))
    }
  }

}