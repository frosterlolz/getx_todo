import 'package:dio/dio.dart';
import 'package:getx_todo/src/features/todo/data/dto/todo_dto.dart';
import 'package:retrofit/http.dart';

part 'todos_api_provider.g.dart';

@RestApi()
abstract class TodosApiProvider {
  factory TodosApiProvider(Dio dio, {String baseUrl}) = _TodosApiProvider;
  @GET('/todos')
  Future<List<TodoDto>> loadTodos();
}
