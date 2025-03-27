import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:template/domain/clients/github_client.dart';
import 'package:template/domain/github/github_repository.dart';
import 'package:template/domain/github/models/model.dart';
import 'package:template/domain/utils/result.dart';

import '../mocks.dart';

void main() {
  late GithubClient client;
  late GithubRepository repository;

  setUp(() {
    client = MockGithubClient();
    repository = GithubRepository(client);
  });

  const query = 'flutter';
  const page = 1;

  final repositoryJson = {
    "name": "flutter",
    "full_name": "flutter/flutter",
    "description": "Awesome Flutter repo",
    "html_url": "https://github.com/flutter/flutter",
    "created_at": "2018-01-01T00:00:00Z",
    "updated_at": "2024-01-01T00:00:00Z",
    "forks_count": 100,
    "owner": {
      "login": "flutter",
      "avatar_url": "https://avatars.githubusercontent.com/u/14101776?v=4",
      "html_url": "https://github.com/flutter",
    },
  };

  final mockResponseData = {
    "total_count": 100,
    "items": [repositoryJson],
  };

  test('returns ResultData on success', () async {
    when(
      () => client.get<Map<String, dynamic>>(
        any(),
        queryParameters: any(named: 'queryParameters'),
      ),
    ).thenAnswer(
      (_) async => Response(
        data: mockResponseData,
        statusCode: 200,
        requestOptions: RequestOptions(),
      ),
    );

    final result = await repository.searchRepositories(query, page: page);

    expect(result, isA<ResultData<RepositoryQueryResult>>());
    final data = (result as ResultData<RepositoryQueryResult>).value;
    final expected = RepositoryQueryResult(
      maxIndex: 4,
      items: [Repository.fromJson(repositoryJson)],
    );
    expect(data.items.length, 1);
    expect(data.maxIndex, 4);
    expect(data, expected);
  });

  test('returns ResultError on non-200 response', () async {
    when(
      () => client.get<Map<String, dynamic>>(
        any(),
        queryParameters: any(named: 'queryParameters'),
      ),
    ).thenAnswer(
      (_) async => Response(
        data: {},
        statusCode: 404,
        requestOptions: RequestOptions(),
      ),
    );

    final result = await repository.searchRepositories(query);

    expect(result, isA<ResultError>());
    expect(
      (result as ResultError).message,
      'Request failed with statuscode: 404',
    );
  });

  test('returns ResultError on exception', () async {
    when(
      () => client.get<Map<String, dynamic>>(
        any(),
        queryParameters: any(named: 'queryParameters'),
      ),
    ).thenThrow(Exception('network error'));

    final result = await repository.searchRepositories(query);

    expect(result, isA<ResultError>());
    expect(
      (result as ResultError).message,
      contains('Exception: network error'),
    );
  });
}
