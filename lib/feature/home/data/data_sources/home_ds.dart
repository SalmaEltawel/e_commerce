import 'package:dartz/dartz.dart';
import 'package:e_commerce_app/core/error/failures/failures.dart';
import 'package:e_commerce_app/feature/home/data/models/brands_model.dart';
import 'package:e_commerce_app/feature/home/data/models/product_model.dart';

import '../models/categories_model.dart';

abstract class HomeDs{
  Future<CategoriesModel> getCategories();
  Future<BrandsModel> getBrands();
  Future<ProductModel> getProduct();


}