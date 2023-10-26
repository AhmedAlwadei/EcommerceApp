import 'package:day59/services/networking/BaseProvider.dart';
import 'package:day59/shared/typedef.dart';

class ApiService {
  //مزود الشبكة الأساسي الذي تستخدمه فئة ApiService لإرسال الطلبات واستلام الردود.
  final BaseProvider _baseProvider;

  ApiService(this._baseProvider);

  Future<JSON> get<T>({
    //عنوان URL النهائي لخدمة API.
    required String endpoint,
    JSON? query,
    Map<String, String>? headers,
    bool requiresAuthToken = false,
  }) async {
    var customHeaders = {
      'Accept': 'application/json',
      requiresAuthToken ? 'Authorization': '' : '',
    };

    if (headers != null) {
      customHeaders.addAll(headers);
    }

    final response = await _baseProvider.get(
      endpoint,
      headers: customHeaders,
      query: query
    );

    return response.body;
  }

  Future<JSON> post<T>({
    required String endpoint,
    JSON? body,
    JSON? query,
    Map<String, String>? headers,
    bool requiresAuthToken = false,
  }) async {
    var customHeaders = {
      'Accept': 'application/json',
      requiresAuthToken ? 'Authorization': '' : '',
    };

    if (headers != null) {
      customHeaders.addAll(headers);
    }

    final response = await _baseProvider.post(
      endpoint,
      body,
      headers: customHeaders,
      query: query
    );

    return response.body;
  }

  Future<JSON> put<T>({
    required String endpoint,
    JSON? body,
    JSON? query,
    Map<String, String>? headers,
    bool requiresAuthToken = false,
  }) async {
    var customHeaders = {
      'Accept': 'application/json',
      requiresAuthToken ? 'Authorization': '' : '',
    };

    if (headers != null) {
      customHeaders.addAll(headers);
    }

    final response = await _baseProvider.put(
      endpoint,
      body,
      headers: customHeaders,
      query: query
    );

    return response.body;
  }
  
  Future<JSON> delete<T>({
    required String endpoint,
    JSON? body,
    JSON? query,
    Map<String, String>? headers,
    bool requiresAuthToken = false,
  }) async {
    var customHeaders = {
      'Accept': 'application/json',
      requiresAuthToken ? 'Authorization': '' : '',
    };

    if (headers != null) {
      customHeaders.addAll(headers);
    }

    final response = await _baseProvider.delete(
      endpoint,
      headers: customHeaders,
      query: query
    );

    return response.body;
  }
}
