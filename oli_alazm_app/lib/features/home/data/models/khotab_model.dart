class Khotab {
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
  final int numAttachments;
  final String importanceLevel;
  final String apiUrl;
  final List<dynamic> preparedBy;
  final List<dynamic> attachments;
  final List<dynamic> locales;

  Khotab({
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
    required this.numAttachments,
    required this.importanceLevel,
    required this.apiUrl,
    required this.preparedBy,
    required this.attachments,
    required this.locales,
  });

  // Factory method to create an instance from JSON
  factory Khotab.fromJson(Map<String, dynamic> json) {
    return Khotab(
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
      numAttachments: json['num_attachments'],
      importanceLevel: json['importance_level'],
      apiUrl: json['api_url'],
      preparedBy: json['prepared_by'],
      attachments: json['attachments'],
      locales: json['locales'],
    );
  }

  // Method to convert an instance to JSON
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
      'num_attachments': numAttachments,
      'importance_level': importanceLevel,
      'api_url': apiUrl,
      'prepared_by': preparedBy.map((item) => item.toJson()).toList(),
      'attachments': attachments.map((item) => item.toJson()).toList(),
      'locales': locales.map((item) => item.toJson()).toList(),
    };
  }
}

class PreparedBy {
  final int id;
  final String name;

  PreparedBy({
    required this.id,
    required this.name,
  });

  factory PreparedBy.fromJson(Map<String, dynamic> json) {
    return PreparedBy(
      id: json['id'],
      name: json['name'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
    };
  }
}

// Inner class: Attachment
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

// Inner class: Locale
class Locale {
  final String language;
  final String region;

  Locale({
    required this.language,
    required this.region,
  });

  factory Locale.fromJson(Map<String, dynamic> json) {
    return Locale(
      language: json['language'],
      region: json['region'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'language': language,
      'region': region,
    };
  }
}
