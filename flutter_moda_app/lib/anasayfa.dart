import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AnaSayfa extends StatefulWidget {
  const AnaSayfa({super.key});

  @override
  State<AnaSayfa> createState() => _AnaSayfaState();
}

class _AnaSayfaState extends State<AnaSayfa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF6F5F5),
      appBar: _buildAppbar(),
      body: _buildBody(),
      bottomNavigationBar: _buildBottomNavigationBar(),
    );
  }

  AppBar _buildAppbar(){
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      title: const Text(
        "Moda Uygulaması",
        style: TextStyle(
          fontFamily: "Montserrat",
          fontSize: 22,
          color: Colors.black,
          fontWeight: FontWeight.bold
        ),
      ),
      actions: [
        IconButton(
            onPressed: (){},
            icon: const Icon(Icons.photo_camera_outlined,color: Colors.red,)
        ),
      ],
    );
  }

  Widget _buildBody(){
    return ListView(
      padding: const EdgeInsets.only(top: 10),
      children: [
        _buildUstTarafTasarimi(),
        _buildMaterialCard(),
      ],
    );
  }

  Widget _buildMaterialCard() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Material(
        borderRadius: BorderRadius.circular(16),
        elevation: 4,
        color: const Color(0xFFFFE3CA),
        child: Container(
          height: 535,
          width: double.infinity,
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Row(
                children: [
                  const CircleAvatar(
                    backgroundImage: AssetImage("assets/model1.jpeg"),
                    maxRadius: 27,
                  ),
                  const SizedBox(width: 10,),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Daisy", style: TextStyle(color: Colors.black,fontFamily: "Montserrat"),),
                      SizedBox(height: 2.5,),
                      Text("34 mins ago", style: TextStyle(color: Colors.black38,fontFamily: "Montserrat"),),
                    ],
                  ),
                  const Spacer(),
                  IconButton(
                      onPressed: (){},
                      icon: const Icon(Icons.more_vert,color: Colors.black,size: 22,),
                  ),
                ],
              ),
              const SizedBox(height: 15,),
              const Text("This official website features a ribbed knit zipper jacket that is modern and stylish. It looks very temparament and is recommend to friends",style: TextStyle(color: Colors.black,fontSize: 14,fontFamily: "Montserrat"),),
              const SizedBox(height: 15,),
              Row(
                children: [
                  Container(
                    width: (MediaQuery.of(context).size.width - 50)/2,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      image: DecorationImage(image: AssetImage("assets/modelgrid1.jpeg"),fit: BoxFit.cover)
                    ),
                    height: 200,
                  ),
                  const SizedBox(width: 11,),
                  Column(
                    children: [
                      Container(
                        width: (MediaQuery.of(context).size.width - 100)/2,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            image: DecorationImage(image: AssetImage("assets/modelgrid2.jpeg"),fit: BoxFit.cover)
                        ),
                        height: 95,
                      ),
                      const SizedBox(height: 10,),
                      Container(
                        width: (MediaQuery.of(context).size.width - 100)/2,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            image: DecorationImage(image: AssetImage("assets/modelgrid3.jpeg"),fit: BoxFit.cover)
                        ),
                        height: 95,
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 10,),
              Row(
                children: [
                  Container(
                    height: 25,
                    width: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.brown.withOpacity(0.2),
                    ),
                    child: const Center(child: Text("#Louis Vuitton",style: TextStyle(fontFamily: "Montserrat",fontSize: 10,color: Colors.brown),)),
                  ),
                  const SizedBox(width: 10,),
                  Container(
                    height: 25,
                    width: 75,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.brown.withOpacity(0.2),
                    ),
                    child: const Center(child: Text("#Chloe",style: TextStyle(fontFamily: "Montserrat",fontSize: 10,color: Colors.brown),)),
                  ),
                ],
              ),
              const SizedBox(height: 20,),
              const Divider(color: Colors.black38,),
              const SizedBox(height: 20,),
              Row(
                children: [
                  IconButton(
                      onPressed: (){},
                      icon: const Icon(Icons.reply),
                  ),
                  const Text("1.7K",style: TextStyle(fontFamily: "Montserrat"),),
                  const SizedBox(width: 10,),
                  IconButton(
                      onPressed: (){},
                      icon: const Icon(Icons.chat),
                  ),
                  const Text("325",style: TextStyle(fontFamily: "Montserrat"),),
                  const Spacer(),
                  IconButton(
                      onPressed: (){},
                      icon: const Icon(Icons.favorite,color: Colors.red,),
                  ),
                  const Text("2.3K",style: TextStyle(fontFamily: "Montserrat"),),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildUstTarafTasarimi(){
    return SizedBox(
      height: 160,
      width: double.infinity,
      child: ListView(
        padding: const EdgeInsets.all(10),
        scrollDirection: Axis.horizontal,
        children: [
          _listeElemani("assets/model1.jpeg","assets/chanellogo.jpg"),
          const SizedBox(width: 25,),
          _listeElemani("assets/model2.jpeg","assets/louisvuitton.jpg"),
          const SizedBox(width: 25,),
          _listeElemani("assets/model3.jpeg","assets/chloelogo.png"),
          const SizedBox(width: 25,),
          _listeElemani("assets/model1.jpeg","assets/chanellogo.jpg"),
          const SizedBox(width: 25,),
          _listeElemani("assets/model2.jpeg","assets/louisvuitton.jpg"),
          const SizedBox(width: 25,),
          _listeElemani("assets/model3.jpeg","assets/chloelogo.png"),
        ],
      ),
    );
  }

  Widget _listeElemani(String imagePath, String logoPath){
    return Column(
      children: [
        Stack(
          children: [
            CircleAvatar(
              backgroundImage: AssetImage(imagePath),
              maxRadius: 40,
            ),
            Positioned(
              top: 55,
              left: 55,
              child: CircleAvatar(
                backgroundImage: AssetImage(logoPath),
                maxRadius: 12,
              ),
            ),
          ],
        ),
        const SizedBox(height: 10,),
        ElevatedButton(
          onPressed: (){},
          style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xFFEE99C2)
          ),
          child: const  Text("Follow",style: TextStyle(color: Colors.white,fontFamily: "Montserrat",fontSize: 14),),
        ),
      ],
    );
  }

  Widget _buildBottomNavigationBar(){
    return BottomNavigationBar(
      backgroundColor: const Color(0xFFF6F5F5),
        currentIndex: 0,
        iconSize: 20,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_filled,color: Colors.black,),
            label: "More",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.play_arrow,color: Colors.blueGrey,),
            label: "Short",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.navigation,color: Colors.blueGrey,),
            label: "Navigation",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.supervised_user_circle,color: Colors.blueGrey,),
            label: "Profil",
          ),
        ]
    );
  }
}
