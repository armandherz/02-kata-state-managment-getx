import 'package:flutter/material.dart';
import 'package:state_managment_getx_practice/ui/pages/settings_page.dart';
import 'package:state_managment_getx_practice/ui/widgets/user_item.dart';

class UsersPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SettingsPage()));
                  },
                  child: Icon(Icons.settings),
                ),
              ),
            ],
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate((_, index) {
              return UserItem();
            }),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
    );
  }
}
