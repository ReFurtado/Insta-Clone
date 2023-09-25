// ignore_for_file: prefer_const_constructors, unnecessary_new, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, must_be_immutable

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../repository/repository.dart';

class InstaStories extends StatelessWidget {

  //Repositório
  final itens = ItensData.itens;
  int i = 0;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 10,
          vertical: 8,
        ),
        child: Row(
          children: [   
            for (int i = 0; i < 6; i ++)    
            Padding(
              padding: EdgeInsets.only(right: 10),
              child: Column(
                children: [
                  InkWell(
                    onTap: () {},
                    child: Stack(
                      children: [
                        CircleAvatar(
                          radius: 36,
                          backgroundImage: AssetImage(itens[i].image),
                          backgroundColor: Colors.grey, 
                        ),
                        if (i == 0) //Botão +
                          Positioned(
                            right: 0,
                            bottom: 0,
                            child: Container(
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                  color: Colors.white,
                                  width: 2,
                                )
                              ),
                              child: CircleAvatar(
                                backgroundColor: Colors.blue,
                                radius: 10,
                                child: Icon(
                                  FontAwesomeIcons.plus,
                                  size: 10,
                                  color: Colors.white,
                                ),
                              ),
                            )
                          ),                  
                      ]
                    ),
                  ),
                  SizedBox(height: 10), 
                  Text(
                    itens[i].name,  
                    style: TextStyle(
                      fontSize: 12
                    ),
                  ),
                ],
              ),
            ),      
          ],
        ),
      ),
    );
  }
}
