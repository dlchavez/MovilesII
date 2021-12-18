import 'package:flutter/material.dart';
import 'widgets.dart';

void main() => runApp(const MyApp());

List<int> items = List<int>.generate(100, (int index) => index);

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'Lista de Contactos ';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
          appBar: AppBar(
            title: const Text(_title),
            backgroundColor: Colors.cyan,
            centerTitle: true,
          ),
          body: Stack(
            children: [
              Positioned(
                  bottom: 330,
                  right: 85,
                  child: Container(
                    width: 200.0,
                    height: 200.0,
                    child: Imagen(ubi: "assets/icono.png"),
                  )),
              SizedBox.expand(
                child: DraggableScrollableSheet(
                  builder: (BuildContext context,
                      ScrollController scrollController) {
                    return ListView.builder(
                      itemCount: items.length,
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      itemBuilder: (BuildContext context, int index) {
                        return Dismissible(
                          background: Container(
                            color: Colors.green,
                          ),
                          key: ValueKey<int>(items[index]),
                          onDismissed: (DismissDirection direction) {
                            items.removeAt(index);
                          },
                          child: ListTile(
                            title: Text(
                              'Item ${items[index]}',
                            ),
                          ),
                        );
                      },
                    );
                  },
                ),
              ),
            ],
          )),
    );
  }
}
