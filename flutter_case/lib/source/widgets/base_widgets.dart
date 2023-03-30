// import 'package:flutter/material.dart';
// import 'package:flutter_case/core/shared/ui_color.dart';
// import 'package:flutter_case/core/shared/ui_text.dart';
// import 'package:flutter_case/core/utils/app_utils.dart';

// class AppBarWidget extends StatelessWidget {
//   const AppBarWidget({
//     super.key,
//     required this.mediaQueryData,
//   });

//   final MediaQueryData mediaQueryData;

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.only(top: 20.0),
//       child: Container(
//         decoration: BoxDecoration(
//             borderRadius: const BorderRadius.only(
//               topLeft: Radius.elliptical(50.0, 40.0),
//               topRight: Radius.elliptical(50.0, 40.0),
//             ),
//             color: UIColor.white),
//         // height: mediaQueryData.size.height,
//         // width: mediaQueryData.size.width,
//         //margin: mediaQueryData.padding,
//         child: Column(
//           children: [
//             Padding(
//               padding: const EdgeInsets.only(left: 20.0, top: 12.0),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.start,
//                 children: [
//                   IconButton(
//                     onPressed: () => AppUtils.startPop(context),
//                     icon: Icon(
//                       Icons.arrow_back,
//                       color: UIColor.darkGray,
//                     ),
//                   ),
//                   Container(
//                     width: mediaQueryData.size.width * 0.18,
//                   ),
//                   Text(
//                     UIText.appBar,
//                     style: TextStyle(
//                       color: UIColor.appBarText,
//                       fontSize: 18,
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.only(
//                   left: 20.0, right: 20.0, top: 8.0, bottom: 8.0),
//               child: Divider(
//                 height: 1.0,
//                 thickness: 1.0,
//                 color: UIColor.appBarDivider,
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class ProfileTitle extends StatelessWidget {
//   const ProfileTitle({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container();
//   }
// }
