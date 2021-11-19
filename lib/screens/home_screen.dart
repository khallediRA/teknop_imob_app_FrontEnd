import 'package:flutter/material.dart';
import 'package:test_web_app/widgets/immobilier_post_dialog.dart';
import 'package:test_web_app/widgets/immobilier_post_list.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    print(screenSize);

    return Scaffold(
      extendBodyBehindAppBar: false,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leadingWidth: 300,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              "Tekno-Up Immobilier",
              style: Theme.of(context)
                  .textTheme
                  .headline1!
                  .copyWith(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            if (screenSize.width > 449)
              SizedBox(
                  width: 150,
                  height: 40,
                  child: ElevatedButton(
                    onPressed: () {
                      showDialog(
                          context: context,
                          builder: (context) {
                            return ImmobilerAddingDialog();
                          });
                    },
                    child: Text("Créer une annonce"),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.black,
                      textStyle: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.w500),
                    ),
                  )),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            HeaderStackedImage(
              screenSize: screenSize,
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              width: screenSize.width - (screenSize.width / 5),
              child: ImmobilierPostList(),
            )
          ],
        ),
      ),
    );
  }
}

class HeaderStackedImage extends StatelessWidget {
  final Size screenSize;
  const HeaderStackedImage({Key? key, required this.screenSize})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        child: ClipRRect(
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(15),
              bottomRight: Radius.circular(15)),
          child: Image(
            height: MediaQuery.of(context).size.height / 1.5,
            width: double.infinity,
            image: AssetImage("assets/images/wallpaper.png"),
            fit: BoxFit.cover,
          ),
        ),
      ),
      Container(
        height: MediaQuery.of(context).size.height / 1.5,
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              colors: [Colors.black, Colors.black26],
              end: Alignment.topCenter,
              begin: Alignment.bottomCenter),
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(20),
            bottomRight: Radius.circular(20),
          ),
        ),
      ),
      Positioned(
        child: Text(
          "TeknoUp Immobilier Test Made With Flutter",
          style: GoogleFonts.lato(
            textStyle: TextStyle(
                color: Colors.white,
                letterSpacing: .5,
                fontSize: screenSize.width > 843
                    ? screenSize.width / 32
                    : screenSize.width / 23,
                fontWeight: FontWeight.bold),
          ),
        ),
        top: screenSize.width > 590
            ? screenSize.height / 2
            : screenSize.height / 1.8,
        left: 5,
      )
    ]);
  }
}
