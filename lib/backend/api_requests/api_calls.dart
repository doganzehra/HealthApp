import '../../flutter_flow/flutter_flow_util.dart';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

class SendInfoToHerokuCall {
  static Future<ApiCallResponse> call({
    String date = '',
    String uid = '',
    String semptom = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'sendInfoToHeroku',
      apiUrl:
          'https://apriori-api.herokuapp.com/getResult?uid=${uid}&date=${date}&semptom=${semptom}',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
    );
  }
}
