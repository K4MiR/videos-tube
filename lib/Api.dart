import 'package:http/http.dart' as http;
import 'dart:convert';
const CHAVE_YOUTUBE_API = "AIzaSyDg3H8LK0JXV-tFOnSL7zCNH_qRqzqiwIM";
const ID_CANAL = "UC0cGVh96osM7yqMu0ENSKKQ";
const URL_BASE = "https://www.googleapis.com/youtube/v3/";

class Api {

  pesquisar(String pesquisa) async{

    http.Response response =  await http.get(Uri.parse(URL_BASE));(
      URL_BASE + "search"
          "?part=snippet"
          "&type=video"
          "&maxResults=20"
          "&order=date"
          "&key=$CHAVE_YOUTUBE_API"
          "&channelId=$ID_CANAL"
          "&q=$pesquisa"
    );

    if(response.statusCode == 200){
      print("resultado"  + response.body);

    }

  }

}