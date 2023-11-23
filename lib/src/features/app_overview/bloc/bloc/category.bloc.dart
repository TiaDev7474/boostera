import 'package:bloc/bloc.dart';
import 'package:boostera/src/features/app_overview/bloc/action/category.action.dart';
import 'package:boostera/src/features/app_overview/bloc/action/destination.action.dart';
import 'package:boostera/src/features/app_overview/bloc/state/category.state.dart';
import 'package:boostera/src/features/app_overview/enums/enums.dart';
import 'package:boostera/src/features/app_overview/model/category.model.dart';

import '../../repositories/category.repository.dart';
import 'destination.bloc.dart';

class CategoryBloc extends Bloc<CategoryEvent,CategoryState>{

  CategoryRepository categoryRepository;
  DestinationBloc destinationBloc;

  CategoryBloc(this.categoryRepository,this.destinationBloc) : super(CategoryState(categories: [],requestState: RequestState.none)){
    on<CategoryLoadAllEvent>((event,emit)async{
      emit(CategoryState(categories: state.categories,requestState: RequestState.loading));
      try{
        List<Category> data = await categoryRepository.getAllCategories();
        emit(CategoryState(categories: data,requestState: RequestState.loaded));
        destinationBloc.add(DestinationLoadByCategoryEvent(data[3]));
      }on Exception catch(e) {
        emit(CategoryState(categories: state.categories,requestState: RequestState.error));
      }
    });
  }

}