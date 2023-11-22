import 'package:boostera/src/features/app_overview/enums/enums.dart';
import 'package:boostera/src/features/app_overview/model/category.model.dart';


class CategoryState {
  List<Category> categories;
  RequestState? requestState;
  CategoryState({this.requestState,this.categories= const []});
}