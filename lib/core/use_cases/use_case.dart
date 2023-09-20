import 'package:dartz/dartz.dart';
import 'package:flutter_booky_1/core/errors/failure.dart';

abstract class UseCase<Type, param> {
  Future<Either<Failure, Type>> call([param param]);
}

class NoParam {}
