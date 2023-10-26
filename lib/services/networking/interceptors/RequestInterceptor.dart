  import 'dart:async';
//تستورد مكتبة تُساعد على تحديد نوع البيانات الخاص بالطلبات.
import 'package:get/get_connect/http/src/request/request.dart';
//للتعامل مع الطلبات الصادرة قبل إرسالها إلى الخادم.
//الدالة تستخدم لتعديل أو مراقبة الطلبات الصادرة.
FutureOr<Request> requestInterceptor(request) async {
  print('requestInterceptor START /////////////////');
  print('               Method: ${request.method}');
  print('               Url: ${request.url}');
  print('               Headers: ${request.headers}');
  print('requestInterceptor END /////////////////');
  
  return request;
}
