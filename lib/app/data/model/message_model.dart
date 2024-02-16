class MessageModel {
  String profileImage;
  String username;
  String description;
  List<MessageModel>? messages;

  MessageModel({
    required this.profileImage,
    required this.username,
    required this.description,
    required this.messages,
  });
}
