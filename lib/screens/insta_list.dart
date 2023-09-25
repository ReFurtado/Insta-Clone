// ignore_for_file: unnecessary_new, prefer_const_constructors, use_key_in_widget_constructors, library_private_types_in_public_api, sort_child_properties_last, prefer_const_literals_to_create_immutables, must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_application_2/repository/repository.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'insta_stories.dart';

class InstaList extends StatefulWidget {

  @override
  State<InstaList> createState() => _InstaListState();
}

class _InstaListState extends State<InstaList> {
  
  //Repositório
  final itens = ItensData.itens;
  int i = 0;
  
  bool isPressed = false;

  @override
  Widget build(BuildContext context) {
    var deviceSize = MediaQuery.of(context).size;
    return ListView.builder(
      itemCount: 6,
      itemBuilder: (context, index) => index == 0
          ? SizedBox(
              child: InstaStories(),
              height: deviceSize.height * 0.14,
            )
          : Column( 
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                
                Padding( //Cabeçalho
                  padding: EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 4
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row( //Cabeçalho
                        children: [
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
                          SizedBox(
                            width: 10.0,
                          ),
                          Text(
                            itens[i].name,
                            style: TextStyle(
                            fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      IconButton(
                        icon: Icon(
                          FontAwesomeIcons.ellipsis,
                          size: 16,
                        ),
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),

                Image.asset(itens[i].image), //imagem
                
                Padding( //Icones
                  padding: EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 4,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          IconButton(
                            icon: Icon(
                              FontAwesomeIcons.heart,
                              size: 20,
                            ),
                            color: isPressed ? Colors.red : Colors.black,
                            onPressed: () {
                              setState(() {
                                isPressed = !isPressed;
                              });
                            },
                          ),
                           IconButton(
                            onPressed: () {}, 
                            icon: Icon(
                              FontAwesomeIcons.comment,
                              size: 20,
                            ),
                          ),
                          IconButton(
                            onPressed: () {}, 
                            icon: Icon(
                              FontAwesomeIcons.paperPlane,
                              size: 20,
                            ),
                          ),               
                        ],
                      ),
                      IconButton(
                        onPressed: () {}, 
                        icon: Icon(
                          FontAwesomeIcons.bookmark,
                           size: 20,
                        )
                      )
                    ],
                  ),
                ),

                Padding( //Curtidas
                  padding: EdgeInsets.symmetric(
                    horizontal: 10,
                  ),
                  child: Text(
                    "Curtido por Ana e outras pessoas",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),

                Padding( //Descrição
                  padding: EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 10,
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: Text('${itens[i].name} is simply simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1400',
                          maxLines: 2,
                          //overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                ),

                Padding( //Ver comentários
                  padding: EdgeInsets.symmetric(
                    horizontal: 10,
                    //vertical: 10,
                  ),
                  child: Text(
                    "Ver todos os comentários",
                    style: TextStyle(
                      color: Colors.black45
                    ),
                  ),
                ),

                Padding( //Adicionar u comentário 
                  padding: EdgeInsets.symmetric(
                    horizontal: 10
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        height: 20,
                        width: 20,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(
                              itens[i].image,
                            ),
                          ),
                        ),
                      ),
                      new SizedBox(
                        width: 10.0,
                      ),
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Adicione um comentário...",
                          ),
                          style: TextStyle(
                            fontSize: 14,
                          ),
                        ),
                      ),         
                    ],
                  ),
                ),

                Padding( //Tempo postagem
                  padding:EdgeInsets.symmetric(
                    horizontal: 10,
                  ),
                  child:
                      Text(
                        "Há 18 minutos", 
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.black45
                        ),
                      ),
                )
              ],
            ),
    );
  }
}