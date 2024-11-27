import 'package:dio/dio.dart';
import 'package:yes_no_app/domain/entities/messagem.dart';
import 'package:yes_no_app/infrastructure/models/yes_no_models.dart';

class GetYesNoAnswer {
  final _dio = Dio();
  Future<Messagem> getAnswer() async {
    final response = await _dio.get('https://yesno.wtf/api');

    final yesNoModels = YesNoModels.fromJsonMap(response.data);

    return yesNoModels.toMessageEntity();
  }
}
