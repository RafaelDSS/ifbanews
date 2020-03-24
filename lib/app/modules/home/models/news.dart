class News {
  String link;
  String title;

  News({this.link, this.title});

  News.fromJson(Map<String, dynamic> json) {
    link = json['link'];
    title = json['title'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['link'] = this.link;
    data['title'] = this.title;
    return data;
  }
}
