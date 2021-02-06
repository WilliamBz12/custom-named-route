import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:structuremodel/app/features/home/repositories/images_repository.dart';

part 'images_state.dart';
part 'images_cubit.freezed.dart';

class ImagesCubit extends Cubit<ImagesState> {
  final ImagesRepository repository;

  ImagesCubit(this.repository) : super(ImagesState.loadInitial());

  void load() async {
    emit(ImagesState.loadLoading());
    final result = await repository.fetchAll();
    result.fold(
      (errorMessage) => emit(ImagesState.loadFailure(errorMessage)),
      (data) => emit(ImagesState.loadSuccess(data)),
    );
  }
}
