import 'package:dartz/dartz.dart';
import 'package:e_commerce_app/core/error/failures/failures.dart';
import 'package:e_commerce_app/feature/home/data/data_sources/home_ds.dart';
import 'package:e_commerce_app/feature/home/data/models/brands_model.dart';
import 'package:e_commerce_app/feature/home/data/models/categories_model.dart';
import 'package:e_commerce_app/feature/home/data/models/product_model.dart';
import 'package:e_commerce_app/feature/home/domain/repositories/home_repo.dart';

class HomeRepoImpl implements HomeRepo{
  HomeDs homeDs;
  HomeRepoImpl(this.homeDs);
  @override
  Future<Either<Failures, CategoriesModel>> getCategories()async {
    try{
      var result=await homeDs.getCategories();
      return Right(result);

    }catch(e){
      return Left( RemoteFailures(e.toString()));
    }
  }

  @override
  Future<Either<Failures, BrandsModel>> getBrands()async {
    try{
      var result=await homeDs.getBrands();
      return Right(result);
    }catch(e){
      return Left(RemoteFailures(e.toString()));
    }

  }

  @override
  Future<Either<Failures, ProductModel>> getProduct() async{
    try{
      var result=await homeDs.getProduct();
      return Right(result);
    }catch(e){
      return Left(RemoteFailures(e.toString()));

    }
  }
}

