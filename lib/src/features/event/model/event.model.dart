class Event {
  final String eventId;
  final String eventName;
  final String eventLocation;
  final int eventDate;
  final String eventBannerUrl;


  const Event({
    required this.eventId,
    required this.eventName,
    required this.eventDate,
    required this.eventLocation,
    required this.eventBannerUrl,

  });

  factory Event.fromJson(Map<String, dynamic> json) {
       return Event(
           eventId: json['eventId'] as String,
           eventName: json['eventName'] as String,
           eventDate: DateTime.now().millisecondsSinceEpoch + 2 * 24 * 60 * 60 * 1000,
           eventLocation: json['eventLocation'] as String,
           eventBannerUrl: json['eventBannerUrl'] as String,
       );
  }

}

class CommentsOnEvent {

}
