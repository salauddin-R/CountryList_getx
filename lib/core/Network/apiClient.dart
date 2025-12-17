import 'package:http/http.dart'as http;
import '../../data/modelClass.dart';
import '../utils_style/utils.dart';
import 'api_endpoint.dart';

Future<List<countryModel>> CountryListApiRequest()async{
  var url=Uri.parse("${api_endPoind.baseUrl}/${api_endPoind.listEndPoint}");
  var jsonHeader={"Content-Type":"application/json"};
  try{
    var response=await http.get(url,headers:jsonHeader);
    if(response.statusCode==200){
      SuccessToast("CountryList Api Call Successful");
      return countryModel.fromJsonList(response.body);
    }
    else{
      return [];
    }
  }catch(e){
    throw Exception("CountryList Api Call Failed & Exception is: $e");
  }
}

Future<List<countryModel>> CountrySearchRequest(String name)async{
  var url=Uri.parse("${api_endPoind.baseUrl}/${api_endPoind.searchEndPoint}$name");
  var jsonHeader={"Content-Type":"application/json"};
  try{
    var response=await http.get(url,headers:jsonHeader);
    if(response.statusCode==200){
      return countryModel.fromJsonList(response.body);
    }
    else{
      ErrorToast("CountryList Api Call Failed");
      return [];
    }
  }catch(e){
    throw Exception("CountryList Api Call Failed & Exception is: $e");
  }
}