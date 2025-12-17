import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../core/utils_style/style.dart';
import '../getx/getxPage.dart';
import '../screen/DetailsPage.dart';

ListView listViewBuilder(getxPage gp){
  return ListView.builder(
      itemCount:gp.data.length,
      itemBuilder:(context,index){
        return Card(
          margin: EdgeInsets.only(top:8),
          color: colorWhite54,
          child: ListTile(
            leading: CircleAvatar(
              radius: 33,
              backgroundImage:NetworkImage("${gp.data[index].flag}"),
            ),
            title: Text("${gp.data[index].name}",style:styleMedium(colorBlack),),
            subtitle:Text("${gp.data[index].capital}",style:styleSmall(colorBlack)),
            trailing: Icon(Icons.arrow_forward),
            onTap: (){
             Get.to(()=>HomeDetails(gp.data[index]));
            },
            //onTap: ,
          ),
        );
      });
}