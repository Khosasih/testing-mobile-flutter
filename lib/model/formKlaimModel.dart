class FormValueModel {
  final String namaPengemudi;
  final String lainLain;
  final String kejadian;
  final String lainLain2;

  FormValueModel({
    required this.namaPengemudi,
    required this.lainLain,
    required this.kejadian,
    required this.lainLain2,
  });
}

class FormValueFotoModel {
  final String photoUrl;

  FormValueFotoModel({
    required this.photoUrl,
  });
}

class FormValueKlaimModel {
  final String photoUrl;
  final String description;

  FormValueKlaimModel({
    required this.photoUrl,
    required this.description,
  });
}
