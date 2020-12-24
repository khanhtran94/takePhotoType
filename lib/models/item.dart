class Item {
  static const tblItem = 'items';
  static const colId = 'id';
  static const colTypeId = 'typeId';
  static const colPathImage = 'pathImage';
  static const colCreateDate = 'createDate';

  int id;
  String pathImage;
  int typeId;
  DateTime createDate;

  Item({this.id, this.typeId, this.pathImage, this.createDate});

  Map<String, dynamic> toMap() {
    var map = <String, dynamic>{
      colTypeId: typeId,
      colPathImage: pathImage,
      colCreateDate: createDate
    };

    if (id != null) {
      map[colId] = id;
    }

    return map;
  }

  Item.fromMap(Map<String, dynamic> map) {
    id = map[colId];
    typeId = map[colTypeId];
    pathImage = map[colPathImage];
    createDate = map[createDate];
  }
}
