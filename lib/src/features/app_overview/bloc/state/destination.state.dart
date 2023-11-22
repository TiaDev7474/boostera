import 'package:boostera/src/common/enums/enums.dart';
import 'package:boostera/src/features/app_overview/bloc/action/destination.action.dart';

import '../../model/destinaton.model.dart';

class DestinationState{
  List<Destination> destinations;
  RequestState? requestState;
  DestinationEvent? currentEvent;

  DestinationState({this.destinations =const [], this.requestState, this.currentEvent});
}