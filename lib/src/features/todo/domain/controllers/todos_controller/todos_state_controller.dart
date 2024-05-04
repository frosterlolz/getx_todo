import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get/get.dart';
import 'package:getx_todo/src/features/todo/domain/entity/todo_entity.dart';
import 'package:getx_todo/src/features/todo/domain/repository/todos_repository.dart';

part 'todos_state.dart';
part 'todos_state_controller.freezed.dart';

// Get shoud be in presentation layer,
// but I use it only for business logic control, without flutter features
// I guess it breaks clean architecture with mixing view and controller parts
class TodosStateController extends GetxController {
  TodosStateController({
    required ITodosRepository todosRepository,
  })  : _todosRepository = todosRepository,
        _state = TodosState.initial().obs;
  final ITodosRepository _todosRepository;
  final Rx<TodosState> _state;

  Rx<TodosState> get state => _state;

  Future<void> loadTodos() async {
    try {
      _state.value = _state.value.todos.isEmpty
          ? TodosState.initial()
          : TodosState.progress(todos: _state.value.todos);
      final todos = await _todosRepository.loadTodos();
      _state.value = TodosState.idle(todos: todos.toList());
      // on ServerException, on AppException(FormatException for example)
    } on Object catch (e, s) {
      _state.value = TodosState.error(
        todos: state.value.todos,
        message: 'Something went wrong',
      );
      // Observer/rethrow to show/send from zone
      debugPrint('$e');
      debugPrintStack(stackTrace: s);
    }
  }

  void changeTodo({
    required int id,
    required String title,
    required bool completed,
  }) {
    try {
      final todoIndex =
          _state.value.todos.indexWhere((element) => element.id == id);
      if (todoIndex == -1) {
        _state.value = TodosState.error(
          todos: state.value.todos,
          message: 'Element not found',
        );
        return;
      }
      final updatedTodos = _state.value.todos
          .map((e) =>
              e.id == id ? e.copyWith(title: title, completed: completed) : e)
          .toList();
      _state.value = TodosState.success(todos: updatedTodos);
    } on Object {
      _state.value = TodosState.error(
        todos: state.value.todos,
        message: 'Something went wrong',
      );

      rethrow;
    } finally {
      _state.value = TodosState.idle(todos: state.value.todos);
    }
  }

  // add item at the end of list by default
  void addTodoItem({
    required String title,
    required bool completed,
  }) {
    try {
      final item = TodoEntity(
        id: _state.value.todos.last.id + 1,
        userId: _state.value.todos.last.userId,
        title: title,
        completed: completed,
      );
      final updatedItems = state.value.todos.toList()..add(item);
      _state.value = TodosState.success(todos: updatedItems);
    } on Object {
      _state.value = TodosState.error(
        todos: state.value.todos,
        message: 'Something went wrong',
      );

      rethrow;
    } finally {
      _state.value = TodosState.idle(todos: state.value.todos);
    }
  }
}
