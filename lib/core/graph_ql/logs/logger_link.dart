import 'dart:async';
import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:gql/language.dart';
import 'package:graphql/client.dart';

class LoggerLink extends Link {
  @override
  Stream<Response> request(Request request, [NextLink? forward]) {
    if (forward == null) return const Stream.empty();

    if (kDebugMode) {
      debugPrint('📤 GraphQL Request: ${request.operation.operationName}');
      debugPrint('📄 Query/Mutation: ${printNode(request.operation.document)}');
      debugPrint('🔄 Variables: ${_prettyJson(request.variables)}');
    }

    return forward(request)
        .map((fetchResult) {
          if (kDebugMode) {
            debugPrint(
              '✅ GraphQL Response Data: ${_prettyJson(fetchResult.data)}',
            );
            if (fetchResult.errors != null && fetchResult.errors!.isNotEmpty) {
              debugPrint('❌ GraphQL Response Errors: ${fetchResult.errors}');
            }
          }
          return fetchResult;
        })
        .handleError((Object error) {
          if (kDebugMode) debugPrint('❗️ GraphQL Request Error: $error');
          throw Exception(error);
        });
  }

  String _prettyJson(dynamic input) {
    try {
      return const JsonEncoder.withIndent('  ').convert(input);
    } catch (_) {
      return input.toString();
    }
  }
}
