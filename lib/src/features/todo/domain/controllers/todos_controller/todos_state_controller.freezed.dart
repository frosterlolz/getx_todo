// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'todos_state_controller.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TodosState {
  List<TodoEntity> get todos => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<TodoEntity> todos) initial,
    required TResult Function(List<TodoEntity> todos) progress,
    required TResult Function(List<TodoEntity> todos) success,
    required TResult Function(List<TodoEntity> todos) idle,
    required TResult Function(List<TodoEntity> todos, String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<TodoEntity> todos)? initial,
    TResult? Function(List<TodoEntity> todos)? progress,
    TResult? Function(List<TodoEntity> todos)? success,
    TResult? Function(List<TodoEntity> todos)? idle,
    TResult? Function(List<TodoEntity> todos, String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<TodoEntity> todos)? initial,
    TResult Function(List<TodoEntity> todos)? progress,
    TResult Function(List<TodoEntity> todos)? success,
    TResult Function(List<TodoEntity> todos)? idle,
    TResult Function(List<TodoEntity> todos, String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TodosState$Initial value) initial,
    required TResult Function(TodosState$Progress value) progress,
    required TResult Function(TodosState$Success value) success,
    required TResult Function(TodosState$Idle value) idle,
    required TResult Function(TodosState$Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TodosState$Initial value)? initial,
    TResult? Function(TodosState$Progress value)? progress,
    TResult? Function(TodosState$Success value)? success,
    TResult? Function(TodosState$Idle value)? idle,
    TResult? Function(TodosState$Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TodosState$Initial value)? initial,
    TResult Function(TodosState$Progress value)? progress,
    TResult Function(TodosState$Success value)? success,
    TResult Function(TodosState$Idle value)? idle,
    TResult Function(TodosState$Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TodosStateCopyWith<TodosState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodosStateCopyWith<$Res> {
  factory $TodosStateCopyWith(
          TodosState value, $Res Function(TodosState) then) =
      _$TodosStateCopyWithImpl<$Res, TodosState>;
  @useResult
  $Res call({List<TodoEntity> todos});
}

/// @nodoc
class _$TodosStateCopyWithImpl<$Res, $Val extends TodosState>
    implements $TodosStateCopyWith<$Res> {
  _$TodosStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? todos = null,
  }) {
    return _then(_value.copyWith(
      todos: null == todos
          ? _value.todos
          : todos // ignore: cast_nullable_to_non_nullable
              as List<TodoEntity>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TodosState$InitialImplCopyWith<$Res>
    implements $TodosStateCopyWith<$Res> {
  factory _$$TodosState$InitialImplCopyWith(_$TodosState$InitialImpl value,
          $Res Function(_$TodosState$InitialImpl) then) =
      __$$TodosState$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<TodoEntity> todos});
}

/// @nodoc
class __$$TodosState$InitialImplCopyWithImpl<$Res>
    extends _$TodosStateCopyWithImpl<$Res, _$TodosState$InitialImpl>
    implements _$$TodosState$InitialImplCopyWith<$Res> {
  __$$TodosState$InitialImplCopyWithImpl(_$TodosState$InitialImpl _value,
      $Res Function(_$TodosState$InitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? todos = null,
  }) {
    return _then(_$TodosState$InitialImpl(
      todos: null == todos
          ? _value._todos
          : todos // ignore: cast_nullable_to_non_nullable
              as List<TodoEntity>,
    ));
  }
}

/// @nodoc

class _$TodosState$InitialImpl implements TodosState$Initial {
  _$TodosState$InitialImpl({final List<TodoEntity> todos = const []})
      : _todos = todos;

  final List<TodoEntity> _todos;
  @override
  @JsonKey()
  List<TodoEntity> get todos {
    if (_todos is EqualUnmodifiableListView) return _todos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_todos);
  }

  @override
  String toString() {
    return 'TodosState.initial(todos: $todos)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TodosState$InitialImpl &&
            const DeepCollectionEquality().equals(other._todos, _todos));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_todos));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TodosState$InitialImplCopyWith<_$TodosState$InitialImpl> get copyWith =>
      __$$TodosState$InitialImplCopyWithImpl<_$TodosState$InitialImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<TodoEntity> todos) initial,
    required TResult Function(List<TodoEntity> todos) progress,
    required TResult Function(List<TodoEntity> todos) success,
    required TResult Function(List<TodoEntity> todos) idle,
    required TResult Function(List<TodoEntity> todos, String message) error,
  }) {
    return initial(todos);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<TodoEntity> todos)? initial,
    TResult? Function(List<TodoEntity> todos)? progress,
    TResult? Function(List<TodoEntity> todos)? success,
    TResult? Function(List<TodoEntity> todos)? idle,
    TResult? Function(List<TodoEntity> todos, String message)? error,
  }) {
    return initial?.call(todos);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<TodoEntity> todos)? initial,
    TResult Function(List<TodoEntity> todos)? progress,
    TResult Function(List<TodoEntity> todos)? success,
    TResult Function(List<TodoEntity> todos)? idle,
    TResult Function(List<TodoEntity> todos, String message)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(todos);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TodosState$Initial value) initial,
    required TResult Function(TodosState$Progress value) progress,
    required TResult Function(TodosState$Success value) success,
    required TResult Function(TodosState$Idle value) idle,
    required TResult Function(TodosState$Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TodosState$Initial value)? initial,
    TResult? Function(TodosState$Progress value)? progress,
    TResult? Function(TodosState$Success value)? success,
    TResult? Function(TodosState$Idle value)? idle,
    TResult? Function(TodosState$Error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TodosState$Initial value)? initial,
    TResult Function(TodosState$Progress value)? progress,
    TResult Function(TodosState$Success value)? success,
    TResult Function(TodosState$Idle value)? idle,
    TResult Function(TodosState$Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class TodosState$Initial implements TodosState {
  factory TodosState$Initial({final List<TodoEntity> todos}) =
      _$TodosState$InitialImpl;

  @override
  List<TodoEntity> get todos;
  @override
  @JsonKey(ignore: true)
  _$$TodosState$InitialImplCopyWith<_$TodosState$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TodosState$ProgressImplCopyWith<$Res>
    implements $TodosStateCopyWith<$Res> {
  factory _$$TodosState$ProgressImplCopyWith(_$TodosState$ProgressImpl value,
          $Res Function(_$TodosState$ProgressImpl) then) =
      __$$TodosState$ProgressImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<TodoEntity> todos});
}

/// @nodoc
class __$$TodosState$ProgressImplCopyWithImpl<$Res>
    extends _$TodosStateCopyWithImpl<$Res, _$TodosState$ProgressImpl>
    implements _$$TodosState$ProgressImplCopyWith<$Res> {
  __$$TodosState$ProgressImplCopyWithImpl(_$TodosState$ProgressImpl _value,
      $Res Function(_$TodosState$ProgressImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? todos = null,
  }) {
    return _then(_$TodosState$ProgressImpl(
      todos: null == todos
          ? _value._todos
          : todos // ignore: cast_nullable_to_non_nullable
              as List<TodoEntity>,
    ));
  }
}

/// @nodoc

class _$TodosState$ProgressImpl implements TodosState$Progress {
  _$TodosState$ProgressImpl({required final List<TodoEntity> todos})
      : _todos = todos;

  final List<TodoEntity> _todos;
  @override
  List<TodoEntity> get todos {
    if (_todos is EqualUnmodifiableListView) return _todos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_todos);
  }

  @override
  String toString() {
    return 'TodosState.progress(todos: $todos)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TodosState$ProgressImpl &&
            const DeepCollectionEquality().equals(other._todos, _todos));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_todos));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TodosState$ProgressImplCopyWith<_$TodosState$ProgressImpl> get copyWith =>
      __$$TodosState$ProgressImplCopyWithImpl<_$TodosState$ProgressImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<TodoEntity> todos) initial,
    required TResult Function(List<TodoEntity> todos) progress,
    required TResult Function(List<TodoEntity> todos) success,
    required TResult Function(List<TodoEntity> todos) idle,
    required TResult Function(List<TodoEntity> todos, String message) error,
  }) {
    return progress(todos);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<TodoEntity> todos)? initial,
    TResult? Function(List<TodoEntity> todos)? progress,
    TResult? Function(List<TodoEntity> todos)? success,
    TResult? Function(List<TodoEntity> todos)? idle,
    TResult? Function(List<TodoEntity> todos, String message)? error,
  }) {
    return progress?.call(todos);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<TodoEntity> todos)? initial,
    TResult Function(List<TodoEntity> todos)? progress,
    TResult Function(List<TodoEntity> todos)? success,
    TResult Function(List<TodoEntity> todos)? idle,
    TResult Function(List<TodoEntity> todos, String message)? error,
    required TResult orElse(),
  }) {
    if (progress != null) {
      return progress(todos);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TodosState$Initial value) initial,
    required TResult Function(TodosState$Progress value) progress,
    required TResult Function(TodosState$Success value) success,
    required TResult Function(TodosState$Idle value) idle,
    required TResult Function(TodosState$Error value) error,
  }) {
    return progress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TodosState$Initial value)? initial,
    TResult? Function(TodosState$Progress value)? progress,
    TResult? Function(TodosState$Success value)? success,
    TResult? Function(TodosState$Idle value)? idle,
    TResult? Function(TodosState$Error value)? error,
  }) {
    return progress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TodosState$Initial value)? initial,
    TResult Function(TodosState$Progress value)? progress,
    TResult Function(TodosState$Success value)? success,
    TResult Function(TodosState$Idle value)? idle,
    TResult Function(TodosState$Error value)? error,
    required TResult orElse(),
  }) {
    if (progress != null) {
      return progress(this);
    }
    return orElse();
  }
}

abstract class TodosState$Progress implements TodosState {
  factory TodosState$Progress({required final List<TodoEntity> todos}) =
      _$TodosState$ProgressImpl;

  @override
  List<TodoEntity> get todos;
  @override
  @JsonKey(ignore: true)
  _$$TodosState$ProgressImplCopyWith<_$TodosState$ProgressImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TodosState$SuccessImplCopyWith<$Res>
    implements $TodosStateCopyWith<$Res> {
  factory _$$TodosState$SuccessImplCopyWith(_$TodosState$SuccessImpl value,
          $Res Function(_$TodosState$SuccessImpl) then) =
      __$$TodosState$SuccessImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<TodoEntity> todos});
}

/// @nodoc
class __$$TodosState$SuccessImplCopyWithImpl<$Res>
    extends _$TodosStateCopyWithImpl<$Res, _$TodosState$SuccessImpl>
    implements _$$TodosState$SuccessImplCopyWith<$Res> {
  __$$TodosState$SuccessImplCopyWithImpl(_$TodosState$SuccessImpl _value,
      $Res Function(_$TodosState$SuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? todos = null,
  }) {
    return _then(_$TodosState$SuccessImpl(
      todos: null == todos
          ? _value._todos
          : todos // ignore: cast_nullable_to_non_nullable
              as List<TodoEntity>,
    ));
  }
}

/// @nodoc

class _$TodosState$SuccessImpl implements TodosState$Success {
  _$TodosState$SuccessImpl({required final List<TodoEntity> todos})
      : _todos = todos;

  final List<TodoEntity> _todos;
  @override
  List<TodoEntity> get todos {
    if (_todos is EqualUnmodifiableListView) return _todos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_todos);
  }

  @override
  String toString() {
    return 'TodosState.success(todos: $todos)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TodosState$SuccessImpl &&
            const DeepCollectionEquality().equals(other._todos, _todos));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_todos));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TodosState$SuccessImplCopyWith<_$TodosState$SuccessImpl> get copyWith =>
      __$$TodosState$SuccessImplCopyWithImpl<_$TodosState$SuccessImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<TodoEntity> todos) initial,
    required TResult Function(List<TodoEntity> todos) progress,
    required TResult Function(List<TodoEntity> todos) success,
    required TResult Function(List<TodoEntity> todos) idle,
    required TResult Function(List<TodoEntity> todos, String message) error,
  }) {
    return success(todos);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<TodoEntity> todos)? initial,
    TResult? Function(List<TodoEntity> todos)? progress,
    TResult? Function(List<TodoEntity> todos)? success,
    TResult? Function(List<TodoEntity> todos)? idle,
    TResult? Function(List<TodoEntity> todos, String message)? error,
  }) {
    return success?.call(todos);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<TodoEntity> todos)? initial,
    TResult Function(List<TodoEntity> todos)? progress,
    TResult Function(List<TodoEntity> todos)? success,
    TResult Function(List<TodoEntity> todos)? idle,
    TResult Function(List<TodoEntity> todos, String message)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(todos);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TodosState$Initial value) initial,
    required TResult Function(TodosState$Progress value) progress,
    required TResult Function(TodosState$Success value) success,
    required TResult Function(TodosState$Idle value) idle,
    required TResult Function(TodosState$Error value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TodosState$Initial value)? initial,
    TResult? Function(TodosState$Progress value)? progress,
    TResult? Function(TodosState$Success value)? success,
    TResult? Function(TodosState$Idle value)? idle,
    TResult? Function(TodosState$Error value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TodosState$Initial value)? initial,
    TResult Function(TodosState$Progress value)? progress,
    TResult Function(TodosState$Success value)? success,
    TResult Function(TodosState$Idle value)? idle,
    TResult Function(TodosState$Error value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class TodosState$Success implements TodosState {
  factory TodosState$Success({required final List<TodoEntity> todos}) =
      _$TodosState$SuccessImpl;

  @override
  List<TodoEntity> get todos;
  @override
  @JsonKey(ignore: true)
  _$$TodosState$SuccessImplCopyWith<_$TodosState$SuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TodosState$IdleImplCopyWith<$Res>
    implements $TodosStateCopyWith<$Res> {
  factory _$$TodosState$IdleImplCopyWith(_$TodosState$IdleImpl value,
          $Res Function(_$TodosState$IdleImpl) then) =
      __$$TodosState$IdleImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<TodoEntity> todos});
}

/// @nodoc
class __$$TodosState$IdleImplCopyWithImpl<$Res>
    extends _$TodosStateCopyWithImpl<$Res, _$TodosState$IdleImpl>
    implements _$$TodosState$IdleImplCopyWith<$Res> {
  __$$TodosState$IdleImplCopyWithImpl(
      _$TodosState$IdleImpl _value, $Res Function(_$TodosState$IdleImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? todos = null,
  }) {
    return _then(_$TodosState$IdleImpl(
      todos: null == todos
          ? _value._todos
          : todos // ignore: cast_nullable_to_non_nullable
              as List<TodoEntity>,
    ));
  }
}

/// @nodoc

class _$TodosState$IdleImpl implements TodosState$Idle {
  _$TodosState$IdleImpl({required final List<TodoEntity> todos})
      : _todos = todos;

  final List<TodoEntity> _todos;
  @override
  List<TodoEntity> get todos {
    if (_todos is EqualUnmodifiableListView) return _todos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_todos);
  }

  @override
  String toString() {
    return 'TodosState.idle(todos: $todos)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TodosState$IdleImpl &&
            const DeepCollectionEquality().equals(other._todos, _todos));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_todos));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TodosState$IdleImplCopyWith<_$TodosState$IdleImpl> get copyWith =>
      __$$TodosState$IdleImplCopyWithImpl<_$TodosState$IdleImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<TodoEntity> todos) initial,
    required TResult Function(List<TodoEntity> todos) progress,
    required TResult Function(List<TodoEntity> todos) success,
    required TResult Function(List<TodoEntity> todos) idle,
    required TResult Function(List<TodoEntity> todos, String message) error,
  }) {
    return idle(todos);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<TodoEntity> todos)? initial,
    TResult? Function(List<TodoEntity> todos)? progress,
    TResult? Function(List<TodoEntity> todos)? success,
    TResult? Function(List<TodoEntity> todos)? idle,
    TResult? Function(List<TodoEntity> todos, String message)? error,
  }) {
    return idle?.call(todos);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<TodoEntity> todos)? initial,
    TResult Function(List<TodoEntity> todos)? progress,
    TResult Function(List<TodoEntity> todos)? success,
    TResult Function(List<TodoEntity> todos)? idle,
    TResult Function(List<TodoEntity> todos, String message)? error,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(todos);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TodosState$Initial value) initial,
    required TResult Function(TodosState$Progress value) progress,
    required TResult Function(TodosState$Success value) success,
    required TResult Function(TodosState$Idle value) idle,
    required TResult Function(TodosState$Error value) error,
  }) {
    return idle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TodosState$Initial value)? initial,
    TResult? Function(TodosState$Progress value)? progress,
    TResult? Function(TodosState$Success value)? success,
    TResult? Function(TodosState$Idle value)? idle,
    TResult? Function(TodosState$Error value)? error,
  }) {
    return idle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TodosState$Initial value)? initial,
    TResult Function(TodosState$Progress value)? progress,
    TResult Function(TodosState$Success value)? success,
    TResult Function(TodosState$Idle value)? idle,
    TResult Function(TodosState$Error value)? error,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(this);
    }
    return orElse();
  }
}

abstract class TodosState$Idle implements TodosState {
  factory TodosState$Idle({required final List<TodoEntity> todos}) =
      _$TodosState$IdleImpl;

  @override
  List<TodoEntity> get todos;
  @override
  @JsonKey(ignore: true)
  _$$TodosState$IdleImplCopyWith<_$TodosState$IdleImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TodosState$ErrorImplCopyWith<$Res>
    implements $TodosStateCopyWith<$Res> {
  factory _$$TodosState$ErrorImplCopyWith(_$TodosState$ErrorImpl value,
          $Res Function(_$TodosState$ErrorImpl) then) =
      __$$TodosState$ErrorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<TodoEntity> todos, String message});
}

/// @nodoc
class __$$TodosState$ErrorImplCopyWithImpl<$Res>
    extends _$TodosStateCopyWithImpl<$Res, _$TodosState$ErrorImpl>
    implements _$$TodosState$ErrorImplCopyWith<$Res> {
  __$$TodosState$ErrorImplCopyWithImpl(_$TodosState$ErrorImpl _value,
      $Res Function(_$TodosState$ErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? todos = null,
    Object? message = null,
  }) {
    return _then(_$TodosState$ErrorImpl(
      todos: null == todos
          ? _value._todos
          : todos // ignore: cast_nullable_to_non_nullable
              as List<TodoEntity>,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$TodosState$ErrorImpl implements TodosState$Error {
  _$TodosState$ErrorImpl(
      {required final List<TodoEntity> todos, required this.message})
      : _todos = todos;

  final List<TodoEntity> _todos;
  @override
  List<TodoEntity> get todos {
    if (_todos is EqualUnmodifiableListView) return _todos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_todos);
  }

  @override
  final String message;

  @override
  String toString() {
    return 'TodosState.error(todos: $todos, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TodosState$ErrorImpl &&
            const DeepCollectionEquality().equals(other._todos, _todos) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_todos), message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TodosState$ErrorImplCopyWith<_$TodosState$ErrorImpl> get copyWith =>
      __$$TodosState$ErrorImplCopyWithImpl<_$TodosState$ErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<TodoEntity> todos) initial,
    required TResult Function(List<TodoEntity> todos) progress,
    required TResult Function(List<TodoEntity> todos) success,
    required TResult Function(List<TodoEntity> todos) idle,
    required TResult Function(List<TodoEntity> todos, String message) error,
  }) {
    return error(todos, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<TodoEntity> todos)? initial,
    TResult? Function(List<TodoEntity> todos)? progress,
    TResult? Function(List<TodoEntity> todos)? success,
    TResult? Function(List<TodoEntity> todos)? idle,
    TResult? Function(List<TodoEntity> todos, String message)? error,
  }) {
    return error?.call(todos, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<TodoEntity> todos)? initial,
    TResult Function(List<TodoEntity> todos)? progress,
    TResult Function(List<TodoEntity> todos)? success,
    TResult Function(List<TodoEntity> todos)? idle,
    TResult Function(List<TodoEntity> todos, String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(todos, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TodosState$Initial value) initial,
    required TResult Function(TodosState$Progress value) progress,
    required TResult Function(TodosState$Success value) success,
    required TResult Function(TodosState$Idle value) idle,
    required TResult Function(TodosState$Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TodosState$Initial value)? initial,
    TResult? Function(TodosState$Progress value)? progress,
    TResult? Function(TodosState$Success value)? success,
    TResult? Function(TodosState$Idle value)? idle,
    TResult? Function(TodosState$Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TodosState$Initial value)? initial,
    TResult Function(TodosState$Progress value)? progress,
    TResult Function(TodosState$Success value)? success,
    TResult Function(TodosState$Idle value)? idle,
    TResult Function(TodosState$Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class TodosState$Error implements TodosState {
  factory TodosState$Error(
      {required final List<TodoEntity> todos,
      required final String message}) = _$TodosState$ErrorImpl;

  @override
  List<TodoEntity> get todos;
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$TodosState$ErrorImplCopyWith<_$TodosState$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
