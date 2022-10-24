import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled3/pages/listdatamenu.dart';

class RetoPage extends StatelessWidget {
  List<Listadatamenu> menu = [
    Listadatamenu(
        menu: "Menu 1",
        dias: "Lunes",
        precio: "S/ 5",
        imagen: Image.network(
            "https://www.mamirecetas.com/wp-content/uploads/2019/01/mejores-primeros-platos-para-menu.jpg")),
    Listadatamenu(
        menu: "Menu 2",
        dias: "Martes",
        precio: "S/ 6",
        imagen: Image.network(
            "https://s1.eestatic.com/2015/07/22/cocinillas/cocinillas_50504950_116198873_1100x733.jpg")),
    Listadatamenu(
        menu: "Menu 3",
        dias: "Miercoles",
        precio: "S/ 7",
        imagen: Image.network(
            "https://s1.eestatic.com/2015/07/22/cocinillas/cocinillas_50504950_116198873_1100x733.jpg")),
    Listadatamenu(
        menu: "Menu 4",
        dias: "Jueves",
        precio: "S/ 8",
        imagen: Image.network(
            "https://s1.eestatic.com/2015/07/22/cocinillas/cocinillas_50504950_116198873_1100x733.jpg")),
    Listadatamenu(
        menu: "Menu 5",
        dias: "Viernes",
        precio: "S/ 9",
        imagen: Image.network(
            "https://s1.eestatic.com/2015/07/22/cocinillas/cocinillas_50504950_116198873_1100x733.jpg")),
    Listadatamenu(
        menu: "Menu 1",
        dias: "Lunes",
        precio: "S/ 5",
        imagen: Image.network(
            "https://www.mamirecetas.com/wp-content/uploads/2019/01/mejores-primeros-platos-para-menu.jpg")),
    Listadatamenu(
        menu: "Menu 1",
        dias: "Lunes",
        precio: "S/ 5",
        imagen: Image.network(
            "https://www.mamirecetas.com/wp-content/uploads/2019/01/mejores-primeros-platos-para-menu.jpg")),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SetState Cards Assets App",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
                fontStyle: FontStyle.normal)),
        centerTitle: true,
        backgroundColor: Color(0xffEEA339),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Text("Selecciona tu mejor elecccion",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15.0,
                        fontStyle: FontStyle.normal)),
                ...List.generate(
                    menu.length, (index) => ClassRetoPage(data: menu[index]))

                //...List.generate(length, (index) => null)
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ClassRetoPage extends StatelessWidget {
  Listadatamenu data;

  ClassRetoPage({required this.data});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 50),
      child: Card(
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
        margin: EdgeInsets.symmetric(vertical: 20),
        child: Row(
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              width: 100,
              height: 80,
              child: data.imagen,// al poner esto como lista de una instancia no me permite colocarle un fit
            ),
            SizedBox(
              width: 10,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    data.menu,
                    style: TextStyle(fontSize: 20.0),
                  ),
                  Text(
                    data.dias,
                    style: TextStyle(fontSize: 15.0),
                  ),
                  Text(
                    data.precio,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
