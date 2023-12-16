import 'package:app write/app write.dart';

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
       print("app write response ${response}");
     }).catchError((error) {
       print("app write response ${error.response}");

     });
   }
}