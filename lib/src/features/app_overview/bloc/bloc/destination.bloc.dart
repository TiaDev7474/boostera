import 'package:bloc/bloc.dart';
import 'package:boostera/src/common/enums/enums.dart';
import 'package:boostera/src/features/app_overview/bloc/action/destination.action.dart';
import 'package:boostera/src/features/app_overview/bloc/state/destination.state.dart';
import 'package:boostera/src/features/app_overview/model/destinaton.model.dart';

import '../../repositories/destinaiton.repository.dart';
import 'like.blloc.dart';

class DestinationBloc extends Bloc<DestinationEvent,DestinationState>{

  DestinationRepository destinationRepository;
  LikeBloc likeBloc;

  DestinationBloc(this.destinationRepository,this.likeBloc): super(DestinationState(destinations: [],requestState: RequestState.none,currentEvent: DefaultEvent())){
    on<DestinationLoadAllEvent>((event,emit)async{
      emit(DestinationState(destinations: state.destinations,requestState: RequestState.loading,currentEvent: event));
      try{
          List<Destination> data = await destinationRepository.getAllDestination();
          emit(DestinationState(destinations: data,requestState: RequestState.loaded,currentEvent: event));
      }on Exception catch(e){
        emit(DestinationState(destinations: state.destinations,requestState: RequestState.error,currentEvent: event));
      }
    });
    on<DestinationLoadByCategoryEvent>((event,emit)async{
      emit(DestinationState(destinations: state.destinations,requestState: RequestState.loading,currentEvent: event));
      try{
        List<Destination> data = await destinationRepository.getDestinationByCategory(event.payload.id as int);
        emit(DestinationState(destinations: data,requestState: RequestState.loaded,currentEvent: event));
      }on Exception catch(e){
        emit(DestinationState(destinations: state.destinations,requestState: RequestState.error,currentEvent: event));
      }
    });
  }




}