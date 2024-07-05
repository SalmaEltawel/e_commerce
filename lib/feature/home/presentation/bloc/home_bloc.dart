import 'package:bloc/bloc.dart';
import 'package:e_commerce_app/core/enum/enum.dart';
import 'package:e_commerce_app/core/error/failures/failures.dart';
import 'package:e_commerce_app/feature/home/data/models/brands_model.dart';
import 'package:e_commerce_app/feature/home/data/models/categories_model.dart';
import 'package:e_commerce_app/feature/home/data/models/product_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/use_cases/get_brands_usecase.dart';
import '../../domain/use_cases/get_categories_usecase.dart';
import '../../domain/use_cases/get_product_usecase.dart';

part 'home_event.dart';

part 'home_state.dart';

part 'home_bloc.freezed.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  GetCategoriesUseCase getCategoriesUseCase;
  GetBrandsUseCase getBrandsUseCase;
  GetProductUseCase getProductUseCase;

  HomeBloc({required this.getCategoriesUseCase,required this.getProductUseCase, required this.getBrandsUseCase})
      : super(const HomeState()) {
    on<GetCategoriesEvent>((event, emit) async {
      emit(state.copyWith(getCategoriesStatus: RequestStatus.loading));
      var result = await getCategoriesUseCase();
      result.fold((l) {
        emit(state.copyWith(
            getCategoriesStatus: RequestStatus.failures, categoryFailures: l));
      }, (r) {
        emit(state.copyWith(
            getCategoriesStatus: RequestStatus.success, categoriesModel: r));
      });
    });
    on<GetBrandsEvent>((event, emit) async {
      emit(state.copyWith(getBrandsStatus: RequestStatus.loading));
      var result = await getBrandsUseCase();
      result.fold((l) {
        emit(state.copyWith(
            getBrandsStatus: RequestStatus.failures, brandFailures: l));
      }, (r) {
        emit(state.copyWith(
            getBrandsStatus: RequestStatus.success, brandsModel: r));
      });
    });
    on<GetProductEvent>((event, emit) async {
      emit(state.copyWith(getProductStatus: RequestStatus.loading));
      var result = await getProductUseCase();
      result.fold((l) {
        emit(state.copyWith(
            getProductStatus: RequestStatus.failures, productFailures: l));
      }, (r) {
        emit(state.copyWith(
            getProductStatus: RequestStatus.success, productModel: r));
      });
    });

    }
}
