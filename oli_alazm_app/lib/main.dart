import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:oli_alazm_app/core/utils/api_service.dart';
import 'package:oli_alazm_app/features/home/data/repos/khotab_repo/khotab_repo_impl.dart';
import 'package:oli_alazm_app/features/home/data/repos/religious_books_repo/religious_books_repo_impl.dart';
import 'package:oli_alazm_app/features/home/data/repos/surah_repo/surah_repo_impl.dart';
import 'package:oli_alazm_app/features/home/presentation/manager/khotab_cubit/khotab_cubit.dart';
import 'package:oli_alazm_app/features/home/presentation/manager/religious_books_cubit/religious_books_cubit.dart';
import 'package:oli_alazm_app/features/home/presentation/manager/surah_list/surah_list_cubit.dart';
import 'core/utils/app_router.dart';

main() {
  runApp(const OliAlazmApp());
}

class OliAlazmApp extends StatelessWidget {
  const OliAlazmApp({super.key});

  @override
  Widget build(BuildContext context) {
    // SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    //   statusBarColor: Colors.transparent,
    // ));
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              KhotabCubit(KhotabRepoImpl(ApiService(Dio())))..fetchKhotabList(),
        ),
        BlocProvider(
          create: (context) =>
              ReligiousBooksCubit(ReligiousBooksRepoImpl(ApiService(Dio())))
                ..fetchReligiousBooksList(),
        ),
        BlocProvider(
            create: (context) =>
                SurahListCubit(SurahRepoImpl(ApiService(Dio())))),
      ],
      child: MaterialApp.router(
        routerConfig: AppRouter.router,
        debugShowCheckedModeBanner: true,
      ),
    );
  }
}
