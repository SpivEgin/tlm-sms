library tlm_sms.test.twilio_test;

import 'package:unittest/unittest.dart';
import 'package:tlm_sms/twilio.dart';

void main() {
    group('Object Setup :: ', () {
        var key = "12345";
        var authToken = "12345";
        var version = "2010-04-01";

        test("New instance of Twilio is created", () {
            var twilio = new Twilio(key, authToken, version);
            expect(twilio is Twilio, isTrue);
        });
        test("New instance of Twilio is created with format specified", () {
            var twilio = new Twilio(key, authToken, version);
            expect(twilio is Twilio, isTrue);
        });
    });
}
