class UserLibrary {
  final String id;
  final String userId;
  final int groupId;
  final String? personalNote;
  final Map<String, dynamic> reviewStats;
  final DateTime createdAt;

  UserLibrary({
    required this.id,
    required this.userId,
    required this.groupId,
    this.personalNote,
    this.reviewStats = const {},
    required this.createdAt,
  });

  factory UserLibrary.fromJson(Map<String, dynamic> json) {
    return UserLibrary(
      id: json['id'] as String,
      userId: json['user_id'] as String,
      groupId: json['group_id'] as int,
      personalNote: json['personal_note'] as String?,
      reviewStats: json['review_stats'] as Map<String, dynamic>? ?? {},
      createdAt: DateTime.parse(json['created_at'] as String),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'user_id': userId,
      'group_id': groupId,
      'personal_note': personalNote,
      'review_stats': reviewStats,
      'created_at': createdAt.toIso8601String(),
    };
  }
}
