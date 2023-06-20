class Category {
  String id;
  String name;
  String description;
  String createdAt;
  String modifyAt;
  String icon;

  Category(
      {required this.id,
      required this.name,
      required this.description,
      required this.createdAt,
      required this.modifyAt,
      required this.icon});

  factory Category.fromJson(Map<String, Object?> json) => Category(
        id: json["id"] as String,
        name: json["name"] as String,
        description: json["description"] as String,
        createdAt: json["createdAt"] as String,
        modifyAt: json["modifyAt"] as String,
        icon: json["icon"] as String,
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "description": description,
        "createdAt": createdAt,
        "modifyAt": modifyAt,
        "icon": icon,
      };

  @override
  String toString() {
    return 'Category{id: $id, name: $name, description: $description, createdAt: $createdAt, modifyAt: $modifyAt, icon: $icon}';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Category &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          name == other.name &&
          description == other.description &&
          createdAt == other.createdAt &&
          modifyAt == other.modifyAt &&
          icon == other.icon;

  @override
  int get hashCode =>
      id.hashCode ^
      name.hashCode ^
      description.hashCode ^
      createdAt.hashCode ^
      modifyAt.hashCode ^
      icon.hashCode;
}
