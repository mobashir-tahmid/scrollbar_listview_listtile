import 'package:flutter/material.dart';
void main (){
  runApp(myapp());
}
class myapp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: homescreen()
    );
  }



}
class homescreen extends StatelessWidget{
  mySnak(contex , msg){
    return ScaffoldMessenger.of (contex).showSnackBar(SnackBar(content:Text(msg)));
  }
  var MyItems =[
    {"name" : "Tahmid", "city": "Dhaka", "age":"25"},
    {"name" : "Mobashir", "city": "Dhaka", "age":"25"},
    {"name" : "Sadik", "city": "Dhaka", "age":"25"},
    {"name" : "Sadiks", "city": "Dhaka", "age":"25"},

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon( Icons.home),
        title: Text("Home"),
      ),
// body: ListView.builder(
//   itemCount:MyItems.length ,
//   itemBuilder: (context, index){
//     return ListTile(
//       leading: Icon(Icons.add),
//       title: Text(MyItems [index]['name']!),
//       subtitle: Text(MyItems [index]['city']!),
//     );
//   }
// ),
      body: GridView.builder(
          scrollDirection: Axis.vertical,
          itemCount: MyItems.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,crossAxisSpacing: 2),
          itemBuilder: (context, index){
            return InkWell(
              onTap: (){
                mySnak(context,MyItems[index]["name"]);
              },
              child: ListTile(
                leading: Icon(Icons.add),
                title: Text(MyItems[index]['name']!),
                subtitle: Text(MyItems[index]['city']!),
              ),
            );
          }
      ),
    );
  }

}