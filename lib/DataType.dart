class DataType{
int userId;
String title;
String body;

DataType(this.userId, this.title, this.body);

DataType.fromjson(josndata){
   userId=josndata['userId'];
   title=josndata['title'];
   body=josndata['body'];
}

Map tojson(){
  Map<String,dynamic>data={'userId': userId, 'title': title,'body':body};
  return data;
}
}