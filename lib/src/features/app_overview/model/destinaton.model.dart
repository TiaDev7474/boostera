import '../bloc/state/like.state.dart';

class Destination {
  String?  imageUrl;
  String? title;
  String? address;
  double? rating;
  int? category;
  String? categoryDescription;

  List<int> likeUserIds;
  Destination({this.categoryDescription,this.address,this.imageUrl,this.title,this.rating,this.likeUserIds = const [],this.category});
}