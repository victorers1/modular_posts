import 'package:dio/dio.dart';

/// FeedService
///
/// Responsable for making requests to an external service through REST APIs.
/// For better maintenancy, each function should receives everything they need
/// to work regardless the others. That is, try to not declare variables in this
/// scope.
/// This class should preferably be used only by Controllers.
///
/// Member functions should only:
/// 1 - Prepare body and headers needed
/// 2 - Make the request
/// 3 - Read and treat the response
/// 4 - Elaborate a return value and throw the apropriate exceptions
class FeedService {
  Dio dio = Dio(
    BaseOptions(
      baseUrl: 'https://jsonplaceholder.typicode.com',
      // connectTimeout: 5000,
      // receiveTimeout: 20000,
    ),
  );

  Future<List<dynamic>> getPosts(int userID) async {
    print('on FeedService > getPosts($userID)');
    Response resp;
    try {
      resp = await dio.get(userID == null ? '/posts' : '/posts?userID=$userID');
    } on DioError {
      rethrow;
    }
    return resp.data;
  }

  // Future<List<dynamic>> getComments(int postId) async {
  //   print('on FeedService > getComments($postId)');
  //   Response resp;
  //   try {
  //     resp = await dio
  //         .get(postId == null ? '/comments' : '/comments?postId=$postId');
  //   } on DioError {
  //     rethrow;
  //   }
  //   return resp.data;
  // }
}
