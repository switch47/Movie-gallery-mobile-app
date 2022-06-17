import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TodoList extends StatefulWidget {
  @override
  _TodoListState createState() => _TodoListState();
}

class _TodoListState extends State<TodoList> {
  List todoItems = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: Container(
              decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('images/head.png'),
                  )
              )
          ),
          title: Stack(
              children:<Widget>[
                Text(
                    'MY-MOVIE-LIST',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      foreground: Paint()
                        ..style = PaintingStyle.stroke
                        ..strokeWidth = 6
                        ..color = Colors.red[700]!,
                      fontSize: 30,
                    )
                ),
                const Text(
                    'MY-MOVIE-LIST',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                    )
                )
              ]
          )
      ),
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('images/mainBackground.jpg'),
                    fit: BoxFit.fill
                )
            ),
          ),
          CreateTodoList(),
        ],
      ),
      floatingActionButton:FloatingActionButton(
        onPressed: navigateTodoScreen,
        tooltip: "Create Task",
        child: Icon(Icons.add),),
      floatingActionButtonLocation:FloatingActionButtonLocation.centerFloat,
    );
  }

  void navigateTodoScreen(){
    Navigator.of(context).push(MaterialPageRoute(
        builder:(context){
          return Scaffold(
            appBar: AppBar(
              title:Text("Add Your Movie"),

            ),
            body:TextField(
              autofocus: true,
              onSubmitted: (val){
                addItem(val);
                Navigator.pop(context);
              },
              // decoration: ,

            ),

          );
        }
    ));
  }

  // completed navigatorscreen

  void addItem(String val){
    if (val.length>0){
      setState(() {
        todoItems.add(val);
      });
    }
  }

  Widget CreateTodoList () {
    return ListView.builder(
      itemCount: todoItems.length,
      itemBuilder: (context, index){
        return CreateTodoItem(todoItems[index],
            index);
      },);
  }
  // completed CreateTodolist
  Widget CreateTodoItem ( String todoText, int index ){
    return ListTile(
      title: Text(todoText,
      style: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 40.0,
          color: Colors.white
        )
      ),
      onTap: ()=> showAlertToRemove(index),
    );
  }

  // Widget CreateTodoItem ( String todoText, int index ) {
  //   return Scaffold(
  //     body: InkWell(
  //         onTap:() => showAlertToRemove(index),
  //         child: Stack(
  //           children: [
  //             Column(
  //               crossAxisAlignment: CrossAxisAlignment.start,
  //               children: [
  //                 Expanded(child: ListView(
  //                   children: [
  //                     CardWidget(title: Text(
  //                         "hello",
  //                         style: const TextStyle(
  //                             fontWeight: FontWeight.bold,
  //                             fontSize: 20.0
  //                         ),
  //                       ),
  //
  //                     )
  //
  //                   ],
  //                 ))
  //               ],
  //             ),
  //           ],
  //         )
  //     )
  //   );
  // }

  void showAlertToRemove(int index){
    showDialog(
        context: context,
        builder: (BuildContext context){
          return AlertDialog(
            title: Text("Want to delete?"),
            actions:[
              FlatButton(
                child: Text("Cancel"),
                onPressed: ()=>
                    Navigator.of(context).pop(),
              ),
              FlatButton(
                child: Text("Delete"),
                onPressed: (){
                  deleteTodoItem(index);
                  Navigator.of(context).pop();

                },
              )

            ],
          );
        });
  }
  void deleteTodoItem(int index){
    setState(() {
      todoItems.removeAt(index);
    });
  }



}