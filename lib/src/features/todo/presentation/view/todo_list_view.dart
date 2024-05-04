import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_todo/src/features/todo/domain/controllers/todos_controller/todos_state_controller.dart';
import 'package:getx_todo/src/features/todo/domain/entity/todo_entity.dart';
import 'package:getx_todo/src/features/todo/presentation/view/todo_details_view.dart';
import 'package:getx_todo/src/features/todo/presentation/widget/todo_card.dart';

class TodoListView extends StatefulWidget {
  const TodoListView({super.key});

  @override
  State<TodoListView> createState() => _TodoListViewState();
}

class _TodoListViewState extends State<TodoListView> {
  late final TodosStateController _todosController;

  @override
  void initState() {
    super.initState();
    _todosController = Get.find<TodosStateController>()..loadTodos();
  }

  void _onAddTodoItemTap() {
    Get.to(() => const TodoDetailsView());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Todo\'s'),
      ),
      body: Obx(
        () => switch (_todosController.state.value) {
          TodosState$Initial() => const Center(
              child: CircularProgressIndicator(),
            ),
          TodosState$Error(:final message) => Center(
              child: Text(message),
            ),
          _ => _TodosListBody(
              todos: _todosController.state.value.todos,
            ),
        },
      ),
      floatingActionButton: Obx(
        () => switch (_todosController.state.value) {
          TodosState$Initial() => const SizedBox.shrink(),
          TodosState$Error() => const SizedBox.shrink(),
          _ => FloatingActionButton(
              onPressed: _onAddTodoItemTap,
              shape: const CircleBorder(),
              child: const Icon(Icons.add),
            ),
        },
      ),
    );
  }
}

class _TodosListBody extends StatelessWidget {
  const _TodosListBody({
    required this.todos,
    super.key,
  });

  final List<TodoEntity> todos;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: todos.length,
      itemBuilder: (context, index) => TodoCard(
        todo: todos[index],
      ),
      separatorBuilder: (_, __) => const Divider(),
    );
  }
}
