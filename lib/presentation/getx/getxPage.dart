import 'package:get/get.dart';
import '../../core/Network/apiClient.dart';
import '../../data/modelClass.dart';

class getxPage extends GetxController{
  RxList<countryModel> data=<countryModel>[].obs;
  RxBool loading=false.obs;

  @override
  void onInit() {
    callData();
    super.onInit();
  }
  void searchData(String name)async{
    List<countryModel> item=await  CountrySearchRequest(name);
      data.value=item;
  }
  void callData()async{
    loading.value=true;
    List<countryModel> item=await CountryListApiRequest();
      data.value=item;
    loading.value=false;
  }
}