import 'package:getx_todo/src/features/todo/domain/entity/todo_entity.dart';

abstract interface class ITodosRepository {
  Future<Iterable<TodoEntity>> loadTodos();
}
