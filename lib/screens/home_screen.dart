import 'package:chatbot_flutter/screens/start_screen.dart';
import 'package:chatbot_flutter/theme/colors.dart';
import 'package:chatbot_flutter/theme/custom_theme.dart';
import 'package:chatbot_flutter/utils/drawer.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  static List<Map<String, String>> myData = [
    {
      'title': 'Elemento 1',
      'subtitle': 'Descripción del elemento 1',
    },
    {
      'title': 'Elemento 2',
      'subtitle': 'Descripción del elemento 2',
    },
    {
      'title': 'Elemento 3',
      'subtitle': 'Descripción del elemento 3',
    },
    {
      'title': 'Elemento 4',
      'subtitle': 'Descripción del elemento 4',
    },
    {
      'title': 'Elemento 5',
      'subtitle': 'Descripción del elemento 5',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25),
      child: Scaffold(
        drawer: const CustomDrawer(),
        backgroundColor: MyColors.whitePalette,
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 100, horizontal: 25),
          child: CustomScrollView(
            slivers: [
              SliverAppBar(
                automaticallyImplyLeading: false,
                title: Row(
                  children: [
                    Text(
                      "Chats",
                      style: customTheme.textTheme.headlineMedium!.merge(
                          const TextStyle(
                              color: MyColors.myPurpleColor, fontSize: 32)),
                    ),
                    const Spacer(),
                    Image.asset(
                      "ovni.png",
                      width: 120,
                      height: 120,
                      scale: 5,
                    ),
                  ],
                ),
              ),
              SliverPadding(
                padding: const EdgeInsets.only(top: 100),
                sliver: SliverList(
                  delegate: SliverChildBuilderDelegate(
                      (BuildContext context, int index) {
                    return ListTile(
                      title: Text(
                        myData[index]['title'] ?? '',
                        style: const TextStyle(
                            color: Colors
                                .black), // Establece el color del texto en negro
                      ),
                      subtitle: Text(
                        myData[index]['subtitle'] ?? '',
                        style: const TextStyle(
                            color: Colors
                                .black), // Establece el color del texto en negro
                      ),
                      leading: const Icon(Icons.person),
                      trailing: const Icon(Icons.arrow_forward),
                      onTap: () {
                        // Acción a realizar cuando se toca un elemento de la lista
                      },
                    );
                  }, childCount: myData.length),
                ),
              )
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (_) => const StartScreen()));
          },
          elevation: 0,
          child: Icon(
            Icons.arrow_back,
            color: MyColors.myPurpleColor[600],
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.miniStartTop,
        // bottomNavigationBar: BottomNavigationBar(items: []),
      ),
    );
  }
}
