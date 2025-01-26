import 'package:authentication/component/color_cmp.dart';
import 'package:authentication/component/text_cmp.dart';
import 'package:flutter/material.dart';

Widget iconWithText({
  required BuildContext context,
  required String title,
  required String iconPath,
  required void Function()? onTap,
}) {
  return GestureDetector(
    onTap: onTap,
    child: Container(
      height: 50,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: colorCmp.grey.withOpacity(0.5))),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            iconPath,
            height: 30,
            width: 30,
            fit: BoxFit.cover,
          ),
          const SizedBox(width: 10),
          Flexible(
            child: text(
                value: title,
                fontSize: 14,
                color: colorCmp.black,
                fontWeight: FontWeight.w600,
                overflow: TextOverflow.ellipsis),
          ),
        ],
      ),
    ),
  );
}

primaryButton({
  required BuildContext context,
  required String title,
  required VoidCallback onTap,
}) {
  return GestureDetector(
    onTap: onTap,
    child: Container(
      height: 50,
      alignment: Alignment.center,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30), color: colorCmp.yellowShade),
      child: text(
        value: title,
        color: colorCmp.white,
        fontSize: 14,
        fontWeight: FontWeight.w500,
      ),
    ),
  );
}
