import 'package:flutter/material.dart';

class AppDialog {
  static void showConfirmDialog(BuildContext context, String content, Function() onPress, {String? title, String? textBtn}) {
    showDialog(context: context, builder: (context) => AlertDialog(
      title: Text(title ?? "Thông báo", style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),),
      content: Text(content, style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w500),),
      actions: [
        TextButton(onPressed: onPress, child: Text(textBtn ?? "Đóng", style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),))
      ],
    ));
  }
}