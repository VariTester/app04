import 'package:flutter/material.dart';

import 'item.dart';

class HomeScreen extends StatefulWidget {
  // const MyWidget({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {

    TextEditingController controller = TextEditingController();

    List<Item> searchList = ITEM_LIST  
    .where((element) =>
      element.name.toLowerCase().contains(text.toLowerCase()))
    .toList();

    return Scaffold(

      bottomNavigationBar: BottomNavigationBar(
        // type: BottomNavigationBarType.fixed,
         currentIndex: currentIndex,
         onTap: (index) => setState(() => currentIndex = index),
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: Color.fromARGB(255, 248, 46, 1) 

          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.nightlight_round),
            label: 'Sleep',
            backgroundColor: Colors.teal 

          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.format_shapes),
            label: 'Move',
            backgroundColor: Colors.orange 

          ),
           BottomNavigationBarItem(
            icon: Icon(Icons.explore),
            label: 'Explore',
            backgroundColor: Color.fromARGB(255, 6, 24, 39) 

          ),
           BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
            backgroundColor: Colors.brown

          ),

      ]),



      appBar: AppBar(
        //modificar color del appbar
        backgroundColor: Colors.teal,
        elevation: 0,
        centerTitle: true,

        //titulo appbar
        title: Text('Flutter',
          style: TextStyle(fontWeight: FontWeight.w900,color: Colors.white,fontSize: 17),
        ),

        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.mic_none,
              size: 25,
            ),
          )
        ],

        bottom: PreferredSize(
          //preferredSize: Size(3, 130), distancia top de la barra de busqueda
          preferredSize: Size(3, 130),
          child: Column(
            children: <Widget>[
              Padding(
                //tamaño de la barra de busqueda
                padding: const EdgeInsets.all(12),
                child: Container(
                  height: 45,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                  ),

                  child: TextFormField(
                    controller: controller,

                    onFieldSubmitted: (covariant){
                      setState(() {
                        text = covariant;
                      });
                    },

                    decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.search,
                        ),
                        hintText: "Search Headspace",
                        hintStyle: TextStyle(fontSize: 15)),
                  ), ),
                ),

                //UI de seccion de items
                Container(
                  // decoration: BoxDecoration(color: Colors.white.withOpacity(0.7)
                  // ,borderRadius: BorderRadius.only(
                  //   bottomLeft: Radius.circular(50),
                  //   bottomRight: Radius.circular(50),
                    
                  // )),
                  height: 50,
                  color: Colors.white.withOpacity(0.7),
                  

                  //para crear una caja que en cada widget pueda ser scroleado
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                        
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        
                        SizedBox(width: 10),

                        //llamamos a todos los items widget
                        _allItems(""),
                        SizedBox(width: 10),
                        

                        //para llamar a los widged por separado
                        _singleItem("Sleep"),
                        SizedBox(width: 10),
                        _singleItem("Walk"),
                        SizedBox(width: 10),
                        _singleItem("Relax"),
                        SizedBox(width: 10),
                        _singleItem("Morning"),
                        SizedBox(width: 10),
                        _singleItem("Featured"),
                        SizedBox(width: 10),
                      ],
                      ),
                  ),
                ),

                Container(
                  height: 30,
                  width: double.infinity,
                  color: Colors.yellow.withOpacity(0.9),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15,top: 3),
                    child: Text(
                      "Search for: $text",
                      style: 
                        TextStyle(fontSize: 15,fontWeight: FontWeight.w700),
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),

      body: ListView.builder(
        itemBuilder: (context, index) {
          return Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(left: 16),
                height: 100,
                child: Row(
                  children: <Widget>[
                    //UI para mostrar imagenes url de los items
                    Container(
                      height: 75,
                      width: 75,
                      child: Image.network(
                        searchList[index].imageUrl,
                        fit: BoxFit.contain,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 24,
                        left: 40,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          //UI para mostrar los nombres de los items
                          Text(
                            searchList[index].name,
                            style: TextStyle(
                              fontWeight: FontWeight.w800,
                              fontSize: 18,
                              color: Colors.black87,
                            ),
                          ),
                          Row(
                            children: [
                              Row(
                                children: <Widget>[
                                  IconButton(
                                    icon: Icon(
                                      Icons.adb,
                                      color: Colors.blue,
                                    ),
                                    onPressed: (){},
                                  )
                                ],
                              ),
                              Row(
                                children: <Widget>[
                                  //UI DE LOS CODIGOS DE LOS ICONOS
                                  IconButton(
                                    icon: Icon(
                                      Icons.code,
                                      color: Colors.black,
                                    ),
                                    onPressed: (){},
                                  )
                                ],
                              ),

                              // codigo de añadir a favoritos dentro de los items
                              searchList[index].favorite == 0
                                ? Padding(
                                    padding: const EdgeInsets.all(0.0),
                                    //UI DE FAVORITOS
                                     child: IconButton(
                                      icon: Icon(Icons.favorite_border),
                                      color: Colors.red,

                                      //codigo para añadir a favoritos
                                      onPressed: (){
                                        setState(() {
                                          searchList[index].favorite++;
                                        });
                                      },


                                       ),
                                  )
                                  :Row(
                                    children: <Widget>[
                                      //UI de favorite_border icon
                                      IconButton(
                                        icon: Icon(
                                          Icons.favorite,
                                          color: Colors.red,
                                        ),
                                        //codigo para quitar el favorito
                                        onPressed: (){
                                          setState(() {
                                            searchList[index]
                                              .favorite--;
                                          });
                                        },
                                        ),  
                                    ],
                                  )
                            ],
                          ),
                        ])),
                  ],
                ),
              ),
              Divider(
                thickness: 3,
              )
            ],
          );
        
          },
        itemCount: searchList.length,
      
        ));
  }

  Widget _allItems(String searchText){
  return RaisedButton(
    elevation: 2,
    color: Colors.red,
    child: Text(
      'all',
      style: TextStyle(color: Colors.white),
    ),
    onPressed: (){  
      setState((){
        text = searchText;
      });
    },
  );
}

Widget _singleItem(String searchText){
  return RaisedButton(
    elevation: 2,
    color: Colors.red,
    child: Text(
      searchText,
      style: TextStyle(color: Colors.white),
    ),
    onPressed: (){
      setState((){
        text = searchText;
      });
    },
  );
}

}

