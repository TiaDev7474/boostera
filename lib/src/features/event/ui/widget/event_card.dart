import 'package:boostera/src/features/event/model/event.model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class CardEvent extends StatelessWidget {
  final Event event;

  const CardEvent({super.key, required this.event});

  @override
  Widget build(BuildContext context) {
    DateTime dateTime = DateTime.fromMillisecondsSinceEpoch(event.eventDate);
    Duration diff = dateTime.difference(DateTime.now());
    int dayLeft = diff.inDays;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        width: 270,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(12)),
                  child: Image.asset(
                    'assets/Somaroho.jpg',
                    fit: BoxFit.cover,
                    scale: 1,
                  ),
                ),
                Positioned(
                    right: 0,
                   child: IconButton(
                      icon: const Icon(Icons.bookmark_outline_outlined, color: Colors.white,size: 32,) ,
                      onPressed: () {  },
                    )
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Expanded(
                    child: RatingBar.builder(
                        initialRating: 3,
                        itemSize: 22,
                        itemBuilder: (context, _) => const Icon(
                              size: 4,
                              Icons.star,
                              color: Colors.amber,
                            ),
                        onRatingUpdate: (rating) {
                          print(rating);
                        }),
                  ),
                  Container(
                      decoration: const BoxDecoration(
                          color: Color.fromRGBO(60, 90, 153, 0.1),
                          borderRadius: BorderRadius.all(Radius.circular(8.0))),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8.0, vertical: 4.0),
                      child: Row(
                        children: [
                          const Icon(
                            Icons.timer_sharp,
                            size: 12,
                          ),
                          Text(
                            '$dayLeft days left',
                            style: const TextStyle(fontSize: 12),
                            softWrap: true,
                          ),
                        ],
                      ))
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(
                children: [
                  Text(
                    event.eventName,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Colors.deepPurple,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  const Icon(Icons.location_on_outlined),
                  Text(event.eventLocation, style: TextStyle(fontSize: 12),)
                ],
              ),
            )

          ],
        ),
      ),
    );
  }
}
