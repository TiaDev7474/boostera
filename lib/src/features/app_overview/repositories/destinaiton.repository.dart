import 'dart:math';

import 'package:boostera/src/features/app_overview/model/destinaton.model.dart';

class DestinationRepository {
    Map<int,Destination> destinations = {
      1: Destination(
        imageUrl: 'https://example.com/image1.jpg',
        title: 'Parc national d\'Andasibe-Mantadia',
        category: 4,
        categoryDescription:'Parc',
        address: 'Andasibe-Mantadia, Madagascar',
        rating: 3.5,
        likeUserIds: [1, 2, 3],
      ),
      2: Destination(
        imageUrl: 'https://example.com/image2.jpg',
        title: 'Tsingy de Bemaraha',
        category: 4,
        categoryDescription:'Culture',
        address: 'Tsingy de Bemaraha, Madagascar',
        rating: 3,
        likeUserIds: [2, 4, 5],
      ),
      3: Destination(
        imageUrl: 'https://example.com/image3.jpg',
        title: 'Avenue des Baobabs',
        category: 4,
        categoryDescription:'Île',
        address: 'Avenue des Baobabs, Madagascar',
        rating: 1,
        likeUserIds: [3, 6, 8],
      ),
      4: Destination(
        imageUrl: 'https://example.com/image4.jpg',
        title: 'Île Sainte-Marie',
        category: 4,
        categoryDescription:'Île',
        address: 'Île Sainte-Marie, Madagascar',
        rating: 4.7,
        likeUserIds: [4, 7, 9],
      ),
      5: Destination(
        imageUrl: 'https://example.com/image5.jpg',
        title: 'Ranomafana National Park',
        category: 4,
        categoryDescription:'Parc',
        address: 'Ranomafana, Madagascar',
        rating: 3.5,
        likeUserIds: [5, 10, 11],
      ),
    };

    Future<List<Destination>> getAllDestination()async{
      await Future.delayed(const Duration(seconds: 1));
      int rnd = Random().nextInt(10);
      if(rnd > 0){
        return destinations.values.toList();
      }else{
        throw Exception("Cannot get all destinations");
      }
    }
    Future<List<Destination>> getDestinationByCategory(int category)async{
      await Future.delayed(const Duration(seconds: 1));
      int rnd = Random().nextInt(10);
      if(rnd > 0){
        return destinations.values.where((element) => element.category == category).toList();
      }else{
        throw Exception("Cannot get all destination by category");
      }
    }
}