import 'package:change_application_name/application.dart';
import 'package:tutorial/tutorial.dart';

part 'generated/e1_example_entities.freezed.dart';

/// ⭐️ Name convention:
/// Suffix must be "...Entity"
@freezed
class MovieListEntity with _$MovieListEntity {
  /// ⭐️ Added constructor. Must not have any parameter if you want
  /// to add another method in this class
  const MovieListEntity._();

  const factory MovieListEntity({
    @Default([]) Iterable<MovieEntity> movieList,
  }) = _MovieListEntity;

  static MovieListEntity fromTableDataList(
      Iterable<ExampleMovieTableData> dataList) => MovieListEntity(
      movieList: dataList.map(
        (e) => MovieEntity(id: e.id, name: e.name),
      ),
    );
}

@freezed
class MovieEntity with _$MovieEntity {
  const MovieEntity._();

  const factory MovieEntity({
    required String id,
    required String name,
  }) = _MovieEntity;
}
