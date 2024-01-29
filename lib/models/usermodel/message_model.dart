class MessagingModel {
  String? sender;
  String? receiver;
  String? message;
  String? timestamp;
  String? id;

  MessagingModel(
      {this.sender, this.receiver, this.message, this.timestamp, this.id});

  MessagingModel.fromJson(Map<String, dynamic> json) {
    sender = json['sender'];
    receiver = json['receiver'];
    message = json['message'];
    timestamp = json['timestamp'];
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['sender'] = this.sender;
    data['receiver'] = this.receiver;
    data['message'] = this.message;
    data['timestamp'] = this.timestamp;
    data['id'] = this.id;
    return data;
  }
}
