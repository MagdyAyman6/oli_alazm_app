// import 'package:flutter/gestures.dart';
// import 'package:flutter/material.dart';
//
// import 'custom_app_bar.dart';
//
// class SurahViewBody extends StatelessWidget {
//   const SurahViewBody({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.center,
//       children: [
//         CustomAppBar(
//           title: surahsList.name,
//         ),
//         Expanded(
//           child: SingleChildScrollView(
//             padding: const EdgeInsets.all(16),
//             child: RichText(
//               text: TextSpan(
//                 children: List.generate(
//                   widget.surahList.ayahs.length,
//                       (index) {
//                     final ayah = widget.surahList.ayahs[index];
//                     // final isCurrentAyah = _currentAyah == index + 1;
//
//                     // Highlight the Ayah if it is the last read position
//                     return TextSpan(
//                       text: '${ayah.text} \uFD3F${index + 1}\uFD3E ',
//                       style: TextStyle(
//                         fontSize: 20,
//                         color: isCurrentAyah ? Colors.blue : Colors.black,
//                         height: 1.5,
//                       ),
//                       recognizer: TapGestureRecognizer()
//                         ..onTap = () {
//                           // Mark the current Ayah when tapped
//                         },
//                     );
//                   },
//                 ),
//               ),
//             ),
//           ),
//         ),
//       ],
//     );
//   }
//   }
// }
