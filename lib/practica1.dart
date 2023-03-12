import 'package:flutter/material.dart';

class practica1 extends StatefulWidget {
  const practica1({Key? key}) : super(key: key);

  @override
  State<practica1> createState() => _practica1State();
}

class _practica1State extends State<practica1> {
  final mensaje=TextEditingController();
  String imp="";
  String direccion="";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Practica 1"),),
      body: Column(
        mainAxisAlignment:MainAxisAlignment.center,
        children: [
          const Text("Aplicacion 1",
            style: TextStyle(
                fontSize: 35,color: Colors.blue,fontWeight: FontWeight.bold
            ),
          ),
          SizedBox(height: 50,),
          Padding(
              padding:EdgeInsets.all(50),
                  child: TextField(
                    controller: mensaje,
                    decoration: InputDecoration(
                      labelText: "Ingrese su mensaje",
                      prefixIcon: Icon(Icons.message),
                    ),
                  ),
          ),
          OutlinedButton(onPressed: (){
            String m = mensaje.text;
            setState(() {
              imp="${m}";
            });
          }, child: Text("Imprimir mensaje")),
          SizedBox(height: 40,),
          Text("${imp}",style: TextStyle(fontSize: 15,color: Colors.blue)),
          SizedBox(height: 40,),
          OutlinedButton(
            child: Text('Saludar'),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => PaginaDeImagen(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
class PaginaDeImagen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Saludo'),
      ),
      body: Center(
        child: Image.asset('assets/saludo.png',height: 500,width: 500,),
      ),
    );
  }
}