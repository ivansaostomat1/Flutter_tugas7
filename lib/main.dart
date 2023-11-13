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
            expandedHeight: 80.0,
            floating: false,
            pinned: true,
            flexibleSpace: Container(
              decoration:  BoxDecoration(
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
                      height: 70,
                    ),
                    const SizedBox(width: 29),
                    const Text(
                      "Irfan",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
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
                padding: EdgeInsets.only(top: 35.0),
                child: Column(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(bottom: 10.0),
                      child: Text(
                        'TENTANG KAMI',
                        style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 10.0),
                      child: Text(
                        'INAKLUG adalah konsultan pendidikan internasional di Indonesia yang sudah memberangkatkan lebih dari 3000 mahasiswa Indonesia yang ingin berkarir di negara maju di dunia',
                        style: TextStyle(fontSize: 16.0),
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
                padding: EdgeInsets.only(top: 50),
                child: Center(
                  child: Text(
                    "LAYANAN KAMI",
                    style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
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
                            colors: [
                              Color(0xFFBCA37F),
                              Colors.transparent],
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
                        "studi S1 bachelor",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 17.0,
                            fontWeight: FontWeight.bold
                        ),
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
                            colors: [
                              Color(0xFFBCA37F),
                              Colors.transparent
                            ],
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
                        "studi S2 master",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 17.0,
                            fontWeight: FontWeight.bold
                        ),
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
                            colors: [
                              Color(0xFFBCA37F),
                              Colors.transparent
                            ],
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
                        "perawat / caregiver",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 17.0,
                            fontWeight: FontWeight.bold
                        ),
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
                            colors: [
                              Color(0xFFBCA37F), Colors.transparent
                            ],
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
                        "kursus bahasa asing",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 17.0,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ]),
          ),

          // SLIVER LIST BOX IKLAN DAN TOMBOL 'MULAI KONSULTASI;
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Container(
                  margin: EdgeInsets.all(70.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.0),
                    gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: [
                        Color(0xFF113946),
                        Color(0xFFBCA37F),
                      ],
                    ),
                  ),
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Text(
                          "GRATIS KONSELING STUDI DI LUAR NEGRI",
                          style: TextStyle(
                            fontSize: 30.0,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Text(
                          "Konsultasikan seputar kuliah / bekerja di luar negri",
                          style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10,bottom: 10,right: 50 ,left: 50),
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent),
                            shape: MaterialStateProperty.all<OutlinedBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(45.0),
                                side: BorderSide(
                                  color: Colors.white,
                                  width: 1.0, // Lebar border
                                ),
                              ),
                            ),
                          ),
                          child: Row(
                            children: [
                              Text(
                                "Mulai Konsultasi   ",
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                              Icon(
                                Icons.keyboard_arrow_down,
                              ),
                            ],
                          ),
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
                    style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ]),
          ),

          // SLIVER LIST FOTO ARTIKEL TERBARU (goethe institute)
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
            ]),
          ),

          // SLIVER LIST TULISAN KETERANGAN ARTIKEL TERBARU (goethe institute)
          SliverList(
            delegate: SliverChildListDelegate([
              Padding(
                padding: EdgeInsets.only(top: 10),
                child: Center(
                  child: Text(
                    "belajar bahasa jerman melalui goethe institute",
                    style: TextStyle(fontSize: 18.0),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ]),
          ),

          // SLIVER LIST FOTO ARTIKEL TERBARU (target pariwisata)
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
            ]),
          ),

          // SLIVER LIST TULISAN KETERANGAN ARTIKEL TERBARU (target pariwisata)
          SliverList(
            delegate: SliverChildListDelegate([
              Padding(
                padding: EdgeInsets.only(top: 10),
                child: Center(
                  child: Text(
                    "jerman targetkan pariwisata pada tahun 2022 meningkat pada kuartal 1",
                    style: TextStyle(fontSize: 18.0),
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
                padding: const EdgeInsets.only(bottom: 10,top: 50,left: 60,right: 60),
                child: ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                    shape: MaterialStateProperty.all<OutlinedBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40.0),
                        side: BorderSide(
                          color:Color(0xFF113946),
                          width: 1, // Lebar border
                        ),
                      ),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 14,bottom: 14,left: 71,right: 71),
                    child: Text(
                      "ARTIKEL LAINNYA",
                      style: TextStyle(
                        color:  Color(0xFF113946),
                      ),
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
                      margin: EdgeInsets.only(bottom: 10.0),
                      child: Text(
                        'HUBUNGI KAMI',
                        style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 10.0),
                      child: Text(
                        'KANTOR PUSAT',
                        style: TextStyle(fontSize: 18.0),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 10.0),
                      child: Text(
                        'MULA BY GALERIA JAKARTA, CILANDAK TOWN SQUARE, LT. BASEMENT.',
                        style: TextStyle(fontSize: 16.0),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 10.0),
                      child: Text(
                        'PHONE : 0812-8134-5678',
                        style: TextStyle(fontSize: 16.0),
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
                  padding: const EdgeInsets.all(8.0),
                  child: Center(
                    child: Text(
                      "Copyright 2023 - inaklug hak cipta dilindungi undang undang",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
            ]),
          ),
        ],
      ),

      // Drawer (- text ga ketengah + icon x ngga mirip )
      endDrawer: Center(
        child: Container(
          width: double.infinity,
          margin: EdgeInsets.only(bottom: MediaQuery.of(context).size.height* 0.47),
          child: Drawer(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top: 40, left: 10,right: 10),
                  child:Row(
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
                  title: Text('HOME',
                    textAlign: TextAlign.left,
                    style: TextStyle(fontSize: 25,fontWeight: FontWeight.w300),
                  ),
                  contentPadding: EdgeInsets.only(left:140),
                  onTap: () {},
                ),
                ListTile(
                  title: Text('TENTANG KAMI',
                    textAlign: TextAlign.left,
                    style: TextStyle(fontSize: 25,fontWeight: FontWeight.w300),
                  ),
                  contentPadding: EdgeInsets.only(left:140),
                  onTap: () {},
                ),
                ListTile(
                  title: Text('LAYANAN KAMI',
                    textAlign: TextAlign.left,
                    style: TextStyle(fontSize: 25,fontWeight: FontWeight.w300),
                  ),
                  contentPadding: EdgeInsets.only(left:140),
                  onTap: () {},
                ),
                ListTile(
                  title: Text('ARTIKEL',
                    textAlign: TextAlign.left,
                    style: TextStyle(fontSize: 25,fontWeight: FontWeight.w300),
                  ),
                  contentPadding: EdgeInsets.only(left:140),
                  onTap: () {},
                ),
                ListTile(
                  title: Text(
                      'HUBUNGI KAMI',
                      textAlign: TextAlign.left,
                      style: TextStyle(fontSize: 25,fontWeight: FontWeight.w300),
                  ),
                  contentPadding: EdgeInsets.only(left:140),
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
