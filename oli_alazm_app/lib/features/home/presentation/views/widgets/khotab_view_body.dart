import 'package:flutter/material.dart';
import 'package:oli_alazm_app/features/home/presentation/manager/khotab_cubit/khotab_cubit.dart';
import 'package:oli_alazm_app/features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../data/models/khotab_model.dart';
import 'khotab_list.dart';

class KhotabViewBody extends StatelessWidget {
  const KhotabViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomAppBar(
          title: ("خُطَب"),
          navBar: true,
        ),
        const SizedBox(
          height: 15,
        ),
        BlocBuilder<KhotabCubit, KhotabState>(
          builder: (BuildContext context, KhotabState state) {
            if (state is KhotabSuccess) {
              final List<Khotab> khotabList = state.khotabList;
              return KhotabList(khotabList: khotabList);
            } else if (state is KhotabFailure) {
              return Text(state.errMessage);
            }
            return const Center(
              child: CircularProgressIndicator(),
            );
          },
        ),
      ],
    );
  }
}
