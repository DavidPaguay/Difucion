import 'package:hasura_connect/hasura_connect.dart';

class GraphqlConnection {
  static String servidor = ' ';
  static String socket = ' ';

  HasuraConnect clientToQuery() {
    return HasuraConnect(
      servidor,
      headers: {
        'content-type': 'application/json',
        'x-hasura-admin-secret': ' ',
      },
    );
  }
}
