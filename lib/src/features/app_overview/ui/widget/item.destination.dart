import 'package:boostera/src/features/app_overview/bloc/bloc/like.blloc.dart';
import 'package:boostera/src/features/app_overview/bloc/state/like.state.dart';
import 'package:boostera/src/features/app_overview/model/destinaton.model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class DestinationItem extends StatelessWidget {
  final Destination destination;
  const DestinationItem({super.key,required this.destination});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 270,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius:  BorderRadius.circular(12),
              child: AspectRatio(
                  aspectRatio: 16 / 9,
                  child: Image.asset('${destination.imageUrl}',fit: BoxFit.cover,)),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RatingBar.builder(
                      initialRating: destination.rating as double,
                      itemSize: 22,
                      allowHalfRating: true,
                      itemBuilder: (context, _) => const Icon(
                        size: 4,
                        Icons.star,
                        color: Colors.amber,
                      ),
                      onRatingUpdate: (rating) {
                        print(rating);
                      }),
                    Container(
                      decoration: const BoxDecoration(
                        color: Color.fromRGBO(56, 64, 1, 0.09),
                        borderRadius: BorderRadius.all(Radius.circular(16))
                      ),
                      width: 70,
                      padding: const EdgeInsets.all(8.0),
                      child: Center(child: Text('${destination.categoryDescription}',style: const TextStyle(color: Color.fromARGB(56,64,1,1)),))
                    )
                ],
              ),
            ),
            Row(
              children: [

                Flexible(
                  flex: 3,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('${destination.title}',style: const TextStyle(fontWeight: FontWeight.w600,),softWrap: true,),
                        ),
                        Row(
                          children: [
                            const Icon(Icons.location_on_outlined,color: Color.fromRGBO(151, 151, 151, 1),),
                            Expanded(
                              child: Text('${destination.address}',
                                  softWrap: true,
                                  style: const TextStyle(fontWeight: FontWeight.w400, color: Color.fromRGBO(151, 151, 151, 1))),
                            )
                          ],
                        )
                    ],
                  ),
                ),
                Expanded(
                  child: BlocBuilder<LikeBloc, LikeState>(
                    builder: (context, state) => IconButton(
                      onPressed: () {
                          print(state.destinationLikedIds.contains(1));
                      },
                      icon: state.destinationLikedIds.contains(1)
                          ? const Icon(Icons.favorite, size: 32, color: Colors.red)
                          : const Icon(Icons.favorite_outline, size: 32,),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
