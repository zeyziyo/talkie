class ChatParticipant {
  final String id;
  final String dialogueId;
  String name;
  final String role; // 'user' or 'ai'
  String gender; // 'male', 'female'
  String langCode; // 'en-US', 'ko-KR'
  int? avatarColor; // 0xFF...

  ChatParticipant({
    required this.id,
    required this.dialogueId,
    required this.name,
    required this.role,
    this.gender = 'female',
    this.langCode = 'en-US',
    this.avatarColor,
  });

  factory ChatParticipant.fromJson(Map<String, dynamic> json) {
    return ChatParticipant(
      id: json['id'] as String,
      dialogueId: json['dialogue_id'] as String,
      name: json['name'] as String,
      role: json['role'] as String,
      gender: json['gender'] as String? ?? 'female',
      langCode: json['lang_code'] as String? ?? 'en-US',
      avatarColor: json['avatar_color'] as int?,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'dialogue_id': dialogueId,
      'name': name,
      'role': role,
      'gender': gender,
      'lang_code': langCode,
      'avatar_color': avatarColor,
    };
  }
}
