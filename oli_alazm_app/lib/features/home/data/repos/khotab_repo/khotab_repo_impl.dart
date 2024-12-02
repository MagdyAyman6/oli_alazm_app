import 'package:dartz/dartz.dart';
import 'package:oli_alazm_app/core/utils/api_service.dart';
import 'package:oli_alazm_app/features/home/data/models/khotab_model.dart';
import 'package:oli_alazm_app/features/home/data/repos/khotab_repo/khotab_repo.dart';

class KhotabRepoImpl implements KhotabRepo {
  final ApiService apiService;

  KhotabRepoImpl(this.apiService);

  @override
  Future<Either<String, List<Khotab>>> fetchKhotabList() async {
    // TODO: implement fetchKhotabList
    try {
      Map<String, dynamic> data = await apiService.get(
          baseUrl: "https://api3.islamhouse.com/v3",
          endPoint: "/paV29H2gm56kvLPy/main/khotab/ar/ar/1/25/json");
      List<Khotab> khotabList = [];
      for (var item in data["data"]) {
        khotabList.add(Khotab.fromJson(item));
      }
      return Right(khotabList);
    } catch (e) {
      // TODO
      return left(e.toString());
    }
  }
}
