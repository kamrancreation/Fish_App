import 'package:flutter_dotenv/flutter_dotenv.dart';

class AppConfig {
  static String get openWeatherMapApiKey => 
      dotenv.env['OPENWEATHER_API_KEY'] ?? '';
  
  static String get twilioAccountSid => 
      dotenv.env['TWILIO_ACCOUNT_SID'] ?? '';
  
  static String get twilioAuthToken => 
      dotenv.env['TWILIO_AUTH_TOKEN'] ?? '';
  
  static String get twilioPhoneNumber => 
      dotenv.env['TWILIO_PHONE_NUMBER'] ?? '';

  static Future<void> load() async {
    await dotenv.load(fileName: '.env');
  }

  static bool validateConfig() {
    if (openWeatherMapApiKey.isEmpty) {
      throw Exception('OpenWeather API key is not configured');
    }
    if (twilioAccountSid.isEmpty || 
        twilioAuthToken.isEmpty || 
        twilioPhoneNumber.isEmpty) {
      throw Exception('Twilio configuration is incomplete');
    }
    return true;
  }
}
