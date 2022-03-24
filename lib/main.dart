import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:rutas_app_flutter/src/pages/contactanos_page.dart';

void main() => runApp(const Basicos());

class Basicos extends StatelessWidget {
  const Basicos({Key? key}) : super(key: key);

  static const String _title = 'kapelis';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: _title,
      home: MyStatefulWidget(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

/// AnimationControllers can be created with `vsync: this` because of TickerProviderStateMixin.
class _MyStatefulWidgetState extends State<MyStatefulWidget>
    with TickerProviderStateMixin {
  late TabController _tabController;

  var index = 0;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Kapelis'),
        backgroundColor: Colors.black,
//----------------------------------------------------------------
        bottom: TabBar(
          controller: _tabController,
          tabs: const <Widget>[
            Tab(
              child: Text("Animadas"),
            ),
            Tab(
              child: Text("Terror"),
            ),
            Tab(
              child: Text("Romance"),
            ),
          ],
        ),
      ),

      body: TabBarView(
        controller: _tabController,
        children: const <Widget>[
          Center(
              child: Image(
            image: NetworkImage(
                'https://es.web.img2.acsta.net/pictures/14/11/17/10/48/120111.jpg'),
          )),
          Center(
              child: Image(
            image: NetworkImage(
                'https://pics.filmaffinity.com/It_Cap_tulo_2-844935737-large.jpg'),
          )),
          Center(
              child: Image(
            image: NetworkImage(
                'https://static.wikia.nocookie.net/doblaje/images/2/2b/Un_amor_tan_hermoso_poster.png/revision/latest?cb=20210402174457&path-prefix=es'),
          )),
        ],
      ),

//-------------------------------------------------------------------------------------------------
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: const <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text("Katherine Lizeth"),
              accountEmail: Text("kathyLizeth1@gmail.com"),
              decoration: BoxDecoration(
                color: Colors.black87,
              ),
              currentAccountPicture: CircleAvatar(
                  child: Image(
                      image: NetworkImage(
                          "https://scontent.fuio1-2.fna.fbcdn.net/v/t39.30808-6/277168059_5005552042869152_6433061758295867294_n.jpg?_nc_cat=106&ccb=1-5&_nc_sid=09cbfe&_nc_eui2=AeEcvTGFh0qTD3FtWPX1yLc-vXfBPFEgvOG9d8E8USC84UT4xN4WKxIJ2QY6YcPTqeQ7Y_W4rWsd82SpqPC-fKdY&_nc_ohc=wC6m2OcL3_IAX9wAfaw&_nc_ht=scontent.fuio1-2.fna&oh=00_AT_C4I0aM0oggW6kEvSGWY1O1BL9GsNmb7RHYsQZET_2bw&oe=6241368E"))),
            ),
            ListTile(
              leading: Icon(Icons.movie),
              title: Text('Peliculas'),
            ),
            ListTile(
              leading: Icon(Icons.local_movies),
              title: Text('Series'),
            ),
            ListTile(
              leading: Icon(Icons.download),
              title: Text('Descargar'),
            ),
          ],
        ),
      ),
//--------------------------------------------------------------------------------------------------------
      bottomNavigationBar: BottomNavigationBar(
        mouseCursor: SystemMouseCursors.grab,
        backgroundColor: Colors.white,
        currentIndex: index,
        onTap: (int index) {
          setState(() {
            this.index = index;
          });
        },
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.play_circle), label: 'Play'),
        ],
      ),
      //Barra de menu final

      //-----------------------------------------------------------------------------
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.message),
        backgroundColor: Colors.pink.shade100,
        onPressed: () {
          final ruta = MaterialPageRoute(
            builder: (context) {
              return const ContactanosPage();
            },
          );
          Navigator.push(context, ruta);
        },
      ),
    );
  }
}
