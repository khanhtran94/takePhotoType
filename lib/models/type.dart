class Type {
  static const tblType = 'types';
  static const colId = 'id';
  static const colName = 'name';
  static const colCreateDate = 'createDate';

  int id;
  String name;
  DateTime createDate;

  Type({this.id, this.name, this.createDate});

  Map<String, dynamic> toMap() {
    var map = <String, dynamic>{colName: name, colCreateDate: createDate};

    if (id != null) {
      map[colId] = id;
    }

    return map;
  }

  Type.fromMap(Map<String, dynamic> map) {
    id = map[colId];
    name = map[colName];
    createDate = map[createDate];
  }
}
