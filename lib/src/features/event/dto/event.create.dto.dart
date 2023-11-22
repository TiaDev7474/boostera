
class CreateEventDTO {
  final String location;

  final String name;

  final String bannerUrl;

  final DateTime date;

   const CreateEventDTO({
     required this.name,
     required this.bannerUrl,
     required this.location,
     required this.date,
  });
}