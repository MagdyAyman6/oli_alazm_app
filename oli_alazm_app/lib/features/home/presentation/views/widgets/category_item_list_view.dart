import 'package:flutter/material.dart';
import 'package:oli_alazm_app/core/utils/assets.dart';
import 'package:oli_alazm_app/features/home/presentation/views/widgets/category_item.dart';

class CategoryItemListView extends StatelessWidget {
  const CategoryItemListView({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> categoryListImg = [
      AssetsData.quranImg,
      AssetsData.hadithImg,
      AssetsData.prayImg,
      AssetsData.calenderImg,
    ];

    final List<String> categoryListTitle = [
      'قرآن',
      'حديث',
      'الصلاة',
      'التقويم',
    ];

    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Flexible(
          child: SizedBox(
            height: 90,
            width: double.infinity,
            child: ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemCount: categoryListImg.length,
              reverse: true,
              itemBuilder: (context, index) => CategoryItem(
                onTap: () {},
                image: categoryListImg[index],
                title: categoryListTitle[index],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
