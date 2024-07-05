part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState ({
   @Default(RequestStatus.init) RequestStatus getCategoriesStatus,
    @Default(RequestStatus.init) RequestStatus getBrandsStatus,
    @Default(RequestStatus.init) RequestStatus getProductStatus,

    CategoriesModel? categoriesModel,
    BrandsModel? brandsModel,
    ProductModel?productModel,
    Failures? categoryFailures,
    Failures? brandFailures,
    Failures? productFailures,




  }) = _HomeState;
}
