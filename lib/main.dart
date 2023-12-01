import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            expandedHeight: 85.0,
            floating: false,
            pinned: true,
            flexibleSpace: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color(0xFF113946).withOpacity(0.9),
                    Color(0xFFBCA37F).withOpacity(0.9),
                  ],
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                ),
              ),
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Image.asset(
                      "pictures/inaklug.png",
                      fit: BoxFit.contain,
                      height: 55,
                    ),
                    const SizedBox(width: 8),
                    Text(
                      "Inaklug",
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 35,
                          fontFamily: 'Times New Roman',
                          color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
            actions: <Widget>[
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Builder(
                  builder: (context) {
                    return IconButton(
                      icon: Icon(Icons.menu),
                      iconSize: 30,
                      onPressed: () {
                        Scaffold.of(context).openEndDrawer();
                      },
                    );
                  },
                ),
              ),
            ],
            backgroundColor: Colors.transparent,
          ),

          // SLIVER LIST FOTO, TULISAN KETERANGAN KAMI DAN DESKRIPSI
          SliverList(
            delegate: SliverChildListDelegate([
              Image.asset("pictures/picgedung.png"),
              Container(
                padding: EdgeInsets.only(top: 100.0),
                child: Column(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(bottom: 25.0),
                      child: Text(
                        'Tentang Kami',
                        style: TextStyle(
                            fontSize: 36,
                            fontFamily: 'Times New Roman',
                            fontWeight: FontWeight.w100),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 10.0),
                      child: Text(
                        'INAKLUG adalah Konsultan Pendidikan Internasional di Indonesia yang sudah memberangkatkan lebih dari 3000 mahasiswa Indonesia yang ingin berkarir di negara maju di dunia',
                        style: TextStyle(
                            fontFamily: 'Times New Roman',
                            fontSize: 23,
                            fontWeight: FontWeight.w300),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
            ]),
          ),

          // SLIVER LIST TULISAN LAYANAN KAMI
          SliverList(
            delegate: SliverChildListDelegate([
              Padding(
                padding: EdgeInsets.only(top: 100),
                child: Center(
                  child: Container(
                    margin: EdgeInsets.only(bottom: 25.0),
                    child: Text(
                      "Layanan Kami",
                      style: TextStyle(
                          fontSize: 36,
                          fontFamily: 'Times New Roman',
                          fontWeight: FontWeight.w100),
                    ),
                  ),
                ),
              ),
            ]),
          ),

          // SLIVER LIST FOTO, SHADE UNGU KIRI DAN TULISAN DI DALEM FOTO (STUDI S1 BACHELOR)
          SliverList(
            delegate: SliverChildListDelegate([
              Stack(
                children: [
                  Container(
                    margin: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.white, width: 10),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset("pictures/bachelor.png"),
                    ),
                  ),
                  Positioned(
                    width: 350,
                    top: 15,
                    bottom: 15,
                    left: 13.5,
                    child: ClipRRect(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        bottomLeft: Radius.circular(10),
                      ),
                      child: Container(
                        padding: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [Color(0xFFBCA37F), Colors.transparent],
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 20,
                    left: 17,
                    child: Container(
                      padding: EdgeInsets.all(10),
                      child: Text(
                        "Studi S1 Bachelor",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 17.0,
                            fontFamily: 'Times New Roman',
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                ],
              ),
            ]),
          ),

          // SLIVER LIST FOTO, SHADE UNGU KIRI DAN TULISAN DI DALEM FOTO (STUDI S2 MASTER)
          SliverList(
            delegate: SliverChildListDelegate([
              Stack(
                children: [
                  Container(
                    margin: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.white, width: 10),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset("pictures/master.png"),
                    ),
                  ),
                  Positioned(
                    width: 350,
                    top: 15,
                    bottom: 15,
                    left: 13.5,
                    child: ClipRRect(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        bottomLeft: Radius.circular(10),
                      ),
                      child: Container(
                        padding: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [Color(0xFFBCA37F), Colors.transparent],
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 20,
                    left: 17,
                    child: Container(
                      padding: EdgeInsets.all(10),
                      child: Text(
                        "Studi S2 Master",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 17.0,
                            fontFamily: 'Times New Roman',
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                ],
              ),
            ]),
          ),

          // SLIVER LIST FOTO, SHADE UNGU KIRI DAN TULISAN DI DALEM FOTO (PERAWAT)
          SliverList(
            delegate: SliverChildListDelegate([
              Stack(
                children: [
                  Container(
                    margin: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.white, width: 10),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset("pictures/911.png"),
                    ),
                  ),
                  Positioned(
                    width: 350,
                    top: 15,
                    bottom: 15,
                    left: 13.5,
                    child: ClipRRect(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        bottomLeft: Radius.circular(10),
                      ),
                      child: Container(
                        padding: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [Color(0xFFBCA37F), Colors.transparent],
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 20,
                    left: 17,
                    child: Container(
                      padding: EdgeInsets.all(10),
                      child: Text(
                        "Perawat/Caregiver",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 17.0,
                            fontFamily: 'Times New Roman',
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                ],
              ),
            ]),
          ),

          // SLIVER LIST FOTO, SHADE UNGU KIRI DAN TULISAN DI DALEM FOTO (KURSUS BAHASA ASING)
          SliverList(
            delegate: SliverChildListDelegate([
              Stack(
                children: [
                  Container(
                    margin: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.white, width: 10),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset("pictures/kursus.png"),
                    ),
                  ),
                  Positioned(
                    width: 350,
                    top: 15,
                    bottom: 15,
                    left: 13.5,
                    child: ClipRRect(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        bottomLeft: Radius.circular(10),
                      ),
                      child: Container(
                        padding: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [Color(0xFFBCA37F), Colors.transparent],
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 20,
                    left: 17,
                    child: Container(
                      padding: EdgeInsets.all(10),
                      child: Text(
                        "Kursus Bahasa Asing",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 17.0,
                            fontFamily: 'Times New Roman',
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                ],
              ),
            ]),
          ),

          // SLIVER LIST BOX IKLAN
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Container(
                  margin: EdgeInsets.all(70.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: [
                        Color(0xFFBCA37F),
                        Color(0xFF113946),
                      ],
                    ),
                  ),
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(top: 16,left: 16,right: 16),
                        child: Row(
                          children: [
                            Text(
                              "GRATIS\nKONSELING\nSTUDI DI LUAR\nNEGERI",
                              style: TextStyle(
                                fontSize: 25.0,
                                fontFamily: 'Times New Roman',
                                color: Colors.white,
                                height: 1.5
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16),
                        child: Row(
                          children: [
                            Text(
                              "Konsultasi seputar \nKuliah/bekerja di luar negri",
                              style: TextStyle(
                                fontSize: 17,
                                fontFamily: 'Times New Roman',
                                color: Colors.white,
                                  height: 2
                              ),
                            ),
                          ],
                        ),
                      ),

                      //TOMBOL MULAI KONSULTASI
                      Padding(
                        padding: const EdgeInsets.all(40),
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                                Colors.transparent),
                            shape: MaterialStateProperty.all<OutlinedBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50.0),
                                side: BorderSide(
                                  color: Colors.white,
                                  width: 0.7, // Lebar border
                                ),
                              ),
                            ),
                          ),
                          child: Row(children: [
                            Padding(
                              padding: const EdgeInsets.only(bottom:15,top:15),
                              child: Text(
                                "Mulai Konsultasi",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontFamily: 'Times New Roman',
                                ),
                                textAlign: TextAlign.right,
                              ),
                            ),
                            Icon(
                              Icons.keyboard_arrow_down,
                              size: 35,
                            ),
                          ]),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

          // SLIVER LIST TULISAN ARTIKEL TERBARU
          SliverList(
            delegate: SliverChildListDelegate([
              Padding(
                padding: EdgeInsets.only(top: 100),
                child: Center(
                  child: Text(
                    "ARTIKEL TERBARU",
                    style: TextStyle(
                        fontSize: 20.0,
                        fontFamily: 'Times New Roman',
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ]),
          ),

          // SLIVER LIST (goethe institute)
          SliverList(
            delegate: SliverChildListDelegate([
              Stack(
                children: [
                  Container(
                    margin: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.white, width: 10),
                    ),
                    child: Container(
                      child: Image.asset("pictures/bmw.png"),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(top: 10),
                child: Center(
                  child: Text(
                    "belajar bahasa jerman melalui goethe \ninstitute",
                    style: TextStyle(
                      fontSize: 18.0,
                      fontFamily: 'Times New Roman',
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ]),
          ),

          // SLIVER LIST (target pariwisata)
          SliverList(
            delegate: SliverChildListDelegate([
              Stack(
                children: [
                  Container(
                    margin: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.white, width: 10),
                    ),
                    child: Container(
                      child: Image.asset("pictures/m3.png"),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(top: 10,left: 8.3,right: 8.1),
                child: Center(
                  child: Text(
                    "Jerman targetkan pariwisata pada tahun 2022 meningkat pada kuartal 1",
                    style: TextStyle(
                      fontSize: 18.0,
                      fontFamily: 'Times New Roman',
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ]),
          ),

          // SLIVER LIST TOMBOL 'ARTIKEL LAINNYA'
          SliverList(
            delegate: SliverChildListDelegate([
              Padding(
                padding: const EdgeInsets.only(
                    bottom: 10, top: 50, left: 110, right: 110),
                child: ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.white),
                    shape: MaterialStateProperty.all<OutlinedBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40.0),
                        side: BorderSide(
                          color: Color(0xFF113946),
                          width: 1.5, // Lebar border
                        ),
                      ),
                    ),
                  ),
                  child: Text(
                    "ARTIKEL LAINNYA",
                    style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'Times New Roman',
                      color: Color(0xFF113946),
                    ),
                  ),
                ),
              ),
            ]),
          ),

          // SLIVER LIST TULISAN HUBUNGI KAMI DAN ISINYA
          SliverList(
            delegate: SliverChildListDelegate([
              Container(
                padding: EdgeInsets.all(30.0),
                child: Column(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(top: 130,bottom: 10.0),
                      child: Text(
                        'Hubungi Kami',
                        style: TextStyle(
                          fontSize: 28.0,
                          fontWeight: FontWeight.w200,
                          fontFamily: 'Times New Roman',
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 10.0),
                      child: Text(
                        'Kantor Pusat',
                        style: TextStyle(
                          fontSize: 23.0,
                          fontWeight: FontWeight.w200,
                          fontFamily: 'Times New Roman',
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 10.0),
                      child: Text(
                        'MULA BY GALERIA JAKARTA, CILANDAK TOWN SQUARE, LT. BASEMENT.',
                        style: TextStyle(
                          fontSize: 18.0,
                          fontFamily: 'Times New Roman',
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 10.0,bottom: 30),
                      child: Text(
                        'Phone : 085286754052',
                        style: TextStyle(
                          fontSize: 16.0,
                          fontFamily: 'Times New Roman',
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
            ]),
          ),

          // SLIVER LIST FOOTER UNTUK COPYRIGHT
          SliverList(
            delegate: SliverChildListDelegate([
              Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: [
                      Color(0xFF113946),
                      Color(0xFFBCA37F),
                    ],
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Center(
                    child: SizedBox(
                      width: 310,
                      child: Text(
                        "Copyright 2022 - Inaklug Indonesia Hak Cipta dilindungi undang undang",
                        style: TextStyle(
                            fontFamily: 'Times New Roman', color: Colors.white),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
              ),
            ]),
          ),
        ],
      ),

      // Drawer
      endDrawer: Center(
        child: Container(
          width: double.infinity,
          margin: EdgeInsets.only(
              bottom: MediaQuery.of(context).size.height * 0.47),
          child: Drawer(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top: 40, left: 10, right: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(
                        "pictures/inaklug.png",
                        height: 65,
                        fit: BoxFit.contain,
                      ),
                      IconButton(
                        icon: Icon(
                          Icons.close,
                          size: 35.0,
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      )
                    ],
                  ),
                ),
                ListTile(
                  title: Text(
                    'HOME',
                    textAlign: TextAlign.left,
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.w300),
                  ),
                  contentPadding: EdgeInsets.only(left: 140),
                  onTap: () {},
                ),
                ListTile(
                  title: Text(
                    'TENTANG KAMI',
                    textAlign: TextAlign.left,
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.w300),
                  ),
                  contentPadding: EdgeInsets.only(left: 140),
                  onTap: () {},
                ),
                ListTile(
                  title: Text(
                    'LAYANAN KAMI',
                    textAlign: TextAlign.left,
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.w300),
                  ),
                  contentPadding: EdgeInsets.only(left: 140),
                  onTap: () {},
                ),
                ListTile(
                  title: Text(
                    'ARTIKEL',
                    textAlign: TextAlign.left,
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.w300),
                  ),
                  contentPadding: EdgeInsets.only(left: 140),
                  onTap: () {},
                ),
                ListTile(
                  title: Text(
                    'HUBUNGI KAMI',
                    textAlign: TextAlign.left,
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.w300),
                  ),
                  contentPadding: EdgeInsets.only(left: 140),
                  onTap: () {},
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
