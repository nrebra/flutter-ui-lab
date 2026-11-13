class PostModel1 {
  int? userId;
  int? id;
  String? title;
  String? body;
}

//sonradan da update edilebilir, null olabilir.
class PostModel2 {
  int userId;
  int id;
  String title;
  String body;
  PostModel2(this.userId, this.id, this.title, this.body);
}

//sonradan da update edilemez, null olamaz.
class PostModel3 {
  final int userId;
  final int id;
  final String title;
  final String body;
  PostModel3(this.userId, this.id, this.title, this.body);
}
//sonradan da update edilemez, null olamaz. named constructor
class PostModel4 {
  final int userId;
  final int id;
  final String title;
  final String body;
  PostModel4({
    required this.userId,
    required this.id,
    required this.title,
    required this.body,
  });
}
//sonradan da update edilemez, null olamaz. named constructor, private field
class PostModel5 {
  final int _userId;
  final int _id;
  final String _title;
  final String _body;
 int get userId => _userId;
  PostModel5({
    required int userId,
    required int id,
    required String title,
    required String body,
  }): _userId = userId,
    _id = id,
    _title = title,
    _body = body;
}   
//sonradan da update edilemez, null olamaz. named constructor, private field, late final
class PostModel6{
  late final int _userId;
  late final int _id;
  late final String _title;
  late final String _body;

  PostModel6({
    required int userId,
    required int id,
    required String title,
    required String body,
  }): _userId = userId,
    _id = id,
    _title = title,
    _body = body;
}   
class PostModel7 {
  final int? userId;
  final int? id;
  final String? title;
  final String? body;

  PostModel7({
    this.userId,
    this.id,
    this.title,
    this.body,
  });
}   

