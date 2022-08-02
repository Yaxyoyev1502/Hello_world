import 'package:flutter/material.dart';

class ToDoList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemBuilder: (
          ctx,
          index,
        ) {
          return ListTile(
            contentPadding: EdgeInsets.symmetric(
              horizontal: 6.0,
            ),
            leading: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.circle_outlined,
              ),
            ),
            title: Text(
              "Bozorga borish",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w600,
              ),
            ),
            trailing: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.delete_forever_rounded,
                  size: 20,
                )),
          );
        },
        itemCount: 5,
      ),
    );
  }
}
