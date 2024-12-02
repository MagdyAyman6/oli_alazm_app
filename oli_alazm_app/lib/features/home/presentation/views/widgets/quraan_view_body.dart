import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:oli_alazm_app/features/home/presentation/views/widgets/custom_app_bar.dart';

class QuraanViewBody extends StatelessWidget {
  const QuraanViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomAppBar(title: "السُورَ"),
        // BlocBuilder(builder: ),
      ],
    );
  }
}
