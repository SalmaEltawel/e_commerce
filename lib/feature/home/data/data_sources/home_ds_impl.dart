import 'package:dartz/dartz.dart';
import 'package:e_commerce_app/core/api/api_manager.dart';
import 'package:e_commerce_app/core/api/end_point.dart';
import 'package:e_commerce_app/core/error/failures/failures.dart';
import 'package:e_commerce_app/feature/home/data/data_sources/home_ds.dart';
import 'package:e_commerce_app/feature/home/data/models/brands_model.dart';
import 'package:e_commerce_app/feature/home/data/models/categories_model.dart';
import 'package:e_commerce_app/feature/home/data/models/product_model.dart';

class HomeDsImpl implements HomeDs {
  ApiManager apiManager;
  HomeDsImpl(this.apiManager);
  @override
  Future<CategoriesModel> getCategories() async {
    var response = await apiManager.getData(endPoint: EndPoints.category);
    CategoriesModel categoriesModel = CategoriesModel.fromJson(response.data);
    return categoriesModel;
  }

  @override
  Future<BrandsModel> getBrands()async {
   var response=await apiManager.getData(endPoint: EndPoints.brands);
   BrandsModel brandsModel=BrandsModel.fromJson(response.data);
   return brandsModel;
  }

  @override
  Future<ProductModel> getProduct()async {
    var response=await apiManager.getData(endPoint: EndPoints.product);
    ProductModel productModel=ProductModel.fromJson(response.data);
    return productModel;


  }
}
