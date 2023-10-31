// import 'package:intl/date_symbol_data_local.dart';
// import 'package:intl/intl.dart';

// const String DD_MM_YYYY = 'yyyy-MM-dd kk:mm'; //'dd/MM/yyyy';

// extension DateTimeExtension on DateTime {
//   /// Return a string representing [date] formatted according to our locale
//   String format([String pattern = DD_MM_YYYY, String? locale]) {
//     if (locale != null && locale.isNotEmpty) {
//       initializeDateFormatting(locale);
//     }
//     try {
//       return DateFormat(pattern, locale).format(this);
//     } catch (e) {
//       rethrow;
//     }
//   }

//   /// Returns string representing [date] formatted in days:hrs:mins:secs
//   String waitingTime() {
//     int days = 0;
//     int hrs = 0;
//     int mins = 0;
//     int secs = 0;
//     Duration duration = DateTime.now().difference(this);
//     if (duration.inDays.abs() > 0) {
//       days = duration.inDays.abs();
//     }
//     int inHrs = duration.inHours.abs();
//     if (inHrs >= 24) {
//       hrs = inHrs % 24;
//     } else {
//       hrs = inHrs;
//     }
//     int inMins = duration.inMinutes.abs();
//     if (inMins >= 60) {
//       mins = inMins % 60;
//     } else {
//       mins = inMins;
//     }
//     int inSecs = duration.inSeconds.abs();
//     if (inSecs >= 60) {
//       secs = inSecs % 60;
//     } else {
//       secs = inSecs;
//     }
//     return "${days > 0 ? days > 9 ? "${days}days:" : "0$days${days > 1 ? 'days' : 'day'}:" : ""}${hrs > 0 ? hrs > 9 ? "${hrs}hrs:" : "0$hrs${hrs > 1 ? 'hrs' : 'hr'}:" : ''}${mins > 9 ? "${mins}mins${mins > 0 ? '' : ':'}" : "0$mins${mins > 1 ? 'mins${mins > 0 ? '' : ':'}' : 'min${mins > 0 ? '' : ':'}'}"}${mins > 0 ? '' : secs > 9 ? "${secs}secs" : "0$secs${secs > 1 ? 'secs' : 'sec'}"}";
//   }
// }

// // extension DateFormatting on DateTime {
// //   String formatDateToString() {
// //     try {
// //       return DateFormat('yyyy-MM-dd kk:mm').format(this);
// //     } catch (e) {
// //       rethrow;
// //     }
// //   }
// // }
