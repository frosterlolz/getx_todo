part of 'todos_state_controller.dart';

@freezed
sealed class TodosState with _$TodosState {
  factory TodosState.initial({
    @Default([]) List<TodoEntity> todos,
  }) = TodosState$Initial;

  factory TodosState.progress({
    required List<TodoEntity> todos,
  }) = TodosState$Progress;

  factory TodosState.success({
    required List<TodoEntity> todos,
  }) = TodosState$Success;

  factory TodosState.idle({
    required List<TodoEntity> todos,
  }) = TodosState$Idle;

  factory TodosState.error({
    required List<TodoEntity> todos,
    required String message,
  }) = TodosState$Error;
}
