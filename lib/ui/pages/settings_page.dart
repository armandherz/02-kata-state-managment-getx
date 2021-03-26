import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:state_managment_getx_practice/src/stateControllers/settings_getx.dart';
import 'package:state_managment_getx_practice/src/themes/my_themes.dart';

class SettingsPage extends StatelessWidget {
  final settinsCtrl = Get.put(SettingsGetx(), permanent: true);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ajustes"),
      ),
      backgroundColor: Theme.of(context).backgroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Nombre",
                        style: Theme.of(context).textTheme.headline6,
                      ),
                      TextField(
                        onChanged: (t) {
                          settinsCtrl.setName = t;
                        },
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Apellido",
                        style: Theme.of(context).textTheme.headline6,
                      ),
                      TextField(
                        onSubmitted: (t) {
                          settinsCtrl.setLastName = t;
                        },
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 50.0,
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Obx(
                          () => Text(
                            "Nombre: ${settinsCtrl.name}",
                            style: Theme.of(context).textTheme.headline6,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Obx(
                          () => Text(
                            "Apellido: ${settinsCtrl.lastName}",
                            style: Theme.of(context).textTheme.headline6,
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 50.0,
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: 60.0,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Tema oscuro",
                          style: Theme.of(context).textTheme.headline6,
                        ),
                        ToggleButtons(
                          children: [
                            Icon(Icons.invert_colors),
                          ],
                          isSelected: [true],
                          onPressed: (index) {
                            settinsCtrl.setTheme = !settinsCtrl.theme;
                            Get.changeThemeMode(settinsCtrl.theme
                                ? ThemeMode.dark
                                : ThemeMode.light);
                          },
                          selectedColor: Colors.green,
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(100.0),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
