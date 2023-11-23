import 'dart:math';

import 'package:boostera/src/features/app_overview/model/destinaton.model.dart';

class DestinationRepository {
    Map<int,Destination> destinations = {
      1: Destination(
        destinationId: 1,
        imageUrl: 'assets/mahajanga.jpg',
        title: 'Parc national d\'Andasibe-Mantadia',
        category: 4,
        categoryDescription:'Parc',
        address: 'Andasibe-Mantadia, Madagascar',
        rating: 3.5,
        likeUserIds: [1, 2, 3],
      ),
      2: Destination(
        destinationId: 2,
        imageUrl: 'assets/TsingyOfBemaraha.jpg',
        title: 'Tsingy de Bemaraha',
        category: 4,
        categoryDescription:'Culture',
        address: 'Tsingy de Bemaraha, Madagascar',
        rating: 3,
        likeUserIds: [2, 4, 5],
      ),
      3: Destination(
        destinationId: 3,
        imageUrl: 'assets/baobab.jpg',
        title: 'Avenue des Baobabs',
        category: 4,
        categoryDescription:'Île',
        address: 'Avenue des Baobabs, Madagascar',
        rating: 1,
        likeUserIds: [1, 6, 8],
      ),
      4: Destination(
        destinationId: 4,
        imageUrl: 'assets/plage.jpg',
        title: 'Île Sainte-Marie',
        category: 4,
        categoryDescription:'Île',
        address: 'Île Sainte-Marie, Madagascar',
        rating: 4.7,
        likeUserIds: [2, 7, 9],
      ),
      5: Destination(
        destinationId: 4,
        imageUrl: 'assets/Antananarivo.jpg',
        title: 'Ranomafana National Park',
        category: 4,
        categoryDescription:'Parc',
        address: 'Ranomafana, Madagascar',
        rating: 3.5,
        likeUserIds: [2, 4,3],
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