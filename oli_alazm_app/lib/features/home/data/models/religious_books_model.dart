class ReligiousBooks {
  final int? id; // Allow null
  final int? sourceId; // Allow null
  final String title;
  final String type;
  final int? addDate; // Allow null
  final int? updateDate; // Allow null
  final String? description;
  final String? fullDescription;
  final String sourceLanguage;
  final String translatedLanguage;
  final String? image;
  final int? numAttachments; // Allow null
  final String importanceLevel;
  final String apiUrl;
  final PreparedBy? preparedBy; // Allow null
  final Attachment? attachment; // Allow null

  ReligiousBooks({
    this.id,
    this.sourceId,
    required this.title,
    required this.type,
    this.addDate,
    this.updateDate,
    this.description,
    this.fullDescription,
    required this.sourceLanguage,
    required this.translatedLanguage,
    this.image,
    this.numAttachments,
    required this.importanceLevel,
    required this.apiUrl,
    this.preparedBy,
    this.attachment,
  });

  // Factory constructor for creating an instance from a JSON map
  factory ReligiousBooks.fromJson(Map<String, dynamic> json) {
    return ReligiousBooks(
      id: json['id'] as int?,
      sourceId: json['source_id'] as int?,
      title: json['title'] as String,
      type: json['type'] as String,
      addDate: json['add_date'] as int?,
      updateDate: json['update_date'] as int?,
      description: json['description'] as String?,
      fullDescription: json['full_description'] as String?,
      sourceLanguage: json['source_language'] as String,
      translatedLanguage: json['translated_language'] as String,
      image: json['image'] as String?,
      numAttachments: json['num_attachments'] as int?,
      importanceLevel: json['importance_level'] as String,
      apiUrl: json['api_url'] as String,
      preparedBy: json['prepared_by'] != null
          ? PreparedBy.fromJson(json['prepared_by'][0])
          : null,
      attachment: json['attachments'] != null && json['attachments'].isNotEmpty
          ? Attachment.fromJson(json['attachments'][0])
          : null,
    );
  }

  // Convert instance to JSON map
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
      'prepared_by': preparedBy != null ? [preparedBy!.toJson()] : null,
      'attachments': attachment != null ? [attachment!.toJson()] : null,
    };
  }
}

class PreparedBy {
  final int? id; // Allow null
  final int? sourceId; // Allow null
  final String title;
  final String type;
  final String kind;
  final String? description;
  final String apiUrl;

  PreparedBy({
    this.id,
    this.sourceId,
    required this.title,
    required this.type,
    required this.kind,
    this.description,
    required this.apiUrl,
  });

  // Factory constructor for creating an instance from a JSON map
  factory PreparedBy.fromJson(Map<String, dynamic> json) {
    return PreparedBy(
      id: json['id'] as int?,
      sourceId: json['source_id'] as int?,
      title: json['title'] as String,
      type: json['type'] as String,
      kind: json['kind'] as String,
      description: json['description'] as String?,
      apiUrl: json['api_url'] as String,
    );
  }

  // Convert instance to JSON map
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'source_id': sourceId,
      'title': title,
      'type': type,
      'kind': kind,
      'description': description,
      'api_url': apiUrl,
    };
  }
}

class Attachment {
  final int? order; // Allow null
  final String size;
  final String extensionType;
  final String description;
  final String url;

  Attachment({
    this.order,
    required this.size,
    required this.extensionType,
    required this.description,
    required this.url,
  });

  // Factory constructor for creating an instance from a JSON map
  factory Attachment.fromJson(Map<String, dynamic> json) {
    return Attachment(
      order: json['order'] as int?,
      size: json['size'] as String,
      extensionType: json['extension_type'] as String,
      description: json['description'] as String,
      url: json['url'] as String,
    );
  }

  // Convert instance to JSON map
  Map<String, dynamic> toJson() {
    return {
      'order': order,
      'size': size,
      'extension_type': extensionType,
      'description': description,
      'url': url,
    };
  }
}
