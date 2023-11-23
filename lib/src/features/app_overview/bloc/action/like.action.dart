import 'package:boostera/src/features/app_overview/model/destinaton.model.dart';

abstract class LikeEvent<T>{
  T payload;
  LikeEvent(this.payload);
}

class LikePressedEvent extends LikeEvent<Destination>{
  LikePressedEvent(super.payload);
}

class LikeInitialiseEvent extends LikeEvent<List<Destination>>{
  LikeInitialiseEvent(super.payload);
}