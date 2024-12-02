import 'package:flutter/material.dart';
import 'package:oli_alazm_app/core/utils/app_color.dart';
import 'package:oli_alazm_app/features/home/presentation/views/widgets/muhaffidh_card_content.dart';
import 'package:oli_alazm_app/features/home/presentation/views/widgets/muhaffidh_image_builder.dart';

class MuhaffidhonSectionCard extends StatelessWidget {
  const MuhaffidhonSectionCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      child: ClipRRect(
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(12),
          bottomRight: Radius.circular(12),
        ),
        child: Container(
          height: 190,
          width: 165,
          decoration: const BoxDecoration(
            color: AppColor.kPrimaryColor,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(12), topRight: Radius.circular(12)),
          ),
          child: const Column(
            children: [
              MuhaffidhImageBuilder(),
              MuhaffidhCardContent(),
            ],
          ),
        ),
      ),
    );
  }
}
