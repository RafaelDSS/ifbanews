class News {
  String? link;
  String? title;

  News({this.link, this.title});

  News.fromJson(Map<String, dynamic> json) {
    link = json['link'];
    title = json['title'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['link'] = link;
    data['title'] = title;
    return data;
  }
}
