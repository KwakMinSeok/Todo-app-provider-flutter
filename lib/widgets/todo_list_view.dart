import 'package:flutter/material.dart';
import 'package:todos/models/todo_model.dart';
import 'package:todos/widgets/todo_list_item.dart';

class TodoListView extends StatelessWidget {
  final List<Todo> todos;

  const TodoListView({Key key, this.todos}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemBuilder: (BuildContext context, int index) => TodoListItem(
          todo: todos[index],
        ),
        itemCount: todos.length,
      ),
    );
  }
}
