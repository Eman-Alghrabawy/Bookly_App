import 'package:flutter_booky_1/core/errors/failure.dart';
import 'package:flutter_booky_1/features/home/domain/entities/book_entity.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<BookEntity>>> fetchFeaturedBooks();
  Future<Either<Failure, List<BookEntity>>> fetchNewsetBooks();
}
