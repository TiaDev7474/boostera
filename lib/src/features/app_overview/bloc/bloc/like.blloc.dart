import 'package:boostera/src/features/app_overview/bloc/action/like.action.dart';
import 'package:boostera/src/features/app_overview/bloc/state/like.state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LikeBloc extends Bloc<LikeEvent,LikeState>{
  LikeBloc() : super(LikeState(destinationLikedIds: [])){
    on<LikePressedEvent>((event,emit)async{

    });
  }

}