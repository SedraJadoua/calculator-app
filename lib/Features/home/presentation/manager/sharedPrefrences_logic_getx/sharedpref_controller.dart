
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedprefContorller   extends GetxController{
   String rkey = 'result';
  String ekey = 'equation';
    RxList<String> resultList = [''].obs;
  RxList<String> equationList = [''].obs;
    final Rx<Future<SharedPreferences>> _prefs =
      SharedPreferences.getInstance().obs;


     
  Future<void> setResult(List<String> result) async {
    final SharedPreferences prefs = await _prefs.value;
    await prefs.setStringList(rkey, result);
  }

   setEquation(List<String> resultList) async {
    final SharedPreferences prefs = await _prefs.value;
    await prefs.setStringList(ekey, resultList);
  }

  Future<List<String>> getListResult() async {
    final SharedPreferences prefs = await _prefs.value;
    if (prefs.getStringList(rkey) == null) return [];

    return await prefs.getStringList(rkey)!;
  }


  Future<List<String>> getListEquation() async {
    final SharedPreferences prefs = await _prefs.value;
    if (prefs.getStringList(rkey) == null) return [];
    return await prefs.getStringList(ekey)!;
  }




  Future<void> clearSharedPreferencesData() async {
    final SharedPreferences prefs = await _prefs.value;
    
    resultList.value = [];
    equationList.value = [];
    await prefs.clear();
    update();
    
  }
    updatelists(RxString result , RxString equation){
         if(!(equationList.contains(equation.value)))
          {  
        resultList.add(result.value);
        equationList.add(equation.value);
        setEquation(equationList);
        setResult(resultList);
        }
    }
}