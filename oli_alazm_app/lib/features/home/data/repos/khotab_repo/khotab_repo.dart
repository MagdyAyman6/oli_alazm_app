import 'package:dartz/dartz.dart';

import '../../models/khotab_model.dart';

abstract class KhotabRepo {
  Future<Either<String, List<Khotab>>> fetchKhotabList();
}
