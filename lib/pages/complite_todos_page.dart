import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todos/models/todo_model.dart';
import 'package:todos/providers/todos_model.dart';
import 'package:todos/widgets/todo_list_view.dart';

class CompleteTodos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final List<Todo> completeTodos = Provider.of<TodoModel>(context).completeTodos;

    return Container(
        child: TodoListView(
          todos: completeTodos,
        )
    );
  }
}
