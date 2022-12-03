enum Operators {
  $eq,
  $eqi,
  $ne,
  $lt,
  $lte,
  $gt,
  $gte,
  $in,
  $notIn,
  $contains,
  $notContains,
  $containsi,
  $notContainsi,
  $null,
  $notNull,
  $between,
  $startsWith,
  $endsWith,
  $or,
  $and,
}

class Params {
  final String _filters = "?filters";
  final String key;
  final dynamic value;
  final Operators operators;

  Params({
    required this.key,
    required this.value,
    required this.operators,
  });

  _switchOperators(Operators operators) {
    switch (operators) {
      case Operators.$and:
        return "\$and";
      case Operators.$eq:
        // TODO: Handle this case.
        return "\$eq";
      case Operators.$eqi:
        // TODO: Handle this case.
        return "\$eqi";
      case Operators.$ne:
        // TODO: Handle this case.
        return "\$ne";
      case Operators.$lt:
        // TODO: Handle this case.
        return "\$lt";
      case Operators.$lte:
        // TODO: Handle this case.
        return "\$lte";
      case Operators.$gt:
        // TODO: Handle this case.
        return "\$gt";
      case Operators.$gte:
        // TODO: Handle this case.
        return "\$gte";
      case Operators.$in:
        // TODO: Handle this case.
        return "\$in";
      case Operators.$notIn:
        // TODO: Handle this case.
        return "\$notIn";
      case Operators.$contains:
        // TODO: Handle this case.
        return "\$contains";
      case Operators.$notContains:
        // TODO: Handle this case.
        return "\$notContains";
      case Operators.$containsi:
        // TODO: Handle this case.
        return "\$containsi";
      case Operators.$notContainsi:
        // TODO: Handle this case.
        return "\$notContainsi";
      case Operators.$null:
        // TODO: Handle this case.
        return "\$null";
      case Operators.$notNull:
        // TODO: Handle this case.
        return "\$notNull";
      case Operators.$between:
        // TODO: Handle this case.
        return "\$between";
      case Operators.$startsWith:
        // TODO: Handle this case.
        return "\$startsWith";
      case Operators.$endsWith:
        // TODO: Handle this case.
        return "\$endsWith";
      case Operators.$or:
        // TODO: Handle this case.
        return "\$or";
    }
  }

  generate() {
    return "${_filters}[${key}][${_switchOperators(operators)}]=$value";
  }
}
