import 'package:boostera/src/features/app_overview/bloc/action/like.action.dart';
import 'package:boostera/src/features/app_overview/bloc/state/like.state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LikeBloc extends Bloc<LikeEvent,LikeState>{
  LikeBloc() : super(LikeState(destinationLikedIds: [])){
    List<int> destinationIds= state.destinationLikedIds;
    on<LikePressedEvent>((event,emit)async{
       if (state.destinationLikedIds.contains(event.payload.destinationId)){
          destinationIds.remove(event.payload.destinationId);
       }else{
         destinationIds.add(event.payload.destinationId);
       }
       emit(LikeState(destinationLikedIds: destinationIds));
    });
    on<LikeInitialiseEvent>((event,emit)async{
       List<int> destinationIds= state.destinationLikedIds;
       event.payload.forEach((element) {
           bool test = element.likeUserIds.contains(1);
           if(test){
             destinationIds.add(element.destinationId);
           }
       });
       emit(LikeState(destinationLikedIds: destinationIds));
    });
  }

}