import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottomSheetLanguage extends StatelessWidget {
  const BottomSheetLanguage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: SafeArea(
        child: Wrap(
          children: [
            Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(child: Text('Languagens')),
            ),
            SizedBox(
              width: 50,
            ),
            ElevatedButton(
              onPressed: () {
                final newLocale = Locale('pt_PT');
                Get.updateLocale(newLocale);
                Get.back();
              },
              child: Text('Portugues'),
            ),
            SizedBox(
              width: 50,
            ),
            ElevatedButton(
              onPressed: () {
                final newLocale = Locale('en_US');
                Get.updateLocale(newLocale);
                Get.back();
              },
              child: Text('Ingles'),
            ),
            SizedBox(
              height: 50,
            ),
          ],
        ),
      ),
    );
  }
}
