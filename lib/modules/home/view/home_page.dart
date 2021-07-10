import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:structure_getx/modules/home/controller/home_controller.dart';
import 'package:structure_getx/modules/shared/BottomSheetLanguage.dart';

class HomePage extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('home_title'.tr),
        centerTitle: false,
        actions: [
          TextButton(
            onPressed: () {
              Get.bottomSheet(BottomSheetLanguage());
            },
            child: Text(
              'languege_name'.tr,
              style: TextStyle(color: Colors.black),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Obx(
                //Para que o Getx atualize o item na view, é preciso envolvelo em um Obx..
                //Assim sempre que o item mudar, ele atualiza a view
                () => Text('${controller.count.value}'),
              ),
              IconButton(
                  onPressed: () => controller.count.value++,
                  icon: Icon(Icons.add))
            ],
          ),
          Divider(),
          SizedBox(
            height: 10,
          ),
          Expanded(
            child: controller.obx(
              (list) => ListView.builder(
                itemCount: list!.length,
                itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.blueGrey,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: Text(
                        '${list[index]}',
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
              ),
              // onError: (error) => Container(), Aqui pode setar um widget de escolha para erro
              // onLoading: Container(),  Aqui pode setar um widget de escolha para Loading
            ),
          )
        ],
      ),
    );
  }
}
