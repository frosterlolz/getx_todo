import 'package:freezed_annotation/freezed_annotation.dart';

part 'todo_dto.g.dart';

@JsonSerializable(createToJson: false)
class TodoDto {
  const TodoDto({
    required this.id,
    required this.userId,
    required this.title,
    required this.completed,
  });
  factory TodoDto.fromJson(Map<String, dynamic> json) =>
      _$TodoDtoFromJson(json);
  final int id;
  final int userId;
  final String title;
  final bool completed;
}
