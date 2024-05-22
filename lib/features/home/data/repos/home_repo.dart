import 'package:bookly/core/errors/failures.dart';
import 'package:dartz/dartz.dart';

import '../models/book_model/book_model.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<BookModel>>> fetchBestSellerBox();
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBox();
}
