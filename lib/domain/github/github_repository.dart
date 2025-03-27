import 'package:template/domain/clients/github_client.dart';
import 'package:template/domain/github/models/model.dart';
import 'package:template/domain/utils/result.dart';

class GithubRepository {
  final GithubClient _client;

  GithubRepository(this._client);

  Future<Result<RepositoryQueryResult>> searchRepositories(
    String query, {
    int page = 1,
  }) async {
    try {
      final int perPage = 25;
      final response = await _client.get<Map<String, dynamic>>(
        'search/repositories',
        queryParameters: {
          'q': query,
          'page': page,
          'per_page': perPage,
        },
      );

      if (response.statusCode != 200) {
        return ResultError(
          'Request failed with statuscode: ${response.statusCode}',
        );
      }
      // Get repositories
      final data = response.data!;
      final List items = data['items'];
      final repositories = items.map((e) => Repository.fromJson(e)).toList();

      // Calculate max index
      final totalCount = data['total_count'] as int;
      const maxItems = 1000;
      final cappedTotal = totalCount > maxItems ? maxItems : totalCount;
      final maxIndex = (cappedTotal / perPage).ceil();

      return ResultData(
        RepositoryQueryResult(maxIndex: maxIndex, items: repositories),
      );
    } catch (e) {
      return ResultError(e.toString());
    }
  }
}
