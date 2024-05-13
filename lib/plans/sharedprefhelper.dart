import 'package:adventurehub/plans/plans.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefHelper {
  late SharedPreferences sharedPreferencesObj;

  Future init() async {
    sharedPreferencesObj = await SharedPreferences.getInstance();
  }

  int getExistingCounter() {
    return sharedPreferencesObj.getInt("counter") ?? 1;
  }

  Future savePlansRecord(PlansActivity activity) async {
    await sharedPreferencesObj.setString(activity.id, activity.toJsonString());
    await sharedPreferencesObj.setInt("counter", getExistingCounter() + 1);
  }

  Future removePlansRecord(String id) async {
    await sharedPreferencesObj.remove(id);
  }

  List<PlansActivity> getAllPlansData() {
    List<PlansActivity> listPlans = [];
    var keys = sharedPreferencesObj.getKeys();

    for (var key in keys) {
      if (key != "counter") {
        var plansRecord = sharedPreferencesObj.getString(key) ?? "";
        PlansActivity obj = PlansActivity.fromJsonString(plansRecord);
        listPlans.add(obj);
      }
    }

    return listPlans;
  }
}
