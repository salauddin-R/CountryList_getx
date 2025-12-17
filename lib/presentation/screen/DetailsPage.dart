import 'package:countrylist_getx/core/utils_style/style.dart';
import 'package:countrylist_getx/data/modelClass.dart';
import 'package:flutter/material.dart';

class HomeDetails extends StatelessWidget {
  final countryModel data;
  const HomeDetails(this.data);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(data.name,style:styleBig(colorBlack)),
            SizedBox(height: 15,),
            Container(
              height: 170,
              width: 250,
              child: Image.network("${data.flag}",fit: BoxFit.cover,),
            ),
            SizedBox(height: 15),
            Text(
              "Capital : ${data.capital},",
              style: styleMedium(colorBlack),
            ),
            SizedBox(height: 10),
            Text(
              " ${data.short_description}",
              style:styleSmall(colorBlack),
            ),
          ],
        ),
      ),
    );
  }
}
