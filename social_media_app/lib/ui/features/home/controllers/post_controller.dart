
import 'package:social_media_app/logic/services/services.dart';

final _databaseService = DatabaseService();

class PostController {
  
  void postMessage(String message){
    if (message.isNotEmpty) {
      _databaseService.addPost(postText: message);
    }
  }
}