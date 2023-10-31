// import 'package:flutter/material.dart';
// import '../app_export.dart';

// ///common method for showing progress dialog
// void showProgressDialog({bool isCancellable = false, Widget? loader}) async {
//   loader ??
//       Get.dialog(
//         WillPopScope(
//           onWillPop: () async => isCancellable,
//           child: Center(
//             child: CircularProgressIndicator.adaptive(
//               strokeWidth: 4,
//               valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
//             ),
//           ),
//         ),
//         barrierDismissible: isCancellable,
//       );
//   // isProgressVisible = true;
// }

// ///show bottom sheet
// void showGetBottomSheet(Widget bottomsheet, {bool isDismissible = false}) =>
//     Get.bottomSheet(bottomsheet,
//         backgroundColor: ColorConstant.gray20002, isDismissible: isDismissible);

// ///show snackbar
// void snackbar(String text) => ScaffoldMessenger.of(Get.context!)
//     .showSnackBar(SnackBar(content: Text(text)));

// void pop<T>() {
//   Get.back();
// }

// showCustomDialog(
//     {required String msg,
//     required Function onTap,
//     bool showNo = true,
//     bool isCancellable = false}) async {
//   Get.dialog(
//     AlertDialog(
//       content: Text(msg),
//       actions: [
//         if (showNo) TextButton(onPressed: () => pop(), child: Text('No')),
//         TextButton(
//           onPressed: () => onTap(),
//           child: Text(showNo ? 'Yes' : 'Ok'),
//         ),
//       ],
//     ),
//     barrierDismissible: isCancellable,
//   );
// }
