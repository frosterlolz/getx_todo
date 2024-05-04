import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:getx_todo/src/features/todo/data/dto/todo_dto.dart';

part 'todo_entity.freezed.dart';

@freezed
class TodoEntity with _$TodoEntity {
  factory TodoEntity({
    required int id,
    required int userId,
    required String title,
    required bool completed,
  }) = _TodoEntity;

  factory TodoEntity.fromDto(TodoDto dto) => TodoEntity(
        id: dto.id,
        userId: dto.userId,
        title: dto.title,
        completed: dto.completed,
      );
}
