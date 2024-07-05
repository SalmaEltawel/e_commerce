import 'package:dartz/dartz.dart';
import 'package:e_commerce_app/core/error/failures/failures.dart';
import 'package:e_commerce_app/feature/home/data/models/brands_model.dart';
import 'package:e_commerce_app/feature/home/data/models/categories_model.dart';
import 'package:e_commerce_app/feature/home/data/models/product_model.dart';

abstract class HomeRepo{
 Future<Either<Failures,CategoriesModel>> getCategories();
 Future<Either<Failures,BrandsModel>> getBrands();
Future<Either<Failures,ProductModel>> getProduct();

}