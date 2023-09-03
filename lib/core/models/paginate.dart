import 'dart:convert';

class Paginate {
  Paginate({
    required this.total,
    required this.count,
    required this.perPage,
    required this.nextPageUrl,
    required this.prevPageUrl,
    required this.currentPage,
    required this.totalPages,
  });
  final int total;
  final int count;
  final int perPage;
  final String nextPageUrl;
  final String prevPageUrl;
  final int currentPage;
  final int totalPages;

  Paginate copyWith({
    int? total,
    int? count,
    int? perPage,
    String? nextPageUrl,
    String? prevPageUrl,
    int? currentPage,
    int? totalPages,
  }) {
    return Paginate(
      total: total ?? this.total,
      count: count ?? this.count,
      perPage: perPage ?? this.perPage,
      nextPageUrl: nextPageUrl ?? this.nextPageUrl,
      prevPageUrl: prevPageUrl ?? this.prevPageUrl,
      currentPage: currentPage ?? this.currentPage,
      totalPages: totalPages ?? this.totalPages,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'total': total,
      'count': count,
      'per_page': perPage,
      'next_page_url': nextPageUrl,
      'prev_page_url': prevPageUrl,
      'current_page': currentPage,
      'total_pages': totalPages,
    };
  }

  factory Paginate.fromMap(Map<String, dynamic> map) {
    return Paginate(
      total: map['total']?.toInt() ?? 0,
      count: map['count']?.toInt() ?? 0,
      perPage: map['per_page']?.toInt() ?? 0,
      nextPageUrl: map['next_page_url'] ?? '',
      prevPageUrl: map['prev_page_url'] ?? '',
      currentPage: map['current_page']?.toInt() ?? 0,
      totalPages: map['total_pages']?.toInt() ?? 0,
    );
  }

  String toJson() => json.encode(toMap());

  factory Paginate.fromJson(String source) =>
      Paginate.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Paginate(total: $total, count: $count, perPage: $perPage, nextPageUrl: $nextPageUrl, prevPageUrl: $prevPageUrl, currentPage: $currentPage, totalPages: $totalPages)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Paginate &&
        other.total == total &&
        other.count == count &&
        other.perPage == perPage &&
        other.nextPageUrl == nextPageUrl &&
        other.prevPageUrl == prevPageUrl &&
        other.currentPage == currentPage &&
        other.totalPages == totalPages;
  }

  @override
  int get hashCode {
    return total.hashCode ^
        count.hashCode ^
        perPage.hashCode ^
        nextPageUrl.hashCode ^
        prevPageUrl.hashCode ^
        currentPage.hashCode ^
        totalPages.hashCode;
  }
}
