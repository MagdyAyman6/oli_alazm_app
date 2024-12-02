import 'package:flutter/material.dart';
import 'package:oli_alazm_app/features/home/presentation/views/widgets/khotab_view_body.dart';

class KhotabView extends StatelessWidget {
  const KhotabView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        // backgroundColor: Colors.transparent,
        body: SafeArea(
            child: Directionality(
                textDirection: TextDirection.rtl,
                child: KhotabViewBody())));
  }
}
