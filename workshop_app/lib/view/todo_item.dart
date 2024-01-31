import 'package:flutter/material.dart';

import 'package:workshop_app/model/todo.dart'

class TodoItem extends StatelessWidget {
  const TodoItem({super.key, required this.todo});

  final Todo todo;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Card(
      child: ListTile(
        title: Text(todo.title),
        subtitle: Text(todo.desc),
        ),
    )
  }
}
