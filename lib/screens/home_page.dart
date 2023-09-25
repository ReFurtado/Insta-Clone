// ignore_for_file: unnecessary_new, prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors, avoid_unnecessary_containers, must_be_immutable, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter_application_2/screens/insta_list.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../repository/repository.dart';

class HomePage extends StatelessWidget {

  //Repositório
  final itens = ItensData.itens;
  int i = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      //Abbpar
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Row(
          children: [
            //logo
            PopupMenuButton(         
              constraints: BoxConstraints.expand(
                width: 120,
                height: 112
              ),  
              child: SizedBox(
                height: 24,
                child: Image.asset(
                  'assets/images/logo.png',
                ),
              ),
              itemBuilder: (BuildContext context) {
                return [
                  //Primeira opção
                  PopupMenuItem(
                    value: 'option1',
                    child: Row(
                      children: [
                        Text(
                          'Seguindo',
                          style: TextStyle(
                            fontSize: 14,
                          ),
                        ),
                        SizedBox(width: 10),
                        Icon(
                          FontAwesomeIcons.user,
                          size: 14,
                          color: Colors.black,
                        ),
                      ],
                    )
                  ),
                  //Segunda opção
                  PopupMenuItem(
                    value: 'option2',
                    child: Row(
                      children: [
                        Text(
                          'Seguindo',
                          style: TextStyle(
                            fontSize: 14,
                          ),
                        ),
                        SizedBox(width: 10),
                        Icon(
                          FontAwesomeIcons.star,
                          size: 14,
                          color: Colors.black,
                        ),
                      ],                
                    ),              
                  )             
                ];            
              },
              //Configuração do menu suspenso
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              color: Colors.white,
              offset: Offset(0, 30),  
                    
            ),
          ],
        ),
        actions: [
          IconButton(
            icon: Icon(
              FontAwesomeIcons.heart,
              size: 20,
              color: Colors.black,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(
              Icons.messenger_outline_sharp,
              size: 20,
              color: Colors.black,
            ),
            onPressed: () {},
          ),
        ],
      ),

      //Body
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            SizedBox(
              height: 640,
              child: InstaList(),
            ),    
          ],
        ),
      ),

      //Barra de navegação
      bottomNavigationBar: Container(
        child: BottomAppBar(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                icon: Icon(
                  FontAwesomeIcons.house,
                  size: 18,
                ),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(
                  FontAwesomeIcons.magnifyingGlass,
                  size: 18,
                ),
                onPressed: null,
              ),
              IconButton(
                icon: Icon(
                  FontAwesomeIcons.squarePlus,
                  size: 18,
                ),
                onPressed: null,
              ),
              IconButton(
                icon: Icon(
                  FontAwesomeIcons.video,
                  size: 18,
                ),
                onPressed: null,
              ),
              Container( //Imagem de perfil
                height: 30,
                width: 30,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage(itens[i].image),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),




    );
  }
}