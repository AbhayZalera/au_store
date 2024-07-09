

import 'package:intl/intl.dart';

class AFormatter {
  static String formatDate(DateTime? date) {
    date ??= DateTime.now();
    return DateFormat('dd-mm-yyyy').format(date);
  }

  static String formatCurrency(double amount) {
    return NumberFormat.currency(locale: 'en_US', symbol: '\$').format(amount);
  }

  static String formatPhoneNumber(String phoneNumber) {
    //Assuming a 10-Digits US Phone Number Formate: (123) 456-7890
    if (phoneNumber.length == 10) {
      return '(${phoneNumber.substring(0, 3)}) ${phoneNumber.substring(
          3, 6)} ${phoneNumber.substring(6)}';
    } else if (phoneNumber.length == 11) {
      return '(${phoneNumber.substring(0, 4)}) ${phoneNumber.substring(
          4, 7)} ${phoneNumber.substring(7)}';
    }
    return phoneNumber;
  }
}
//FOR THE INDIA
// import 'package:intl/intl.dart';
//
// class AFormatter {
//   static String formatDate(DateTime? date) {
//     date ??= DateTime.now();
//     return DateFormat('dd-MM-yyyy').format(date);
//   }
//
//   static String formatCurrency(double amount) {
//     return NumberFormat.currency(locale: 'en_IN', symbol: '₹').format(amount);
//   }
//
//   static String formatPhoneNumber(String phoneNumber) {
//     // Assuming a 10-Digits Indian Phone Number Format: +91 12345 67890
//     if (phoneNumber.length == 10) {
//       return '+91 ${phoneNumber.substring(0, 5)} ${phoneNumber.substring(5)}';
//     } else if (phoneNumber.length == 11 && phoneNumber.startsWith('0')) {
//       return '+91 ${phoneNumber.substring(1, 6)} ${phoneNumber.substring(6)}';
//     }
//     return phoneNumber;
//   }
// }


  // //Not fully tested
  // static String internationalFormatPhoneNumber(String phoneNumber){
  //   //Remove any non-digit character from the number
  //   var digitsOnly = phoneNumber.replaceAll(RegExp(r'\D'),'');
  //
  //   //Extract the country code from the digitsOnly
  //   String countryCode = '+${digitsOnly.substring(0,2)}';
  //   digitsOnly=digitsOnly.substring(2);
  //
  //   //ADd the remaining digits with proper formating
  //   final formattedNumber = StringBuffer();
  //   formattedNumber.write('($countryCode)');
  //
  //   int i = 0;
  //   while (i < digitsOnly.length){
  //     int groupLength = 3;
  //     if(i == 0 && countryCode == '+1'){
  //       groupLength = 3;
  //     }
  //     int end = i + groupLength;
  //     formattedNumber.write(digitsOnly.substring(i, end));
  //
  //
  //
  //   }
  // }
  //
  //
  //
  //
  //
//}