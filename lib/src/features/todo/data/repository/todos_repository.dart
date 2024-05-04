import 'package:getx_todo/src/features/todo/data/source/network/todos_api_provider.dart';
import 'package:getx_todo/src/features/todo/domain/entity/todo_entity.dart';
import 'package:getx_todo/src/features/todo/domain/repository/todos_repository.dart';

class TodosRepository implements ITodosRepository {
  const TodosRepository({
    required TodosApiProvider todosApiProvider,
  }) : _todosApiProvider = todosApiProvider;

  final TodosApiProvider _todosApiProvider;

  @override
  Future<Iterable<TodoEntity>> loadTodos() async {
    final todos = await _todosApiProvider.loadTodos();
    return todos.map(TodoEntity.fromDto);
    // try {} on Object catch (e,s) {
    //   return
    // }
  }
}
