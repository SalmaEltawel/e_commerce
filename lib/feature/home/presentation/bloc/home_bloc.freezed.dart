// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HomeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getCategories,
    required TResult Function() getBrands,
    required TResult Function() getProduct,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getCategories,
    TResult? Function()? getBrands,
    TResult? Function()? getProduct,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getCategories,
    TResult Function()? getBrands,
    TResult Function()? getProduct,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(GetCategoriesEvent value) getCategories,
    required TResult Function(GetBrandsEvent value) getBrands,
    required TResult Function(GetProductEvent value) getProduct,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(GetCategoriesEvent value)? getCategories,
    TResult? Function(GetBrandsEvent value)? getBrands,
    TResult? Function(GetProductEvent value)? getProduct,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(GetCategoriesEvent value)? getCategories,
    TResult Function(GetBrandsEvent value)? getBrands,
    TResult Function(GetProductEvent value)? getProduct,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeEventCopyWith<$Res> {
  factory $HomeEventCopyWith(HomeEvent value, $Res Function(HomeEvent) then) =
      _$HomeEventCopyWithImpl<$Res, HomeEvent>;
}

/// @nodoc
class _$HomeEventCopyWithImpl<$Res, $Val extends HomeEvent>
    implements $HomeEventCopyWith<$Res> {
  _$HomeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'HomeEvent.started()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getCategories,
    required TResult Function() getBrands,
    required TResult Function() getProduct,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getCategories,
    TResult? Function()? getBrands,
    TResult? Function()? getProduct,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getCategories,
    TResult Function()? getBrands,
    TResult Function()? getProduct,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(GetCategoriesEvent value) getCategories,
    required TResult Function(GetBrandsEvent value) getBrands,
    required TResult Function(GetProductEvent value) getProduct,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(GetCategoriesEvent value)? getCategories,
    TResult? Function(GetBrandsEvent value)? getBrands,
    TResult? Function(GetProductEvent value)? getProduct,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(GetCategoriesEvent value)? getCategories,
    TResult Function(GetBrandsEvent value)? getBrands,
    TResult Function(GetProductEvent value)? getProduct,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements HomeEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$GetCategoriesEventImplCopyWith<$Res> {
  factory _$$GetCategoriesEventImplCopyWith(_$GetCategoriesEventImpl value,
          $Res Function(_$GetCategoriesEventImpl) then) =
      __$$GetCategoriesEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetCategoriesEventImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$GetCategoriesEventImpl>
    implements _$$GetCategoriesEventImplCopyWith<$Res> {
  __$$GetCategoriesEventImplCopyWithImpl(_$GetCategoriesEventImpl _value,
      $Res Function(_$GetCategoriesEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetCategoriesEventImpl implements GetCategoriesEvent {
  const _$GetCategoriesEventImpl();

  @override
  String toString() {
    return 'HomeEvent.getCategories()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetCategoriesEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getCategories,
    required TResult Function() getBrands,
    required TResult Function() getProduct,
  }) {
    return getCategories();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getCategories,
    TResult? Function()? getBrands,
    TResult? Function()? getProduct,
  }) {
    return getCategories?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getCategories,
    TResult Function()? getBrands,
    TResult Function()? getProduct,
    required TResult orElse(),
  }) {
    if (getCategories != null) {
      return getCategories();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(GetCategoriesEvent value) getCategories,
    required TResult Function(GetBrandsEvent value) getBrands,
    required TResult Function(GetProductEvent value) getProduct,
  }) {
    return getCategories(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(GetCategoriesEvent value)? getCategories,
    TResult? Function(GetBrandsEvent value)? getBrands,
    TResult? Function(GetProductEvent value)? getProduct,
  }) {
    return getCategories?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(GetCategoriesEvent value)? getCategories,
    TResult Function(GetBrandsEvent value)? getBrands,
    TResult Function(GetProductEvent value)? getProduct,
    required TResult orElse(),
  }) {
    if (getCategories != null) {
      return getCategories(this);
    }
    return orElse();
  }
}

abstract class GetCategoriesEvent implements HomeEvent {
  const factory GetCategoriesEvent() = _$GetCategoriesEventImpl;
}

/// @nodoc
abstract class _$$GetBrandsEventImplCopyWith<$Res> {
  factory _$$GetBrandsEventImplCopyWith(_$GetBrandsEventImpl value,
          $Res Function(_$GetBrandsEventImpl) then) =
      __$$GetBrandsEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetBrandsEventImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$GetBrandsEventImpl>
    implements _$$GetBrandsEventImplCopyWith<$Res> {
  __$$GetBrandsEventImplCopyWithImpl(
      _$GetBrandsEventImpl _value, $Res Function(_$GetBrandsEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetBrandsEventImpl implements GetBrandsEvent {
  const _$GetBrandsEventImpl();

  @override
  String toString() {
    return 'HomeEvent.getBrands()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetBrandsEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getCategories,
    required TResult Function() getBrands,
    required TResult Function() getProduct,
  }) {
    return getBrands();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getCategories,
    TResult? Function()? getBrands,
    TResult? Function()? getProduct,
  }) {
    return getBrands?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getCategories,
    TResult Function()? getBrands,
    TResult Function()? getProduct,
    required TResult orElse(),
  }) {
    if (getBrands != null) {
      return getBrands();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(GetCategoriesEvent value) getCategories,
    required TResult Function(GetBrandsEvent value) getBrands,
    required TResult Function(GetProductEvent value) getProduct,
  }) {
    return getBrands(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(GetCategoriesEvent value)? getCategories,
    TResult? Function(GetBrandsEvent value)? getBrands,
    TResult? Function(GetProductEvent value)? getProduct,
  }) {
    return getBrands?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(GetCategoriesEvent value)? getCategories,
    TResult Function(GetBrandsEvent value)? getBrands,
    TResult Function(GetProductEvent value)? getProduct,
    required TResult orElse(),
  }) {
    if (getBrands != null) {
      return getBrands(this);
    }
    return orElse();
  }
}

abstract class GetBrandsEvent implements HomeEvent {
  const factory GetBrandsEvent() = _$GetBrandsEventImpl;
}

/// @nodoc
abstract class _$$GetProductEventImplCopyWith<$Res> {
  factory _$$GetProductEventImplCopyWith(_$GetProductEventImpl value,
          $Res Function(_$GetProductEventImpl) then) =
      __$$GetProductEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetProductEventImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$GetProductEventImpl>
    implements _$$GetProductEventImplCopyWith<$Res> {
  __$$GetProductEventImplCopyWithImpl(
      _$GetProductEventImpl _value, $Res Function(_$GetProductEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetProductEventImpl implements GetProductEvent {
  const _$GetProductEventImpl();

  @override
  String toString() {
    return 'HomeEvent.getProduct()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetProductEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getCategories,
    required TResult Function() getBrands,
    required TResult Function() getProduct,
  }) {
    return getProduct();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getCategories,
    TResult? Function()? getBrands,
    TResult? Function()? getProduct,
  }) {
    return getProduct?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getCategories,
    TResult Function()? getBrands,
    TResult Function()? getProduct,
    required TResult orElse(),
  }) {
    if (getProduct != null) {
      return getProduct();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(GetCategoriesEvent value) getCategories,
    required TResult Function(GetBrandsEvent value) getBrands,
    required TResult Function(GetProductEvent value) getProduct,
  }) {
    return getProduct(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(GetCategoriesEvent value)? getCategories,
    TResult? Function(GetBrandsEvent value)? getBrands,
    TResult? Function(GetProductEvent value)? getProduct,
  }) {
    return getProduct?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(GetCategoriesEvent value)? getCategories,
    TResult Function(GetBrandsEvent value)? getBrands,
    TResult Function(GetProductEvent value)? getProduct,
    required TResult orElse(),
  }) {
    if (getProduct != null) {
      return getProduct(this);
    }
    return orElse();
  }
}

abstract class GetProductEvent implements HomeEvent {
  const factory GetProductEvent() = _$GetProductEventImpl;
}

/// @nodoc
mixin _$HomeState {
  RequestStatus get getCategoriesStatus => throw _privateConstructorUsedError;
  RequestStatus get getBrandsStatus => throw _privateConstructorUsedError;
  RequestStatus get getProductStatus => throw _privateConstructorUsedError;
  CategoriesModel? get categoriesModel => throw _privateConstructorUsedError;
  BrandsModel? get brandsModel => throw _privateConstructorUsedError;
  ProductModel? get productModel => throw _privateConstructorUsedError;
  Failures? get categoryFailures => throw _privateConstructorUsedError;
  Failures? get brandFailures => throw _privateConstructorUsedError;
  Failures? get productFailures => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeStateCopyWith<HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
  @useResult
  $Res call(
      {RequestStatus getCategoriesStatus,
      RequestStatus getBrandsStatus,
      RequestStatus getProductStatus,
      CategoriesModel? categoriesModel,
      BrandsModel? brandsModel,
      ProductModel? productModel,
      Failures? categoryFailures,
      Failures? brandFailures,
      Failures? productFailures});
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res, $Val extends HomeState>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? getCategoriesStatus = null,
    Object? getBrandsStatus = null,
    Object? getProductStatus = null,
    Object? categoriesModel = freezed,
    Object? brandsModel = freezed,
    Object? productModel = freezed,
    Object? categoryFailures = freezed,
    Object? brandFailures = freezed,
    Object? productFailures = freezed,
  }) {
    return _then(_value.copyWith(
      getCategoriesStatus: null == getCategoriesStatus
          ? _value.getCategoriesStatus
          : getCategoriesStatus // ignore: cast_nullable_to_non_nullable
              as RequestStatus,
      getBrandsStatus: null == getBrandsStatus
          ? _value.getBrandsStatus
          : getBrandsStatus // ignore: cast_nullable_to_non_nullable
              as RequestStatus,
      getProductStatus: null == getProductStatus
          ? _value.getProductStatus
          : getProductStatus // ignore: cast_nullable_to_non_nullable
              as RequestStatus,
      categoriesModel: freezed == categoriesModel
          ? _value.categoriesModel
          : categoriesModel // ignore: cast_nullable_to_non_nullable
              as CategoriesModel?,
      brandsModel: freezed == brandsModel
          ? _value.brandsModel
          : brandsModel // ignore: cast_nullable_to_non_nullable
              as BrandsModel?,
      productModel: freezed == productModel
          ? _value.productModel
          : productModel // ignore: cast_nullable_to_non_nullable
              as ProductModel?,
      categoryFailures: freezed == categoryFailures
          ? _value.categoryFailures
          : categoryFailures // ignore: cast_nullable_to_non_nullable
              as Failures?,
      brandFailures: freezed == brandFailures
          ? _value.brandFailures
          : brandFailures // ignore: cast_nullable_to_non_nullable
              as Failures?,
      productFailures: freezed == productFailures
          ? _value.productFailures
          : productFailures // ignore: cast_nullable_to_non_nullable
              as Failures?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HomeStateImplCopyWith<$Res>
    implements $HomeStateCopyWith<$Res> {
  factory _$$HomeStateImplCopyWith(
          _$HomeStateImpl value, $Res Function(_$HomeStateImpl) then) =
      __$$HomeStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {RequestStatus getCategoriesStatus,
      RequestStatus getBrandsStatus,
      RequestStatus getProductStatus,
      CategoriesModel? categoriesModel,
      BrandsModel? brandsModel,
      ProductModel? productModel,
      Failures? categoryFailures,
      Failures? brandFailures,
      Failures? productFailures});
}

/// @nodoc
class __$$HomeStateImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$HomeStateImpl>
    implements _$$HomeStateImplCopyWith<$Res> {
  __$$HomeStateImplCopyWithImpl(
      _$HomeStateImpl _value, $Res Function(_$HomeStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? getCategoriesStatus = null,
    Object? getBrandsStatus = null,
    Object? getProductStatus = null,
    Object? categoriesModel = freezed,
    Object? brandsModel = freezed,
    Object? productModel = freezed,
    Object? categoryFailures = freezed,
    Object? brandFailures = freezed,
    Object? productFailures = freezed,
  }) {
    return _then(_$HomeStateImpl(
      getCategoriesStatus: null == getCategoriesStatus
          ? _value.getCategoriesStatus
          : getCategoriesStatus // ignore: cast_nullable_to_non_nullable
              as RequestStatus,
      getBrandsStatus: null == getBrandsStatus
          ? _value.getBrandsStatus
          : getBrandsStatus // ignore: cast_nullable_to_non_nullable
              as RequestStatus,
      getProductStatus: null == getProductStatus
          ? _value.getProductStatus
          : getProductStatus // ignore: cast_nullable_to_non_nullable
              as RequestStatus,
      categoriesModel: freezed == categoriesModel
          ? _value.categoriesModel
          : categoriesModel // ignore: cast_nullable_to_non_nullable
              as CategoriesModel?,
      brandsModel: freezed == brandsModel
          ? _value.brandsModel
          : brandsModel // ignore: cast_nullable_to_non_nullable
              as BrandsModel?,
      productModel: freezed == productModel
          ? _value.productModel
          : productModel // ignore: cast_nullable_to_non_nullable
              as ProductModel?,
      categoryFailures: freezed == categoryFailures
          ? _value.categoryFailures
          : categoryFailures // ignore: cast_nullable_to_non_nullable
              as Failures?,
      brandFailures: freezed == brandFailures
          ? _value.brandFailures
          : brandFailures // ignore: cast_nullable_to_non_nullable
              as Failures?,
      productFailures: freezed == productFailures
          ? _value.productFailures
          : productFailures // ignore: cast_nullable_to_non_nullable
              as Failures?,
    ));
  }
}

/// @nodoc

class _$HomeStateImpl implements _HomeState {
  const _$HomeStateImpl(
      {this.getCategoriesStatus = RequestStatus.init,
      this.getBrandsStatus = RequestStatus.init,
      this.getProductStatus = RequestStatus.init,
      this.categoriesModel,
      this.brandsModel,
      this.productModel,
      this.categoryFailures,
      this.brandFailures,
      this.productFailures});

  @override
  @JsonKey()
  final RequestStatus getCategoriesStatus;
  @override
  @JsonKey()
  final RequestStatus getBrandsStatus;
  @override
  @JsonKey()
  final RequestStatus getProductStatus;
  @override
  final CategoriesModel? categoriesModel;
  @override
  final BrandsModel? brandsModel;
  @override
  final ProductModel? productModel;
  @override
  final Failures? categoryFailures;
  @override
  final Failures? brandFailures;
  @override
  final Failures? productFailures;

  @override
  String toString() {
    return 'HomeState(getCategoriesStatus: $getCategoriesStatus, getBrandsStatus: $getBrandsStatus, getProductStatus: $getProductStatus, categoriesModel: $categoriesModel, brandsModel: $brandsModel, productModel: $productModel, categoryFailures: $categoryFailures, brandFailures: $brandFailures, productFailures: $productFailures)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeStateImpl &&
            (identical(other.getCategoriesStatus, getCategoriesStatus) ||
                other.getCategoriesStatus == getCategoriesStatus) &&
            (identical(other.getBrandsStatus, getBrandsStatus) ||
                other.getBrandsStatus == getBrandsStatus) &&
            (identical(other.getProductStatus, getProductStatus) ||
                other.getProductStatus == getProductStatus) &&
            (identical(other.categoriesModel, categoriesModel) ||
                other.categoriesModel == categoriesModel) &&
            (identical(other.brandsModel, brandsModel) ||
                other.brandsModel == brandsModel) &&
            (identical(other.productModel, productModel) ||
                other.productModel == productModel) &&
            (identical(other.categoryFailures, categoryFailures) ||
                other.categoryFailures == categoryFailures) &&
            (identical(other.brandFailures, brandFailures) ||
                other.brandFailures == brandFailures) &&
            (identical(other.productFailures, productFailures) ||
                other.productFailures == productFailures));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      getCategoriesStatus,
      getBrandsStatus,
      getProductStatus,
      categoriesModel,
      brandsModel,
      productModel,
      categoryFailures,
      brandFailures,
      productFailures);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeStateImplCopyWith<_$HomeStateImpl> get copyWith =>
      __$$HomeStateImplCopyWithImpl<_$HomeStateImpl>(this, _$identity);
}

abstract class _HomeState implements HomeState {
  const factory _HomeState(
      {final RequestStatus getCategoriesStatus,
      final RequestStatus getBrandsStatus,
      final RequestStatus getProductStatus,
      final CategoriesModel? categoriesModel,
      final BrandsModel? brandsModel,
      final ProductModel? productModel,
      final Failures? categoryFailures,
      final Failures? brandFailures,
      final Failures? productFailures}) = _$HomeStateImpl;

  @override
  RequestStatus get getCategoriesStatus;
  @override
  RequestStatus get getBrandsStatus;
  @override
  RequestStatus get getProductStatus;
  @override
  CategoriesModel? get categoriesModel;
  @override
  BrandsModel? get brandsModel;
  @override
  ProductModel? get productModel;
  @override
  Failures? get categoryFailures;
  @override
  Failures? get brandFailures;
  @override
  Failures? get productFailures;
  @override
  @JsonKey(ignore: true)
  _$$HomeStateImplCopyWith<_$HomeStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
