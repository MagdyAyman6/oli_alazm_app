import 'package:dartz/dartz.dart';

import '../../../../../core/utils/error/failure.dart';
import '../../models/religious_books_model.dart';

abstract class ReligiousBooksRepo {
  Future<Either<Failure, List<ReligiousBooks>>> fetchReligiousBooks();
}
