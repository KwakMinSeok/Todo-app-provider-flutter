import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todos/models/todo_model.dart';
import 'package:todos/providers/todos_model.dart';

class TodoListItem extends StatelessWidget {
  final Todo todo;

  const TodoListItem({Key key, @required this.todo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(todo.title),
      leading: Checkbox(
          value: todo.completed,
          onChanged: (bool checked) {
            Provider.of<TodoModel>(context).toggleTodo(todo);
          }),
      trailing: IconButton(
          icon: Icon(
            Icons.delete,
            color: Colors.red,
          ),
          onPressed: () {
            Provider.of<TodoModel>(context).deleteTodo(todo);
          }),
    );
  }
}
