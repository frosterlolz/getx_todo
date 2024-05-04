import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_todo/src/features/todo/domain/controllers/todos_controller/todos_state_controller.dart';
import 'package:getx_todo/src/features/todo/domain/entity/todo_entity.dart';

const _kMainHorizontalPadding = 16.0;
const _kItemsExtent = 10.0;

enum TodoDetailsType { create, edit }

// small content size. Prefer bottom sheet, but task: 2 screens
class TodoDetailsView extends StatefulWidget {
  const TodoDetailsView({
    this.todoItem,
    super.key,
  }) : _type = todoItem == null ? TodoDetailsType.create : TodoDetailsType.edit;

  final TodoEntity? todoItem;
  final TodoDetailsType _type;

  @override
  State<TodoDetailsView> createState() => _TodoDetailsViewState();
}

// I prefer exclude validation, editing and saving methods, and also storing
// editable fields in separate controller for real project
class _TodoDetailsViewState extends State<TodoDetailsView> {
  late final StreamSubscription<TodosState> _todosSubscription;
  late String _title;
  late bool _isCompleted;

  @override
  void initState() {
    super.initState();
    _title = widget.todoItem?.title ?? '';
    _isCompleted = widget.todoItem?.completed ?? false;
    _todosSubscription =
        Get.find<TodosStateController>().state.listen(_todosListener);
  }

  void _todosListener(TodosState state) {
    switch (state) {
      case TodosState$Success():
        Get.back();
      case TodosState$Error(:final message):
        Get.snackbar('Error', message,
            snackPosition: SnackPosition.BOTTOM, colorText: Colors.red);
      default:
        break;
    }
  }

  void _onSaveTap() {
    final controller = Get.find<TodosStateController>();
    switch (widget._type) {
      case TodoDetailsType.create:
        controller.addTodoItem(
          title: _title,
          completed: _isCompleted,
        );
      case TodoDetailsType.edit:
        controller.changeTodo(
          id: widget.todoItem!.id,
          title: _title,
          completed: _isCompleted,
        );
    }
  }

  void _onTitleChanged(String v) {
    setState(() {
      _title = v;
    });
  }

  void _onStatusChanged(bool? v) {
    if (v == null) return;
    setState(() {
      _isCompleted = v;
    });
  }

  @override
  void dispose() {
    _todosSubscription.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          TextButton(
            onPressed: _onSaveTap,
            child: const Text('Save'),
          )
        ],
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: _kMainHorizontalPadding,
          ),
          child: Column(
            children: [
              TextFormField(
                initialValue: _title,
                onChanged: _onTitleChanged,
              ),
              const SizedBox(height: _kItemsExtent),
              CheckboxListTile(
                contentPadding: EdgeInsets.zero,
                title: const Text('Completed:'),
                value: _isCompleted,
                onChanged: _onStatusChanged,
              )
            ],
          ),
        ),
      ),
    );
  }
}
