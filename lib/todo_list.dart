import 'package:flutter/material.dart';

class TodoList extends StatefulWidget {
  TodoList({Key? key}) : super(key: key);
  static const nameRoute = '/todo_list';
  @override
  _TodoListState createState() => _TodoListState();
}

class _TodoListState extends State<TodoList> {
  List<String> _todos = [for (var i = 0; i < 100; i++) 'Todo $i'];
  late TextEditingController _controller;

  @override
  void initState() {
    _controller = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  _addTodo() {
    setState(() {
      _todos.add(_controller.text);
    });
    _controller.clear();
  }

  _delTodo(int index) {
    setState(() {
      _todos.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Todo List'),
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(children: [
              Expanded(
                  flex: 2,
                  child: TextField(
                    controller: _controller,
                    onSubmitted: (value) {
                      _addTodo();
                    },
                  )),
              Expanded(
                flex: 1,
                child: Padding(
                  child: ElevatedButton(
                      onPressed: () {
                        _addTodo();
                      },
                      child: Text('Add')),
                  padding: EdgeInsets.only(right: 16.0),
                ),
              )
            ]),
            Expanded(
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(_todos[index]),
                    trailing: IconButton(
                      icon: Icon(Icons.delete),
                      onPressed: () {
                        _delTodo(index);
                      },
                    ),
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
