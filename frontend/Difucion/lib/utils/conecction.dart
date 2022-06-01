import 'package:hasura_connect/hasura_connect.dart';

class GraphqlConnection {
  static String servidor = 'https://difusionvi.ups.edu.ec/hasura/console';
  static String socket = 'ws://difusionvi.ups.edu.ec/hasura/console';

  HasuraConnect clientToQuery() {
    return HasuraConnect(
      servidor,
      headers: {
        'content-type': 'application/json',
        'x-hasura-admin-secret': 'socialsuite',
      },
    );
  }
}
