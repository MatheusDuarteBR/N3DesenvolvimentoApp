import 'package:flutter/material.dart';
import 'package:cryptobas/screens/json_placeholder_service.dart';
import 'package:cryptobas/screens/dio_client.dart';

class Noticias extends StatefulWidget {
  final controller = HomeController(JsonPlaceholderService(DioClient()));
  @override
  void initState() {
    super.initState();
    controller.fetchAllTodos();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Noticias'),
      ),
      body: AnimatedBuilder(
        animation: controller,
        builder: (context, widget) {
          return ListView.builder(
            itemCount: controller.todos.length,
            itemBuilder: (context, index) {
              final todo = controller.todos[index];
              return ListTile(
                title: Text(todo.title),
              );
            },
          );
        },
      ),
    );
  }
}
