import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_todo/src/features/todo/data/repository/todos_repository.dart';
import 'package:getx_todo/src/features/todo/domain/controllers/todos_controller/todos_state_controller.dart';
import 'package:getx_todo/src/features/todo/domain/repository/todos_repository.dart';
import 'package:getx_todo/src/features/todo/presentation/view/todo_details_view.dart';
import 'package:getx_todo/src/features/todo/presentation/view/todo_list_view.dart';

class AppView extends StatefulWidget {
  const AppView({super.key});

  @override
  State<AppView> createState() => _AppViewState();
}

class _AppViewState extends State<AppView> {
  @override
  void initState() {
    super.initState();
    final todosRepository = Get.find<ITodosRepository>();
    Get.put(TodosStateController(todosRepository: todosRepository));
  }

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      themeMode: ThemeMode.light,
      home: const TodoListView(),
      // getPages: [
      //   GetPage(
      //     name: '/todos_feed',
      //     page: () => TodoListView(),
      //   ),
      //   GetPage(
      //     name: '/todos_details',
      //     page: () => TodoDetailsView(todoItem: todoItem),
      //   ),
      // ],
    );
  }
}
