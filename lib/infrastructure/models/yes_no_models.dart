import 'package:yes_no_app/domain/entities/messagem.dart';

class YesNoModels {
  String answer;
  bool forced;
  String image;

  YesNoModels({
    required this.answer,
    required this.forced,
    required this.image,
  });

  factory YesNoModels.fromJsonMap(Map<String, dynamic> json) => YesNoModels(
        answer: json['answer'],
        forced: json['forced'],
        image: json['image'],
      );

  Messagem toMessageEntity() => Messagem(
        text: answer == 'yes' ? 'Si' : 'No',
        fromWhon: FromWhon.hers,
        imageUrl: image,
      );
}
