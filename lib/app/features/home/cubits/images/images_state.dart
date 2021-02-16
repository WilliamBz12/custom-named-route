part of 'images_cubit.dart';

@freezed
abstract class ImagesState with _$ImagesState {
  const factory ImagesState.loadInitial() = ImagesInitial;
  const factory ImagesState.loadLoading() = ImagesLoading;
  const factory ImagesState.loadSuccess(List<ImageModel> images) =
      ImagesSuccess;
  const factory ImagesState.loadFailure(String message) = ImageFailure;
}
