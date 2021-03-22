import 'package:flutter/material.dart';

class UserItem extends StatelessWidget {
  final String name;
  final String lastName;
  final int age;

  const UserItem(
      {Key key,
      @required this.name,
      @required this.lastName,
      @required this.age})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      child: Card(
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(
                Icons.account_circle,
                size: 50.0,
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Nombre: $name",
                    style: Theme.of(context)
                        .textTheme
                        .headline6
                        .copyWith(fontSize: 17)),
                Text(
                  "Apellido: $lastName",
                  style: Theme.of(context)
                      .textTheme
                      .headline6
                      .copyWith(fontSize: 17),
                ),
                Text(
                  "Edad: $age",
                  style: Theme.of(context)
                      .textTheme
                      .headline6
                      .copyWith(fontSize: 17),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
