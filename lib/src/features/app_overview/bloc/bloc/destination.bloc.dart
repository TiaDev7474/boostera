import 'package:bloc/bloc.dart';
import 'package:boostera/src/common/enums/enums.dart';
import 'package:boostera/src/features/app_overview/bloc/action/destination.action.dart';
import 'package:boostera/src/features/app_overview/bloc/state/destination.state.dart';
import 'package:boostera/src/features/app_overview/model/destinaton.model.dart';

import '../../repositories/destinaiton.repository.dart';

class DestinationBloc extends Bloc<DestinationEvent,DestinationState>{
  DestinationRepository destinationRepository;
  DestinationBloc(this.destinationRepository): super(DestinationState(destinations: [],requestState: RequestState.none,currentEvent: DefaultEvent())){
    on<DestinationLoadAllEvent>((event,emit)async{
      emit(DestinationState(destinations: state.destinations,requestState: RequestState.loading,currentEvent: event));
      try{
          List<Destination> data = await destinationRepository.getAllDestination();
          emit(DestinationState(destinations: data,requestState: RequestState.loaded,currentEvent: event));
      }on Exception catch(e){
        emit(DestinationState(destinations: state.destinations,requestState: RequestState.error,currentEvent: event));
      }
    });
  }




}