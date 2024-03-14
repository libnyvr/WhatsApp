import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF075E54),
          title: Text('WhatsApp'),
          actions: [
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.more_vert),
              onPressed: () {},
            ),
          ],
        ),
        body: ListView.builder(
          itemCount: 20,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://th.bing.com/th/id/R.8777c0a66b713f752b59cfb8153be177?rik=94XGnd%2bXU4AbIw&pid=ImgRaw&r=0/150'),
              ),
              title: Text('Contacto desconocido'),
              subtitle: Text('Hola compañera, tiene la tarea.'),
              trailing: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('07:00 am'), // Hora del mensaje
                  Container(
                    width: 25,
                    height: 25,
                    decoration: BoxDecoration(
                      color: Colors.green,
                      shape: BoxShape.circle,
                    ),
                    child: Center(
                      child: Text(
                        '1',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
              onTap: () {},
            );
          },
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Color(0xFF25D366), // Color para WhatsApp
          onPressed: () {},
          child: Icon(Icons.chat),
        ),
        bottomNavigationBar: BottomAppBar(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                icon: Icon(Icons.message),
                onPressed: () {},
                tooltip: 'Chats',
              ),
              IconButton(
                icon: Icon(Icons.camera_alt),
                onPressed: () {},
                tooltip: 'Estados',
              ),
              IconButton(
                icon: Icon(Icons.people),
                onPressed: () {},
                tooltip: 'Comunidades',
              ),
              IconButton(
                icon: Icon(Icons.call),
                onPressed: () {},
                tooltip: 'Llamadas',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
