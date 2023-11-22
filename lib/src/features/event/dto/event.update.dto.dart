class UpdateEventDTO {
  final String? location;

  final String? name;

  final String? bannerUrl;

  final DateTime? date;

  const UpdateEventDTO(
     this.name,
    this.bannerUrl,
    this.location,
    this.date,
  );
}