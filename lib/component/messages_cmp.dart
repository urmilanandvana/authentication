import 'package:authentication/component/color_cmp.dart';
import 'package:fluttertoast/fluttertoast.dart';

toastMessage({required String message}) async {
  await Fluttertoast.showToast(
      msg: message,
      toastLength: Toast.LENGTH_LONG,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 1,
      backgroundColor: colorCmp.black,
      textColor: colorCmp.black,
      fontSize: 16.0);
}
