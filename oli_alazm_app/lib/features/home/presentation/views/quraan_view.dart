import 'package:flutter/material.dart';
import 'package:oli_alazm_app/features/home/presentation/views/widgets/quraan_view_body.dart';

class QuraanView extends StatelessWidget {
  const QuraanView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Directionality(
        textDirection: TextDirection.rtl, child: QuraanViewBody());
  }
}
