class Review {
  String id;
  String productId;
  String userId;
  String createdAt;
  String comment;
  String rating;

  Review({
    required this.id,
    required this.productId,
    required this.userId,
    required this.createdAt,
    required this.comment,
    required this.rating,
  });

  factory Review.fromJson(Map<String, Object?> json) =>
      Review(
          id: json["id"] as String,
          productId: json["productId"] as String,
          userId: json["userId"] as String,
          createdAt:  json["createdAt"] as String,
          comment:  json["comment"] as String,
          rating: json["rating"] as String);

  Map<String,dynamic> toJson()=>{
    'id': id,
    'productId': productId,
    'userId': userId,
    'createdAt': createdAt,
    'comment': comment,
    'rating': rating
  };

  @override
  String toString() {
    return 'Review{id: $id, productId: $productId, userId: $userId, createdAt: $createdAt, comment: $comment, rating: $rating}';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Review &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          productId == other.productId &&
          userId == other.userId &&
          createdAt == other.createdAt &&
          comment == other.comment &&
          rating == other.rating;

  @override
  int get hashCode =>
      id.hashCode ^
      productId.hashCode ^
      userId.hashCode ^
      createdAt.hashCode ^
      comment.hashCode ^
      rating.hashCode;
}
