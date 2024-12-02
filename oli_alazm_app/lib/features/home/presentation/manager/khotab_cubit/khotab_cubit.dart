import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:oli_alazm_app/features/home/data/repos/khotab_repo/khotab_repo_impl.dart';

import '../../../data/models/khotab_model.dart';

part 'khotab_state.dart';

class KhotabCubit extends Cubit<KhotabState> {
  KhotabCubit(this.khotabRepoImpl) : super(KhotabInitial());
  KhotabRepoImpl khotabRepoImpl ;

  Future <void> fetchKhotabList() async {
    emit(KhotabLoading());
    var result = await khotabRepoImpl.fetchKhotabList();
    result.fold((failure){
      emit(KhotabFailure(failure));
    }, (khotab){
      emit(KhotabSuccess(khotab));
    });
  }
}
