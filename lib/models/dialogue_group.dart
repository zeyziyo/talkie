class DialogueGroup {
  final String id;
  final String userId;
  final String? title;     // AI Auto-generated or User-defined
  final String? persona;   // AI Persona context
  final String? location;  // Added for location tracking
  final DateTime createdAt;

  DialogueGroup({
    required this.id,
    required this.userId,
    this.title,
    this.persona,
    this.location,
    required this.createdAt,
  });

  factory DialogueGroup.fromJson(Map<String, dynamic> json) {
    return DialogueGroup(
      id: json['id'] as String,
      userId: json['user_id'] as String,
      title: json['title'] as String?,
      persona: json['persona'] as String?,
      location: json['location'] as String?,
      createdAt: DateTime.parse(json['created_at'] as String),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'user_id': userId,
      'title': title,
      'persona': persona,
      'location': location,
      'created_at': createdAt.toIso8601String(),
    };
  }
}
