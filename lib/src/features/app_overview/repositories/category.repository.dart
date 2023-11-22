
import 'dart:math';

import 'package:boostera/src/features/app_overview/model/category.model.dart';

class CategoryRepository{
  Map<int,Category> categories ={
    1:Category(id: 1,name: 'Park',imageUrl: 'P'),
    2:Category(id: 2,name: 'Heritage',imageUrl: 'H'),
    3:Category(id: 3,name: 'Coast',imageUrl: 'C'),
    4:Category(id: 4,name: 'Culture',imageUrl: 'Cu'),
    5:Category(id: 5,name: 'Adventure',imageUrl: 'A'),
    6:Category(id: 6,name: 'Science',imageUrl: 'S'),
    7:Category(id: 7,name: 'Calm',imageUrl: 'C'),
    8:Category(id: 1,name: 'Desert',imageUrl: 'D')
  };

  Future<List<Category>> getAllCategories()async{
    await Future.delayed(const Duration(seconds: 1));
    int rnd = Random().nextInt(10);
    if(rnd > 0){
      return categories.values.toList();
    }else{
      throw Exception("Cannot get all categories");
    }
  }
}