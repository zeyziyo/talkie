class Sentence {
  final int id;
  final int groupId;
  final String langCode;
  final String text;
  final String? note; // Disambiguation context (e.g. "노동" for "일")
  final String? authorId;
  final String status;
  final DateTime createdAt;

  Sentence({
    required this.id,
    required this.groupId,
    required this.langCode,
    required this.text,
    this.note,
    this.authorId,
    this.status = 'pending',
    required this.createdAt,
  });

  factory Sentence.fromJson(Map<String, dynamic> json) {
    return Sentence(
      id: json['id'] as int,
      groupId: json['group_id'] as int,
      langCode: json['lang_code'] as String,
      text: json['text'] as String,
      note: json['note'] as String?,
      authorId: json['author_id'] as String?,
      status: json['status'] as String? ?? 'pending',
      createdAt: DateTime.parse(json['created_at'] as String),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'group_id': groupId,
      'lang_code': langCode,
      'text': text,
      'note': note,
      'author_id': authorId,
      'status': status,
      'created_at': createdAt.toIso8601String(),
    };
  }
}
