import 'package:dartz/dartz.dart';
import 'package:e_commerce_app/core/error/failures/failures.dart';
import 'package:e_commerce_app/feature/home/data/data_sources/home_ds.dart';
import 'package:e_commerce_app/feature/home/data/models/brands_model.dart';
import 'package:e_commerce_app/feature/home/data/models/product_model.dart';
import 'package:e_commerce_app/feature/home/domain/repositories/home_repo.dart';

class GetProductUseCase{
  HomeRepo homeRepo;
  GetProductUseCase(this.homeRepo);
 Future<Either<Failures, ProductModel>> call()=>homeRepo.getProduct();
}