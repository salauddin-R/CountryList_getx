import 'package:flutter/material.dart';
import '../../core/utils_style/style.dart';
import 'package:get/get.dart';
import '../getx/getxPage.dart';
import '../widget/listView.dart';

class Homepage extends StatelessWidget {
   Homepage({super.key});
   final getxPage gp=Get.put(getxPage());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Country  App",style:styleBig(colorWhite),),
        centerTitle:true,
        backgroundColor:colorGreen,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            TextField(
                onChanged: gp.searchData,
                decoration:InputDecoration(
                    fillColor:colorGrey,
                    filled: true,
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue,width: 2),
                    ),
                    disabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.blue,width: 2),)
                )
            ),
            Expanded(
              child:Obx(()=>gp.loading.value?Center(child: CircularProgressIndicator(),)
                  :gp.data.isEmpty?Center(child: Text("There is no Country",style: styleBig(colorBlack),),)
                  :listViewBuilder(gp),
            ))
            //RefreshIndicator(child: child, onRefresh: onRefresh),
          ],
        ),
      ),
    );
  }
}
