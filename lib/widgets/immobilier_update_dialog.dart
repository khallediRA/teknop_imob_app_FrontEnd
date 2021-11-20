import 'dart:math';

import 'package:flutter/material.dart';
import 'package:test_web_app/models/immobilier_post.dart';
import 'package:test_web_app/screens/home_screen.dart';
import 'package:test_web_app/services/network_calls.dart';

_buildTitle(String initialTitle) {
  return TextFormField(
    initialValue: initialTitle,
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

_buildContact(int initialContact) {
  return TextFormField(
    initialValue: initialContact.toString(),
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
      if (!_isNumeric(value)) return "Contact doit être numerique";
    },
    onSaved: (String? value) {
      contact = int.parse(value.toString());
    },
  );
}

_buildPrice(double initialPrice) {
  return TextFormField(
    initialValue: initialPrice.toString(),
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

_buildSuperficie(double initialSuperficie) {
  return TextFormField(
    initialValue: initialSuperficie.toString(),
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

_buildAdresse(String initialAdresse) {
  return TextFormField(
    initialValue: initialAdresse,
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

_buildCountryName(String initialCountryName) {
  return TextFormField(
    initialValue: initialCountryName,
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

_buildCityName(String initialCityName) {
  return TextFormField(
    initialValue: initialCityName,
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

_buildDescription(String initialDescrition) {
  return TextFormField(
    initialValue: initialDescrition,
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

class ImmobilerUpdateDialog extends StatefulWidget {
  final ImmobilierPost immobilierPost;
  const ImmobilerUpdateDialog({Key? key, required this.immobilierPost})
      : super(key: key);

  @override
  _ImmobilerUpdateDialogState createState() => _ImmobilerUpdateDialogState();
}

class _ImmobilerUpdateDialogState extends State<ImmobilerUpdateDialog> {
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
            "Modification publication",
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
                  _buildTitle(widget.immobilierPost.title!),
                  const SizedBox(
                    height: 20,
                  ),
                  _buildContact(widget.immobilierPost.contact!),
                  const SizedBox(
                    height: 20,
                  ),
                  _buildPrice(widget.immobilierPost.price!),
                  const SizedBox(
                    height: 20,
                  ),
                  _buildSuperficie(widget.immobilierPost.superficie!),
                  const SizedBox(
                    height: 20,
                  ),
                  _buildAdresse(widget.immobilierPost.adresse!),
                  const SizedBox(
                    height: 20,
                  ),
                  _buildCountryName(widget.immobilierPost.countryName!),
                  const SizedBox(
                    height: 20,
                  ),
                  _buildCityName(widget.immobilierPost.cityname!),
                  const SizedBox(
                    height: 20,
                  ),
                  _buildDescription(widget.immobilierPost.description!),
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
                          Random random = new Random();
                          int randomNumber = random.nextInt(5);
                          ImmobilierPost immobilierPost = ImmobilierPost(
                              immobilierPostId:
                                  widget.immobilierPost.immobilierPostId,
                              adresse: adresse,
                              title: title,
                              cityname: cityname,
                              contact: contact,
                              countryName: countryName,
                              description: description,
                              price: price,
                              superficie: superficie,
                              imageUrl: widget.immobilierPost.imageUrl);
                          NetworkCalls networkCalls = NetworkCalls();
                          await networkCalls
                              .updateImmobilierPost(immobilierPost);

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
