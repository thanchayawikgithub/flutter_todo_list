import 'package:flutter/material.dart';

class TodoList extends StatefulWidget {
  TodoList({Key? key}) : super(key: key);
  static const nameRoute = '/todo_list';
  @override
  _TodoListState createState() => _TodoListState();
}

class _TodoListState extends State<TodoList> {
  List<String> _todos = ['a', 'b', 'c'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Todo List'),
      ),
      body: Container(
        child: Column(
          children: [
            Row(children: [
              Expanded(flex: 2, child: TextField()),
              Expanded(
                  flex: 1,
                  child: ElevatedButton(onPressed: () {}, child: Text('Add')))
            ]),
            Expanded(
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(_todos[index]),
                  );
                },
                itemCount: _todos.length,
              ),
            )
          ],
        ),
      ),
    );
  }
}
