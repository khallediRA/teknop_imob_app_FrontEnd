import 'package:flutter/material.dart';
import 'package:test_web_app/models/immobilier_post.dart';
import 'package:test_web_app/screens/home_screen.dart';
import 'package:test_web_app/services/network_calls.dart';

_buildTitle() {
  return TextFormField(
    decoration: InputDecoration(
      labelText: "Titre de la publication",
      labelStyle: TextStyle(
        color: Colors.grey,
      ),
      border: OutlineInputBorder(
        borderSide: const BorderSide(color: Colors.black, width: 1.0),
        borderRadius: BorderRadius.circular(25.0),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: const BorderSide(color: Colors.black, width: 1.0),
        borderRadius: BorderRadius.circular(25.0),
      ),
    ),
    validator: (String? value) {
      if (value!.isEmpty) return "Title ne doit pas être vide";
    },
    onSaved: (String? value) {
      title = value;
    },
  );
}

_buildContact() {
  return TextFormField(
    decoration: InputDecoration(
      labelText: "Contact",
      labelStyle: TextStyle(
        color: Colors.grey,
      ),
      border: OutlineInputBorder(
        borderSide: const BorderSide(color: Colors.black, width: 1.0),
        borderRadius: BorderRadius.circular(25.0),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: const BorderSide(color: Colors.black, width: 1.0),
        borderRadius: BorderRadius.circular(25.0),
      ),
    ),
    validator: (String? value) {
      if (value!.isEmpty) return "Contact ne doit pas être vide";
      if (!_isNumeric(value)) return "Prix doit être numerique";
    },
    onSaved: (String? value) {
      contact = int.parse(value.toString());
    },
  );
}

_buildPrice() {
  return TextFormField(
    decoration: InputDecoration(
      labelText: "Prix",
      labelStyle: TextStyle(
        color: Colors.grey,
      ),
      border: OutlineInputBorder(
        borderSide: const BorderSide(color: Colors.black, width: 1.0),
        borderRadius: BorderRadius.circular(25.0),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: const BorderSide(color: Colors.black, width: 1.0),
        borderRadius: BorderRadius.circular(25.0),
      ),
    ),
    validator: (String? value) {
      if (value!.isEmpty) return "Prix ne doit pas être vide";
      if (!_isNumeric(value)) return "Prix doit être numerique";
    },
    onSaved: (String? value) {
      price = double.parse(value.toString());
    },
  );
}

_buildSuperficie() {
  return TextFormField(
    decoration: InputDecoration(
      labelText: "Superficie",
      labelStyle: TextStyle(
        color: Colors.grey,
      ),
      border: OutlineInputBorder(
        borderSide: const BorderSide(color: Colors.black, width: 1.0),
        borderRadius: BorderRadius.circular(25.0),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: const BorderSide(color: Colors.black, width: 1.0),
        borderRadius: BorderRadius.circular(25.0),
      ),
    ),
    validator: (String? value) {
      if (value!.isEmpty) return "Superficie ne doit pas être vide";
      if (!_isNumeric(value)) return "Superficie doit être numerique";
    },
    onSaved: (String? value) {
      superficie = double.parse(value.toString());
    },
  );
}

_buildAdresse() {
  return TextFormField(
    decoration: InputDecoration(
      labelText: "Addresse",
      labelStyle: TextStyle(
        color: Colors.grey,
      ),
      border: OutlineInputBorder(
        borderSide: const BorderSide(color: Colors.black, width: 1.0),
        borderRadius: BorderRadius.circular(25.0),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: const BorderSide(color: Colors.black, width: 1.0),
        borderRadius: BorderRadius.circular(25.0),
      ),
    ),
    validator: (String? value) {
      if (value!.isEmpty) return "Addresse ne doit pas être vide";
    },
    onSaved: (String? value) {
      adresse = value;
    },
  );
}

_buildCountryName() {
  return TextFormField(
    decoration: InputDecoration(
      labelText: "Pays",
      labelStyle: TextStyle(
        color: Colors.grey,
      ),
      border: OutlineInputBorder(
        borderSide: const BorderSide(color: Colors.black, width: 1.0),
        borderRadius: BorderRadius.circular(25.0),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: const BorderSide(color: Colors.black, width: 1.0),
        borderRadius: BorderRadius.circular(25.0),
      ),
    ),
    validator: (String? value) {
      if (value!.isEmpty) return "Pays ne doit pas être vide";
    },
    onSaved: (String? value) {
      countryName = value;
    },
  );
}

_buildCityName() {
  return TextFormField(
    decoration: InputDecoration(
      labelText: "Ville",
      labelStyle: TextStyle(
        color: Colors.grey,
      ),
      border: OutlineInputBorder(
        borderSide: const BorderSide(color: Colors.black, width: 1.0),
        borderRadius: BorderRadius.circular(25.0),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: const BorderSide(color: Colors.black, width: 1.0),
        borderRadius: BorderRadius.circular(25.0),
      ),
    ),
    validator: (String? value) {
      if (value!.isEmpty) return "Ville ne doit pas être vide";
    },
    onSaved: (String? value) {
      cityname = value;
    },
  );
}

_buildDescription() {
  return TextFormField(
    maxLines: 5,
    minLines: 3,
    decoration: InputDecoration(
      labelText: "Description",
      labelStyle: TextStyle(
        color: Colors.grey,
      ),
      isDense: true, // important line

      border: OutlineInputBorder(
        borderSide: const BorderSide(color: Colors.black, width: 1.0),
        borderRadius: BorderRadius.circular(25.0),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: const BorderSide(color: Colors.black, width: 1.0),
        borderRadius: BorderRadius.circular(25.0),
      ),
    ),
    validator: (String? value) {
      if (value!.isEmpty) return "Description ne doit pas être vide";
    },
    onSaved: (String? value) {
      description = value;
    },
  );
}

bool _isNumeric(String result) {
  if (result == null) {
    return false;
  }
  return double.tryParse(result) != null;
}

String? title;
String? description;
String? imageUrl;
double? price;
String? adresse;
String? countryName;
String? cityname;
int? contact;
double? superficie;

class ImmobilerAddingDialog extends StatefulWidget {
  const ImmobilerAddingDialog({Key? key}) : super(key: key);

  @override
  _ImmobilerAddingDialogState createState() => _ImmobilerAddingDialogState();
}

class _ImmobilerAddingDialogState extends State<ImmobilerAddingDialog> {
  final GlobalKey<FormState> _formKey = new GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return AlertDialog(
      titlePadding: EdgeInsets.only(bottom: 10),
      titleTextStyle: Theme.of(context).textTheme.subtitle1!.copyWith(
          fontSize: 20, fontWeight: FontWeight.w300, color: Colors.white),
      title: Container(
        width: double.infinity,
        height: 40,
        child: Center(
          child: Text(
            "Créer une nouvelle annonce",
            textAlign: TextAlign.center,
          ),
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.0),
          color: Colors.black,
        ),
      ),
      content: Container(
        height: screenSize.height * 0.65,
        width: screenSize.width * 0.3,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(30)),
        child: SingleChildScrollView(
          child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _buildTitle(),
                  const SizedBox(
                    height: 20,
                  ),
                  _buildContact(),
                  const SizedBox(
                    height: 20,
                  ),
                  _buildPrice(),
                  const SizedBox(
                    height: 20,
                  ),
                  _buildSuperficie(),
                  const SizedBox(
                    height: 20,
                  ),
                  _buildAdresse(),
                  const SizedBox(
                    height: 20,
                  ),
                  _buildCountryName(),
                  const SizedBox(
                    height: 20,
                  ),
                  _buildCityName(),
                  const SizedBox(
                    height: 20,
                  ),
                  _buildDescription(),
                  SizedBox(
                    height: 20.0,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: SizedBox(),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Annuler",
                            style: TextStyle(fontSize: screenSize.width * 0.01),
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.red[800],
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      ElevatedButton(
                        onPressed: () async {
                          if (!_formKey.currentState!.validate()) {
                            return;
                          }

                          _formKey.currentState!.save();
                          ImmobilierPost immobilierPost = ImmobilierPost(
                              adresse: adresse,
                              title: title,
                              cityname: cityname,
                              contact: contact,
                              countryName: countryName,
                              description: description,
                              price: price,
                              superficie: superficie,
                              imageUrl: "assets/images/pic 3.jpg");
                          NetworkCalls networkCalls = NetworkCalls();
                          await networkCalls
                              .createNewImmobilierPost(immobilierPost.toJson());

                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HomeScreen()),
                          );
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Valider",
                            style: TextStyle(fontSize: screenSize.width * 0.01),
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.green[900],
                        ),
                      ),
                    ],
                  ),
                ],
              )),
        ),
      ),
    );
  }
}
