import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:state_managment_getx_practice/src/stateControllers/users_getx.dart';
import 'package:state_managment_getx_practice/ui/pages/settings_page.dart';
import 'package:state_managment_getx_practice/ui/widgets/user_item.dart';

class UsersPage extends StatelessWidget {
  final setCtrl = Get.put(UsersGetx());
  @override
  Widget build(BuildContext context) {
    return GetBuilder<UsersGetx>(
      initState: (state) {},
      builder: (_) => Scaffold(
        backgroundColor: Theme.of(context).backgroundColor,
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              flexibleSpace: FlexibleSpaceBar(
                title: Text("Title"),
                titlePadding: EdgeInsets.only(left: 20.0, bottom: 16),
              ),
              expandedHeight: 200.0,
              actions: [
                SizedBox(
                  width: 60.0,
                  height: 60.0,
                  child: MaterialButton(
                    onPressed: () {
                      Get.to(SettingsPage(),
                          transition: Transition.rightToLeft);
                    },
                    child: Icon(Icons.settings),
                  ),
                ),
              ],
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (_, index) {
                  return UserItem(
                    name: setCtrl.users[index].name,
                    lastName: setCtrl.users[index].lastName,
                    age: int.parse(setCtrl.users[index].age),
                  );
                },
                childCount: setCtrl.users.length,
              ),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            showInputDialog(context);
          },
          child: Icon(Icons.add),
        ),
      ),
    );
  }

  void showInputDialog(context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        content: SingleChildScrollView(
          child: Container(
            height: 250.0,
            child: Column(
              children: [
                TextField(controller: setCtrl.inputName),
                TextField(controller: setCtrl.inputLastName),
                TextField(controller: setCtrl.inputAge),
              ],
            ),
          ),
        ),
        actions: [
          ElevatedButton(
              child: Text("Save"),
              onPressed: () {
                setCtrl.addNewUser();
              }),
        ],
      ),
    );
  }
}
