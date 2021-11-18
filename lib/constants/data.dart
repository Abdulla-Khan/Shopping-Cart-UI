import 'package:flutter/material.dart';

class ShoeModel {
  final String name;
  final double price;
  final String decs;
  final Color color;
  final String brand;
  final String imgPath;
  int imd;
  ShoeModel(
      {this.name,
      this.price,
      this.decs,
      this.color,
      this.brand,
      this.imgPath,
      this.imd});
  static List<ShoeModel> list = [
    ShoeModel(
        name: "Nike Air",
        decs:
            "Familiar but always Fresh, the iconic Air jordan 1 is remastered for today's sneakerhead culture. This Retro High OG version goes all in with full-grain leather, comfortable cushioning and classic design details.",
        price: 134,
        color: Color(0XFF0c99c3),
        brand: "Nike",
        imgPath: "tS.png",
        imd: 1),
    ShoeModel(
        name: "Converse X OPI Chuck Taylor",
        decs:
            "Familiar but always Fresh, the iconic Air  is remastered for today's  culture. This Retro version goes all in with full-grain leather, comfortable cushioning and classic design details.",
        price: 184,
        color: Color(0XFFdac007),
        brand: "Converse",
        imgPath: "1.png",
        imd: 2),
    ShoeModel(
        name: "Nike Air ",
        decs:
            "Familiar but always Fresh, the iconic Air jordan 1 is remastered for today's sneakerhead culture. This Retro High OG version goes all in with full-grain leather, comfortable cushioning and classic design details.",
        price: 204,
        color: Color(0XFFbe0b2b),
        brand: "Nike",
        imgPath: "suit.png",
        imd: 3),
    ShoeModel(
        name: "Nike Air",
        decs:
            "Familiar but always Fresh, the iconic Air jordan 1 is remastered for today's sneakerhead culture. This Retro High OG version goes all in with full-grain leather, comfortable cushioning and classic design details.",
        price: 134,
        color: Color(0XFF0c99c3),
        brand: "Nike",
        imgPath: "TO.png",
        imd: 4),
  ];
}
