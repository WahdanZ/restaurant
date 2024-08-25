/// A class representing server errors with a title and a list of specific errors.
class BaseServerError<T> {
  /// The title of the error.
  final String? title;

  /// A list of specific errors of type [T].
  final List<T>? errors;

  /// Constructs a [BaseServerError] with an optional [title] and [errors].
  BaseServerError({this.title, this.errors});

  /// Creates a [BaseServerError] from a [map].
  /// [fromJsonMode] is a function that converts a map to an instance of [T].
  factory BaseServerError.fromMap(
      Map<String, dynamic> map, JsonMapper<T> fromJsonMode) {
    final errors = map['errors'] as List<dynamic>?;

    return BaseServerError(
      title: map['title'] as String?,
      errors:
          errors?.map((e) => fromJsonMode(e as Map<String, dynamic>)).toList(),
    );
  }

  /// Converts the [BaseServerError] to a map.
  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'errors': errors,
    };
  }
}

/// A typedef for a function that converts a map to an instance of [T].
typedef JsonMapper<T> = T Function(Map<String, dynamic> json);
