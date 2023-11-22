class Event {
  final String eventId;
  final String eventName;
  final String eventLocation;
  final DateTime eventDate;
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
           eventDate: json['eventDate'] as DateTime,
           eventLocation: json['eventLocation'] as String,
           eventBannerUrl: json['eventBannerUrl'] as String,
       );
  }

}

class CommentsOnEvent {

}
