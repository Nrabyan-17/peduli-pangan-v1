class ProductFilters {
  final String? q;            // search by name
  final int? categoryId;
  final bool onlyActive;
  final int limit;
  final DateTime? before;     // cursor by createdAt (descending)

  const ProductFilters({
    this.q,
    this.categoryId,
    this.onlyActive = true,
    this.limit = 20,
    this.before,
  });

  ProductFilters copyWith({
    String? q,
    int? categoryId,
    bool? onlyActive,
    int? limit,
    DateTime? before,
  }) => ProductFilters(
        q: q ?? this.q,
        categoryId: categoryId ?? this.categoryId,
        onlyActive: onlyActive ?? this.onlyActive,
        limit: limit ?? this.limit,
        before: before ?? this.before,
      );
}
