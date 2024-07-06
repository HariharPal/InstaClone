// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:cloud_firestore/cloud_firestore.dart';

class Post {
  final String description;
  final String uid;
  final String username;
  final String postId;
  final dataPublished;
  final String postUrl;
  final String profileImage;
  final likes;
  Post({
    required this.description,
    required this.uid,
    required this.username,
    required this.postUrl,
    required this.postId,
    required this.dataPublished,
    required this.profileImage,
    required this.likes,
  });

  Map<String, dynamic> toJson() => {
        "username": username,
        "uid": uid,
        "description": description,
        "postUrl": postUrl,
        "dataPublished": dataPublished,
        "profileImage": profileImage,
        "likes": likes,
        "postId": postId,
      };
  static Post fromSnap(DocumentSnapshot snap) {
    var snapshot = snap.data() as Map<String, dynamic>;
    return Post(
      username: snapshot['username'],
      uid: snapshot['uid'],
      description: snapshot['description'],
      postUrl: snapshot['postUrl'],
      dataPublished: snapshot['dataPublished'],
      profileImage: snapshot['profileImage'],
      likes: snapshot['likes'],
      postId: snapshot['postId'],
    );
  }
}
