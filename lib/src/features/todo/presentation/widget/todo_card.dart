import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_todo/src/features/todo/domain/entity/todo_entity.dart';
import 'package:getx_todo/src/features/todo/presentation/view/todo_details_view.dart';

class TodoCard extends StatelessWidget {
  const TodoCard({
    required this.todo,
    super.key,
  });

  final TodoEntity todo;

  void _onItemTap(BuildContext context) {
    Get.to(() => TodoDetailsView(todoItem: todo));
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () => _onItemTap(context),
      title: Text(todo.title),
      subtitle: Text(
        todo.completed ? 'Completed' : 'In progress',
      ),
    );
  }
}
