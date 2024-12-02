import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:oli_alazm_app/features/home/presentation/views/widgets/muhaffidhon_section_card.dart';
import 'package:oli_alazm_app/features/home/presentation/views/widgets/muhaffidhon_section_header.dart';

class MuhaffidhonSectionBuilder extends StatelessWidget {
  const MuhaffidhonSectionBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const MuhaffidhonSectionHeader(),
          const SizedBox(
            height: 10,
          ),
          Directionality(
            textDirection: TextDirection.rtl,
            child: SizedBox(
              height: 200,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 6,
                  itemBuilder: (context, index) => const MuhaffidhonSectionCard()),
            ),
          ),
        ],
      ),
    );
  }
}
