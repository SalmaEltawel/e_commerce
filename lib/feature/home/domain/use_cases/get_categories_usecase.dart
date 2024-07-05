import 'package:dartz/dartz.dart';
import 'package:e_commerce_app/core/error/failures/failures.dart';
import 'package:e_commerce_app/feature/home/data/models/categories_model.dart';
import 'package:e_commerce_app/feature/home/domain/repositories/home_repo.dart';

class GetCategoriesUseCase {
  HomeRepo homeRepo;
  GetCategoriesUseCase(this.homeRepo);
  Future<Either<Failures, CategoriesModel>> call() => homeRepo.getCategories();


}