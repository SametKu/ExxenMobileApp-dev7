import 'package:exxen_app/data/entity/image_path.dart';
import 'package:exxen_app/data/entity/string_values.dart';
import 'package:exxen_app/ui/view/movie_list_widget.dart';
import 'package:exxen_app/ui/view/my_list_widget.dart';
import 'package:flutter/material.dart';

mixin Tabs {
  static final tabs = [
    ListView(
      children: [
        Card(
          shape: OutlineInputBorder(borderRadius: BorderRadius.circular(0)),
          child: SafeArea(
            child: Container(
              color: Colors.black,
              height: 400,
              child: Image.asset(
                ImagePaths.konusanlar4.path(),
                fit: BoxFit.fill,
              ),
            ),
          ),
        ),
        MovieList(
          text2: StringValues.text,
          text3: StringValues.text2,
          text4: StringValues.text3,
          text5: StringValues.text4,
          text6: StringValues.text5,
          image: Image.asset(ImagePaths.katarsis.path(), fit: BoxFit.cover),
          image2: Image.asset(ImagePaths.arda.path(), fit: BoxFit.cover),
          image3: Image.asset(ImagePaths.oses.path(), fit: BoxFit.cover),
          image4: Image.asset(ImagePaths.konusanlar3.path(), fit: BoxFit.cover),
        ),
        MovieList(
          text2: StringValues.text6,
          text3: StringValues.text14,
          text4: StringValues.text15,
          text5: StringValues.text16,
          text6: StringValues.text17,
          image: Image.asset(ImagePaths.masterchef.path(), fit: BoxFit.cover),
          image2: Image.asset(ImagePaths.gibi.path(), fit: BoxFit.cover),
          image3:
              Image.asset(ImagePaths.sihirli_annem.path(), fit: BoxFit.cover),
          image4: Image.asset(ImagePaths.ilgincbaziolaylar.path(),
              fit: BoxFit.cover),
        ),
        MovieList(
          text2: StringValues.text7,
          text3: StringValues.text18,
          text4: StringValues.text19,
          text5: StringValues.text20,
          text6: StringValues.text21,
          image:
              Image.asset(ImagePaths.leylailemecnun.path(), fit: BoxFit.cover),
          image2:
              Image.asset(ImagePaths.surprizimiz_var.path(), fit: BoxFit.cover),
          image3: Image.asset(ImagePaths.tolgshow.path(), fit: BoxFit.cover),
          image4: Image.asset(ImagePaths.vahsiseyler.path(), fit: BoxFit.cover),
        ),
        MovieList(
          isLastItem: true,
          text2: StringValues.text8,
          text3: StringValues.text22,
          text4: StringValues.text23,
          text5: StringValues.text24,
          text6: StringValues.text25,
          image: Image.asset(ImagePaths.istekadinlar.path(), fit: BoxFit.cover),
          image2: Image.asset(ImagePaths.serefbey.path(), fit: BoxFit.cover),
          image3: Image.asset(ImagePaths.yazgi.path(), fit: BoxFit.cover),
          image4: Image.asset(ImagePaths.ogrencievi.path(), fit: BoxFit.cover),
        ),
      ],
    ),
    Center(
      child: Text(StringValues.text10),
    ),
    const MyListPage(),
    Center(
      child: Text(StringValues.text12),
    ),
    Center(
      child: Text(StringValues.text13),
    ),
  ];
}
