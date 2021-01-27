class comps {
  int id;
  String companyName;
  String slogan;
  String img;
  double lat;
  double lon;
  String date;
  String address;

  comps(
      {this.id,
      this.companyName,
      this.slogan,
      this.img,
      this.lat,
      this.lon,
      this.date,
      this.address});

  comps.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    companyName = json['Company_Name'];
    slogan = json['slogan'];
    img = json['img'];
    lat = json['lat'];
    lon = json['lon'];
    date = json['date'];
    address = json['address'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['Company_Name'] = this.companyName;
    data['slogan'] = this.slogan;
    data['img'] = this.img;
    data['lat'] = this.lat;
    data['lon'] = this.lon;
    data['date'] = this.date;
    data['address'] = this.address;
    return data;
  }
}
