class MenuItem {
  dynamic id;
  dynamic title;
  dynamic content;
  // bool pin;
  // bool trash;
  dynamic dateTimeEdited;
  dynamic dateTimeCreated;

  // bool isTrashed; // new field added

  MenuItem({
    this.id,
    this.title,
    this.content,
    // this.pin = false,
    // this.trash = false,
    this.dateTimeEdited,
    this.dateTimeCreated,
    // this.isTrashed = false
  }); // default value of isTrashed is false

  Map<String, dynamic> toMap() {
    return {
      "id": this.id,
      "title": this.title,
      "content": this.content,
      // 'pin': pin ? 1 : 0,
      // 'trash': trash ? 1 : 0,
      "dateTimeEdited": this.dateTimeEdited,
      "dateTimeCreated": this.dateTimeCreated,
    };
  }

  static MenuItem fromMap(Map<String, dynamic> map) {
    return MenuItem(
        id: map['id'],
        title: map['title'],
        content: map['content'],
        // pin: map['pin'] == 1 ? true : false,
        // trash: map['trash'] == 1 ? true : false,
        dateTimeEdited: map["dateTimeEdited"],
        dateTimeCreated: map["dateTimeCreated"]);
  }
}
