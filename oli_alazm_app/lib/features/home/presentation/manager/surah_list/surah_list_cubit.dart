import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:oli_alazm_app/features/home/data/repos/surah_repo/surah_repo.dart';

import '../../../data/models/surah_number_model.dart';

part 'surah_list_state.dart';

class SurahListCubit extends Cubit<SurahListState> {
  SurahListCubit(this.surahRepo) : super(SurahListInitial());
  final SurahRepo surahRepo;

  Future<void> fetchSurahList() async {
    var result = await surahRepo.fetchSurahList();
    result.fold((failure) {
      emit(SurahListFailure(failure.errMessage));
    }, (surahList) {
      if (surahList.isEmpty) {
        emit(SurahListFailure("No Data"));
      } else {
        emit(SurahListSuccess(surahList));
      }
    });
  }
}
