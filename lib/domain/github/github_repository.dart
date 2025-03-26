import 'package:template/domain/clients/github_client.dart';
import 'package:template/domain/github/models/model.dart';
import 'package:template/domain/utils/result.dart';

class GithubRepository {
  final GithubClient _client;

  GithubRepository(this._client);

  Future<Result<List<Repository>>> searchRepositories(String query) async {
    try {
      final response = await _client.get<Map<String, dynamic>>(
        'search/repositories',
        queryParameters: {'q': query},
      );

      if (response.statusCode != 200) {
        return ResultError(
          'Request failed with statuscode: ${response.statusCode}',
        );
      }

      final data = response.data;
      final List items = data!['items'];

      final repositories = items
          .map(
            (e) => Repository.fromJson(e),
          )
          .toList();

      return ResultData<List<Repository>>(repositories);
    } catch (e) {
      return ResultError(e.toString());
    }
  }
}
