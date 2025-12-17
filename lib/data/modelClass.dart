import 'dart:convert';

class countryModel{
  final int id;
  final String name;
  final String capital;
  final String short_description;
  final String flag;
  countryModel({
  required this.id,
  required this.name,
  required this.capital,
  required this.short_description,
  required this.flag,
 });

  factory countryModel.fromJson(Map<String,dynamic> json){
    return countryModel(
        id:json["id"],
        name:json["name"],
        capital:json["capital"],
        short_description:json["short_description"],
        flag:json["flag"]
    );
  }

  static List<countryModel> fromJsonList(String JsonString){
    List data=json.decode(JsonString);
    return data.map((item)=>
      countryModel.fromJson(item)).toList();
  }
}