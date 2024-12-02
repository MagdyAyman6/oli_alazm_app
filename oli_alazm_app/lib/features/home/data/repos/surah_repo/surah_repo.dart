import 'package:dartz/dartz.dart';
import 'package:oli_alazm_app/core/utils/error/failure.dart';

import '../../models/surah_number_model.dart';

abstract class SurahRepo {
  Future<Either<Failure, List<Surah>>> fetchSurahList();
}
