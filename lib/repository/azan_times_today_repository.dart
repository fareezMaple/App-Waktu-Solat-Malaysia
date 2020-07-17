import 'package:waktusolatmalaysia/models/azanproapi.dart';
import 'package:waktusolatmalaysia/networking/ApiProvider.dart';

class AzanTimesTodayRepository {
  ApiProvider _provider = ApiProvider();

  Future<PrayerTime> fetchAzanToday(String category) async {
    final response = await _provider.get("times/today.json?zone=" + category);
    return PrayerTime.fromJson(response);
  }
}
