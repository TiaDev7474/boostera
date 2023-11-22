import 'package:boostera/src/features/app_overview/model/category.model.dart';

abstract class DestinationEvent<T> {
  T payload;
  DestinationEvent(this.payload);
}

class DestinationLoadAllEvent extends DestinationEvent{
  DestinationLoadAllEvent() : super(null);
}

class DestinationLoadByCategoryEvent extends DestinationEvent<Category>{
  DestinationLoadByCategoryEvent(super.payload);

}
class DefaultEvent extends DestinationEvent {
  DefaultEvent() : super(null);
}