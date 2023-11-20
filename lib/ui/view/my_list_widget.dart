import 'package:exxen_app/data/entity/list_items.dart';
import 'package:exxen_app/data/entity/string_values.dart';
import 'package:flutter/material.dart';

class MyListPage extends StatelessWidget {
  const MyListPage({super.key});
  Future<List<MyList>> uploadMovie() async {
    var movieList = <MyList>[];
    var m1 =
        MyList(id: 1, pic: 'konusanlar3.png', movieName: StringValues.text5);
    var m6 = MyList(id: 1, pic: 'katarsis.png', movieName: StringValues.text2);
    var m8 =
        MyList(id: 1, pic: 'masterchef.png', movieName: StringValues.text14);
    var m3 =
        MyList(id: 1, pic: 'sihirli_annem.png', movieName: StringValues.text16);
    var m5 = MyList(id: 1, pic: 'arda.png', movieName: StringValues.text3);
    var m4 = MyList(
        id: 1, pic: 'surprizimiz_var.png', movieName: StringValues.text19);
    var m11 = MyList(id: 1, pic: 'oses.png', movieName: StringValues.text4);
    var m12 = MyList(
        id: 1, pic: 'leylailemecnun.png', movieName: StringValues.text18);
    var m9 = MyList(id: 1, pic: 'tolgshow.png', movieName: StringValues.text20);
    var m10 = MyList(id: 1, pic: 'gibi.png', movieName: StringValues.text15);
    var m7 =
        MyList(id: 1, pic: 'vahsiseyler.png', movieName: StringValues.text21);
    var m2 = MyList(
        id: 1, pic: 'ilgincbaziolaylar.png', movieName: StringValues.text17);

    movieList.add(m1);
    movieList.add(m2);
    movieList.add(m3);
    movieList.add(m4);
    movieList.add(m5);
    movieList.add(m6);
    movieList.add(m7);
    movieList.add(m8);
    movieList.add(m9);
    movieList.add(m10);
    movieList.add(m11);
    movieList.add(m12);

    return movieList;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.black,
        title: Text(
          StringValues.text11,
          style: const TextStyle(color: Colors.white, fontSize: 20),
        ),
      ),
      body: FutureBuilder<List<MyList>>(
        future: uploadMovie(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            var movieList = snapshot.data;
            return GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, childAspectRatio: 1 / 1.8),
              itemBuilder: (context, index) {
                var video = movieList[index];
                return Container(
                    color: Colors.black,
                    padding: const EdgeInsets.all(8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            Stack(
                              children: [
                                Image.asset(
                                  'images/${video.pic}',
                                  fit: BoxFit.fill,
                                ),
                                Positioned(
                                    bottom: 15,
                                    right: 0,
                                    child: IconButton(
                                      onPressed: () {},
                                      icon: const Icon(
                                        Icons.more_vert_rounded,
                                        color: Colors.white,
                                        size: 40,
                                      ),
                                    )),
                              ],
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Container(
                              height: 4,
                              width: 200,
                              color: Colors.yellow.shade600,
                            ),
                          ],
                        ),
                        Text(
                          video.movieName,
                          style: const TextStyle(color: Colors.white),
                        )
                      ],
                    ));
              },
              itemCount: movieList!.length,
            );
          } else {
            return const Center();
          }
        },
      ),
    );
  }
}
