library twilio.Voice;
import 'package:tlm_sms/resources/accounts.dart';

class Calls extends Accounts {
    String _resource;
    final String extension = ".json";
    Calls(String accountSid) {
        final String account = super.resource;
        _resource = "$account/$accountSid/Calls";
    }

    String getGetCallsLogResource() {
        return this._resource + "/" + extension;
    }

    String getPostMakeCallResource() {
        return this._resource + "/" + extension;
    }
}
