class Quran {
  final int id;
  final int sourceId;
  final String title;
  final String type;
  final int addDate;
  final int updateDate;
  final String description;
  final String? fullDescription;
  final String sourceLanguage;
  final String translatedLanguage;
  final String? image;
  final String apiUrl;
  final List<dynamic> preparedBy;
  final List<Attachment> attachments;
  final List<dynamic> locales;

  Quran({
    required this.id,
    required this.sourceId,
    required this.title,
    required this.type,
    required this.addDate,
    required this.updateDate,
    required this.description,
    this.fullDescription,
    required this.sourceLanguage,
    required this.translatedLanguage,
    this.image,
    required this.apiUrl,
    required this.preparedBy,
    required this.attachments,
    required this.locales,
  });

  factory Quran.fromJson(Map<String, dynamic> json) {
    return Quran(
      id: json['id'],
      sourceId: json['source_id'],
      title: json['title'],
      type: json['type'],
      addDate: json['add_date'],
      updateDate: json['update_date'],
      description: json['description'],
      fullDescription: json['full_description'],
      sourceLanguage: json['source_language'],
      translatedLanguage: json['translated_language'],
      image: json['image'],
      apiUrl: json['api_url'],
      preparedBy: json['prepared_by'] as List<dynamic>,
      attachments: (json['attachments'] as List)
          .map((item) => Attachment.fromJson(item))
          .toList(),
      locales: json['locales'] as List<dynamic>,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'source_id': sourceId,
      'title': title,
      'type': type,
      'add_date': addDate,
      'update_date': updateDate,
      'description': description,
      'full_description': fullDescription,
      'source_language': sourceLanguage,
      'translated_language': translatedLanguage,
      'image': image,
      'api_url': apiUrl,
      'prepared_by': preparedBy,
      'attachments': attachments.map((item) => item.toJson()).toList(),
      'locales': locales,
    };
  }
}

class Attachment {
  final int id;
  final String fileUrl;
  final String fileType;

  Attachment({
    required this.id,
    required this.fileUrl,
    required this.fileType,
  });

  factory Attachment.fromJson(Map<String, dynamic> json) {
    return Attachment(
      id: json['id'],
      fileUrl: json['file_url'],
      fileType: json['file_type'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'file_url': fileUrl,
      'file_type': fileType,
    };
  }
}
