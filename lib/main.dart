import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Column construirColumna(IconData icon, String label) {
      Color color = Theme.of(context).primaryColor;
      return Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Icon(icon, color: color),
          Container(
            margin: const EdgeInsets.only(top: 8.0),
            child: Text(
              label,
              style: TextStyle(
                fontSize: 12.0,
                fontWeight: FontWeight.w400,
                color: color,
              ),
            ),
          ),
        ],
      );
    }

    Widget titleSection = Container(
      padding: const EdgeInsets.all(32.0),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: Text(
                    "Marvel's Spider-Man",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  'Digital Trends',
                  style: TextStyle(
                    color: Colors.grey[500],
                  ),
                )
              ],
            ),
          ),
          Icon(
            Icons.stars,
            color: Colors.red[500],
          ),
          Text('41'),
        ],
      ),
    );

    Widget buttonSection = Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          construirColumna(Icons.gamepad, 'JUGAR'),
          construirColumna(Icons.shop, 'COMPRAR'),
          construirColumna(Icons.share, 'COMPARTIR'),
        ],
      ),
    );

    Widget seccionTexto = Container(
      padding: const EdgeInsets.all(32.0),
      child: Text(
        '''Cuando un nuevo villano amenaza a la ciudad de Nueva York, se produce una colisión entre el mundo de Peter Parker y el de Spider-Man. Para salvar a la ciudad y a aquellos a quienes ama, debe reaccionar y superarse a sí mismo.''',
        softWrap: true,
        maxLines: 4,
        overflow: TextOverflow.ellipsis,
      ),
    );
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: new ThemeData(
        primarySwatch: Colors.red,
      ),
      home: Scaffold(
        backgroundColor: Colors.cyan[50],
        appBar: AppBar(
          title: Text('Top Games'),
        ),
        body: ListView(
          children: <Widget>[
            Image.asset(
              'images/spiderman.jpg',
              width: 600.0,
              height: 240.0,
              fit: BoxFit.cover,
            ),
            titleSection,
            buttonSection,
            seccionTexto,
          ],
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.thumb_up),
          onPressed: () {},
        ),
      ),
    );
  }
}
