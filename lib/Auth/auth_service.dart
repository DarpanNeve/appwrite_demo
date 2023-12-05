import 'package:appwrite/appwrite.dart';

class AuthService{
   googleSignIn(){
     Client client = Client();
     Account account = Account(client);

     client
         .setEndpoint('https://cloud.appwrite.io/v1') // Your API Endpoint
         .setProject('64539b6ada92acc8ca15') // Your project ID
         ;
     Future result = account.createOAuth2Session(
       provider: 'google',
     );

     result
         .then((response) {
       print("appwrite response ${response}");
     }).catchError((error) {
       print("appwrite response ${error.response}");
     });
   }
}