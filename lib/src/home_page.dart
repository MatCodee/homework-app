import 'package:flutter/material.dart';
import 'package:homework_app/models/todo_models.dart';
import 'package:homework_app/widgets/list_links.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          "My Focus",
          style: TextStyle(
              color: Color.fromARGB(255, 17, 8, 65),
              fontSize: 24.0,
              fontWeight: FontWeight.bold),
        ),
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            iconSize: 32.0,
            color: Colors.black54,
            icon: const Icon(Icons.search),
          ),
          const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: CircleAvatar(
                backgroundImage: AssetImage("assets/images/sam.jpg"),
              )),
        ],
      ),
      body:Column(
        children: [
          ListLink(),
          Expanded(
            child: ListView(
              padding: const EdgeInsets.all(8),
              children: <Widget>[
                const Text("On Working",style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold)),
                homeworks_item("Aprender Programacion",Color.fromARGB(155, 65, 56, 225)),
                homeworks_item("Aprender Programacion",Color.fromARGB(155, 65, 56, 225)),
                homeworks_item("Aprender Programacion",Color.fromARGB(155, 65, 56, 225)),
                SizedBox(height: 20.0,),
                const Text("On Working",style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold)),
                homeworks_item("Aprender Programacion",Color.fromARGB(155, 65, 56, 225)),
                homeworks_item("Aprender Programacion",Color.fromARGB(155, 65, 56, 225)),
                homeworks_item("Aprender Programacion",Color.fromARGB(155, 65, 56, 225)),
                homeworks_item("Aprender Programacion",Color.fromARGB(155, 65, 56, 225)),
                homeworks_item("Aprender Programacion",Color.fromARGB(155, 65, 56, 225)),
                homeworks_item("Aprender Programacion",Color.fromARGB(155, 65, 56, 225)),
              ],
            )
          ),
          
          
        ],
      ),
    );
  }

  homeworks_item(String text_element,Color color_element) {
    return Container(
      padding: const EdgeInsets.all(20.0),
      margin: const EdgeInsets.only(top: 10.0),
      decoration: BoxDecoration(
          color: color_element, borderRadius: BorderRadius.circular(10.0)),
      child: Row(
        children: [
          Column(
          crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(text_element,style: TextStyle(fontSize: 18.0,fontWeight: FontWeight.bold),),
              Text("Implementando nuevas caracteristicas",style: TextStyle(color: Colors.black54),)
            ],
          ),
          const Spacer(),
          const Icon(Icons.menu_book)
        ],
      )
    );
  }
}

/*
Column(
        children: [
          ListLink(),
          Expanded(
            child: ListView(
              padding: const EdgeInsets.all(8),
              children: <Widget>[
                const Text("On Working",style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold)),
                Container(
                  height: 160,
                  child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    itemCount: homeworks.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        padding: const EdgeInsets.all(20.0),
                        margin: const EdgeInsets.only(top: 10.0),
                        decoration: BoxDecoration(
                          color: Colors.amber,
                          borderRadius: BorderRadius.circular(5.0)
                        ),
                        child: Row(
                          children: [
                            Text('${homeworks[index].title}'),
                        ],),
                      );
                    }),
                ),
              ],
            )
          ),
          
          
        ],
      ),

 */