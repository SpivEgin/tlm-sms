library twilio.utils.utils;
import 'dart:async';
import 'package:http/http.dart' as http;
import 'http_headers.dart';

Future apiRequest(String resource, http.Client httpClient, Map auth, {String verb : 'GET', Map<String, String> body : null}) {
    var url = buildAuthUrl(resource, auth).toString();
    var request = new http.Request(verb, Uri.parse(url));
    request.headers[HttpHeaders.USER_AGENT] = 'tlm-sms';
    if (body != null && body.isNotEmpty) {
        request.bodyFields = body;
    }
    return httpClient.send(request).then((response) => response.stream.bytesToString().then((value) => value.toString()));
}

String buildAuthUrl(String resource, Map auth) {
    return 'https://' + auth['accountSid'] + ':' + auth['authToken'] + '@' + auth['baseUri'] + '/' + auth['apiVersion'] + '/' + resource;
}
