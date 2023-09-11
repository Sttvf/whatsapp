import 'package:flutter/material.dart';

void main() {
  runApp(WhatsAppChatSelection());
}

class WhatsAppChatSelection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ChatSelectionScreen(),
    );
  }
}

class ChatSelectionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 0, 127, 104),
        title: const Text('WhatsApp'),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.camera_alt_outlined)),
          IconButton(onPressed: (){}, icon: Icon(Icons.search)),
          IconButton(onPressed: (){}, icon: Icon(Icons.more_vert))
        ],
      ),
      body: Column(
        children: <Widget>[
          Container(color: const Color.fromARGB(255, 0, 127, 104),child: 
            Row(children: [
              Expanded(
                flex: 1,
                child: 
                Row(
                  children: [
                    Padding(padding: EdgeInsets.fromLTRB(40, 15, 15, 15), child: Icon(Icons.groups_2, color: Colors.white, size: 40)),
                    Spacer(),
                    Padding(padding: EdgeInsets.all(15), child: Text('Chats', style: TextStyle(fontSize: 30, color: Colors.white, decoration: null)),),
                    Spacer(),
                    Padding(padding: EdgeInsets.all(15), child: Text('Estados', style: TextStyle(fontSize: 30, color: Colors.white, decoration: null)),),
                    Spacer(),
                    Padding(padding: EdgeInsets.fromLTRB(15, 15, 40, 15), child: Text('Llamadas', style: TextStyle(fontSize: 30, color: Colors.white, decoration: null)),),
                  ],
                )
              )
            ],)
          ),
          Padding(padding: EdgeInsets.fromLTRB(15, 10, 15, 0), child: ChatItem("Andrés", Icons.check, Colors.cyan,Colors.grey,"Ya esta empezando a...", "11:26",'https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_960_720.png'),),
          Padding(padding: EdgeInsets.fromLTRB(15, 10, 15, 0), child: ChatItem("Valeria", Icons.check, Colors.cyan, Colors.grey,"Que ganas de que llegue el viaje...", "10:55",'data:image/jpeg;base64,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'),),
          Padding(padding: EdgeInsets.fromLTRB(15, 10, 15, 0), child: ChatItem("Claudia", Icons.mic, Colors.lightGreen, Colors.lightGreen,"0:21", "10:31",'https://static01.nyt.com/images/2017/05/07/arts/07GAL-GADOTweb/07GAL-GADOTweb-articleLarge.jpg?quality=75&auto=webp&disable=upscale'),),
          Padding(padding: EdgeInsets.fromLTRB(15, 10, 15, 0), child: ChatItem("Club de lectura mensual", Icons.check, Colors.white, Colors.lightGreen,"Darío: ¿Alguien quiere...", "9:42",'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS7Ei7aHns9L9r2LabtRTOHM2v6D1iMaQiFlQ'),),
          Padding(padding: EdgeInsets.fromLTRB(15, 10, 15, 0), child: ChatItem("Darío", Icons.check, Colors.cyan, Colors.grey,"Hola, intenté llamarte", "9:39",'https://images.unsplash.com/photo-1628563694622-5a76957fd09c?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8cGVyZmlsJTIwZGUlMjBpbnN0YWdyYW18ZW58MHx8MHx8fDA%3D&w=1000&q=80'),),
          Padding(padding: EdgeInsets.fromLTRB(15, 10, 15, 0), child: ChatItem("Mamá", Icons.photo, Colors.grey, Colors.grey,"Foto", "9:02",'data:image/jpeg;base64,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'),),
          Padding(padding: EdgeInsets.fromLTRB(15, 10, 15, 0), child: ChatItem("Elisa", Icons.check, Colors.cyan, Colors.grey,"¡¡Gracias!!", "8:36",'https://1.bp.blogspot.com/-k0UMqqbIu80/XLjR4yNvJRI/AAAAAAAAIgg/h7it2cOlQNQvhosikvxnHZnoeMj5opXJACLcBGAs/s1600/mujer.jpg'),),
          Padding(padding: EdgeInsets.fromLTRB(15, 10, 15, 0), child: ChatItem("Juan", Icons.gif, Colors.grey, Colors.grey,"GIF", "8:04",'https://static.vecteezy.com/system/resources/thumbnails/003/492/377/small/closeup-male-studio-portrait-of-happy-man-looking-at-the-camera-image-free-photo.jpg'),),
        ],
      ),
    );
  }
}

class ChatItem extends StatelessWidget {
  final String nombre;
  final String imagen;
  final String mensaje;
  final String hora;
  final Color color1;
  final Color color2;
  final IconData icono;
  ChatItem(this.nombre, this.icono, this.color1, this.color2, this.mensaje, this.hora, this.imagen);
  
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
      },
      child: Row(
        children: <Widget>[
          CircleAvatar(
            backgroundImage: NetworkImage(imagen),
            radius: 30,
          ),
          SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                
                Text(
                  nombre,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                Row(
                  children: [
                    Icon(icono, color: color1,),
                    Text(
                      mensaje,
                      style: TextStyle(
                        color: color2,
                      ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  ],
                )
              ],
            ),
          ),
          Text(
            hora,
            style: TextStyle(
              color: color2,
            ),
          ),
        ],
      ),
    );
  }
}
