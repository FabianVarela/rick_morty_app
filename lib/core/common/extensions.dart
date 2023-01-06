extension MapX on Map<String, String> {
  String toGraphQuery() {
    if (isEmpty) return '{}';

    final queryBuilderBuffer = StringBuffer('{');
    forEach((key, value) => queryBuilderBuffer.write('$key: "$value",'));
    queryBuilderBuffer.write('}');

    return queryBuilderBuffer.toString();
  }
}
