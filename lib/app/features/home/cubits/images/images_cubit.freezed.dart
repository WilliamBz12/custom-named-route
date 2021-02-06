// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'images_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$ImagesStateTearOff {
  const _$ImagesStateTearOff();

// ignore: unused_element
  ImagesInitial loadInitial() {
    return const ImagesInitial();
  }

// ignore: unused_element
  ImagesLoading loadLoading() {
    return const ImagesLoading();
  }

// ignore: unused_element
  ImagesSuccess loadSuccess(List<String> images) {
    return ImagesSuccess(
      images,
    );
  }

// ignore: unused_element
  ImageFailure loadFailure(String message) {
    return ImageFailure(
      message,
    );
  }
}

// ignore: unused_element
const $ImagesState = _$ImagesStateTearOff();

mixin _$ImagesState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result loadInitial(),
    @required Result loadLoading(),
    @required Result loadSuccess(List<String> images),
    @required Result loadFailure(String message),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result loadInitial(),
    Result loadLoading(),
    Result loadSuccess(List<String> images),
    Result loadFailure(String message),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result loadInitial(ImagesInitial value),
    @required Result loadLoading(ImagesLoading value),
    @required Result loadSuccess(ImagesSuccess value),
    @required Result loadFailure(ImageFailure value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result loadInitial(ImagesInitial value),
    Result loadLoading(ImagesLoading value),
    Result loadSuccess(ImagesSuccess value),
    Result loadFailure(ImageFailure value),
    @required Result orElse(),
  });
}

abstract class $ImagesStateCopyWith<$Res> {
  factory $ImagesStateCopyWith(
          ImagesState value, $Res Function(ImagesState) then) =
      _$ImagesStateCopyWithImpl<$Res>;
}

class _$ImagesStateCopyWithImpl<$Res> implements $ImagesStateCopyWith<$Res> {
  _$ImagesStateCopyWithImpl(this._value, this._then);

  final ImagesState _value;
  // ignore: unused_field
  final $Res Function(ImagesState) _then;
}

abstract class $ImagesInitialCopyWith<$Res> {
  factory $ImagesInitialCopyWith(
          ImagesInitial value, $Res Function(ImagesInitial) then) =
      _$ImagesInitialCopyWithImpl<$Res>;
}

class _$ImagesInitialCopyWithImpl<$Res> extends _$ImagesStateCopyWithImpl<$Res>
    implements $ImagesInitialCopyWith<$Res> {
  _$ImagesInitialCopyWithImpl(
      ImagesInitial _value, $Res Function(ImagesInitial) _then)
      : super(_value, (v) => _then(v as ImagesInitial));

  @override
  ImagesInitial get _value => super._value as ImagesInitial;
}

class _$ImagesInitial implements ImagesInitial {
  const _$ImagesInitial();

  @override
  String toString() {
    return 'ImagesState.loadInitial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ImagesInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result loadInitial(),
    @required Result loadLoading(),
    @required Result loadSuccess(List<String> images),
    @required Result loadFailure(String message),
  }) {
    assert(loadInitial != null);
    assert(loadLoading != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadInitial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result loadInitial(),
    Result loadLoading(),
    Result loadSuccess(List<String> images),
    Result loadFailure(String message),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadInitial != null) {
      return loadInitial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result loadInitial(ImagesInitial value),
    @required Result loadLoading(ImagesLoading value),
    @required Result loadSuccess(ImagesSuccess value),
    @required Result loadFailure(ImageFailure value),
  }) {
    assert(loadInitial != null);
    assert(loadLoading != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadInitial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result loadInitial(ImagesInitial value),
    Result loadLoading(ImagesLoading value),
    Result loadSuccess(ImagesSuccess value),
    Result loadFailure(ImageFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadInitial != null) {
      return loadInitial(this);
    }
    return orElse();
  }
}

abstract class ImagesInitial implements ImagesState {
  const factory ImagesInitial() = _$ImagesInitial;
}

abstract class $ImagesLoadingCopyWith<$Res> {
  factory $ImagesLoadingCopyWith(
          ImagesLoading value, $Res Function(ImagesLoading) then) =
      _$ImagesLoadingCopyWithImpl<$Res>;
}

class _$ImagesLoadingCopyWithImpl<$Res> extends _$ImagesStateCopyWithImpl<$Res>
    implements $ImagesLoadingCopyWith<$Res> {
  _$ImagesLoadingCopyWithImpl(
      ImagesLoading _value, $Res Function(ImagesLoading) _then)
      : super(_value, (v) => _then(v as ImagesLoading));

  @override
  ImagesLoading get _value => super._value as ImagesLoading;
}

class _$ImagesLoading implements ImagesLoading {
  const _$ImagesLoading();

  @override
  String toString() {
    return 'ImagesState.loadLoading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ImagesLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result loadInitial(),
    @required Result loadLoading(),
    @required Result loadSuccess(List<String> images),
    @required Result loadFailure(String message),
  }) {
    assert(loadInitial != null);
    assert(loadLoading != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadLoading();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result loadInitial(),
    Result loadLoading(),
    Result loadSuccess(List<String> images),
    Result loadFailure(String message),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadLoading != null) {
      return loadLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result loadInitial(ImagesInitial value),
    @required Result loadLoading(ImagesLoading value),
    @required Result loadSuccess(ImagesSuccess value),
    @required Result loadFailure(ImageFailure value),
  }) {
    assert(loadInitial != null);
    assert(loadLoading != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadLoading(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result loadInitial(ImagesInitial value),
    Result loadLoading(ImagesLoading value),
    Result loadSuccess(ImagesSuccess value),
    Result loadFailure(ImageFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadLoading != null) {
      return loadLoading(this);
    }
    return orElse();
  }
}

abstract class ImagesLoading implements ImagesState {
  const factory ImagesLoading() = _$ImagesLoading;
}

abstract class $ImagesSuccessCopyWith<$Res> {
  factory $ImagesSuccessCopyWith(
          ImagesSuccess value, $Res Function(ImagesSuccess) then) =
      _$ImagesSuccessCopyWithImpl<$Res>;
  $Res call({List<String> images});
}

class _$ImagesSuccessCopyWithImpl<$Res> extends _$ImagesStateCopyWithImpl<$Res>
    implements $ImagesSuccessCopyWith<$Res> {
  _$ImagesSuccessCopyWithImpl(
      ImagesSuccess _value, $Res Function(ImagesSuccess) _then)
      : super(_value, (v) => _then(v as ImagesSuccess));

  @override
  ImagesSuccess get _value => super._value as ImagesSuccess;

  @override
  $Res call({
    Object images = freezed,
  }) {
    return _then(ImagesSuccess(
      images == freezed ? _value.images : images as List<String>,
    ));
  }
}

class _$ImagesSuccess implements ImagesSuccess {
  const _$ImagesSuccess(this.images) : assert(images != null);

  @override
  final List<String> images;

  @override
  String toString() {
    return 'ImagesState.loadSuccess(images: $images)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ImagesSuccess &&
            (identical(other.images, images) ||
                const DeepCollectionEquality().equals(other.images, images)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(images);

  @override
  $ImagesSuccessCopyWith<ImagesSuccess> get copyWith =>
      _$ImagesSuccessCopyWithImpl<ImagesSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result loadInitial(),
    @required Result loadLoading(),
    @required Result loadSuccess(List<String> images),
    @required Result loadFailure(String message),
  }) {
    assert(loadInitial != null);
    assert(loadLoading != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadSuccess(images);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result loadInitial(),
    Result loadLoading(),
    Result loadSuccess(List<String> images),
    Result loadFailure(String message),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadSuccess != null) {
      return loadSuccess(images);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result loadInitial(ImagesInitial value),
    @required Result loadLoading(ImagesLoading value),
    @required Result loadSuccess(ImagesSuccess value),
    @required Result loadFailure(ImageFailure value),
  }) {
    assert(loadInitial != null);
    assert(loadLoading != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result loadInitial(ImagesInitial value),
    Result loadLoading(ImagesLoading value),
    Result loadSuccess(ImagesSuccess value),
    Result loadFailure(ImageFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class ImagesSuccess implements ImagesState {
  const factory ImagesSuccess(List<String> images) = _$ImagesSuccess;

  List<String> get images;
  $ImagesSuccessCopyWith<ImagesSuccess> get copyWith;
}

abstract class $ImageFailureCopyWith<$Res> {
  factory $ImageFailureCopyWith(
          ImageFailure value, $Res Function(ImageFailure) then) =
      _$ImageFailureCopyWithImpl<$Res>;
  $Res call({String message});
}

class _$ImageFailureCopyWithImpl<$Res> extends _$ImagesStateCopyWithImpl<$Res>
    implements $ImageFailureCopyWith<$Res> {
  _$ImageFailureCopyWithImpl(
      ImageFailure _value, $Res Function(ImageFailure) _then)
      : super(_value, (v) => _then(v as ImageFailure));

  @override
  ImageFailure get _value => super._value as ImageFailure;

  @override
  $Res call({
    Object message = freezed,
  }) {
    return _then(ImageFailure(
      message == freezed ? _value.message : message as String,
    ));
  }
}

class _$ImageFailure implements ImageFailure {
  const _$ImageFailure(this.message) : assert(message != null);

  @override
  final String message;

  @override
  String toString() {
    return 'ImagesState.loadFailure(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ImageFailure &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @override
  $ImageFailureCopyWith<ImageFailure> get copyWith =>
      _$ImageFailureCopyWithImpl<ImageFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result loadInitial(),
    @required Result loadLoading(),
    @required Result loadSuccess(List<String> images),
    @required Result loadFailure(String message),
  }) {
    assert(loadInitial != null);
    assert(loadLoading != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadFailure(message);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result loadInitial(),
    Result loadLoading(),
    Result loadSuccess(List<String> images),
    Result loadFailure(String message),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadFailure != null) {
      return loadFailure(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result loadInitial(ImagesInitial value),
    @required Result loadLoading(ImagesLoading value),
    @required Result loadSuccess(ImagesSuccess value),
    @required Result loadFailure(ImageFailure value),
  }) {
    assert(loadInitial != null);
    assert(loadLoading != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result loadInitial(ImagesInitial value),
    Result loadLoading(ImagesLoading value),
    Result loadSuccess(ImagesSuccess value),
    Result loadFailure(ImageFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class ImageFailure implements ImagesState {
  const factory ImageFailure(String message) = _$ImageFailure;

  String get message;
  $ImageFailureCopyWith<ImageFailure> get copyWith;
}
