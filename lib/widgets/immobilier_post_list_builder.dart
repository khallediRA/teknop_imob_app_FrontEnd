import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:test_web_app/models/immobilier_post.dart';

buildPostList(BuildContext context, List<ImmobilierPost> immobilierPostList) {
  Size screenSize = MediaQuery.of(context).size;

  return GridView(
    shrinkWrap: true,
    physics: const NeverScrollableScrollPhysics(),
    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: screenSize.width > 1700
          ? 3
          : screenSize.width > 1000
              ? 3
              : 2,
      mainAxisSpacing: 5.0,
    ),
    children: [
      ...immobilierPostList.map(
        (immobilierPost) => Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5.0),
          child: Container(
            height: screenSize.width / 15.5,
            width: screenSize.width / 16,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey, width: 0.5),
              color: Colors.white,
              borderRadius: BorderRadius.circular(13),
              boxShadow: const [
                BoxShadow(
                    offset: Offset(4, 2), color: Colors.grey, blurRadius: 4)
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: screenSize.width < 1000
                      ? screenSize.width / 5
                      : screenSize.width / 7.2,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey, width: 0.5),
                    borderRadius: BorderRadius.circular(13),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Image(
                      image: AssetImage(immobilierPost.imageUrl.toString()),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        immobilierPost.title.toString(),
                        style: GoogleFonts.abel(
                            textStyle: TextStyle(
                                color: Colors.black,
                                fontSize: screenSize.width > 1800 ? 25 : 20,
                                fontWeight: FontWeight.w600)),
                      ),
                      Row(
                        children: [
                          Icon(Icons.house),
                          Text("Superfecie : ",
                              style: Theme.of(context).textTheme.subtitle1),
                          Text(immobilierPost.superficie.toString(),
                              style: Theme.of(context).textTheme.bodyText1),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(Icons.location_city_rounded),
                          Text("Addresse : ",
                              style: Theme.of(context).textTheme.subtitle1),
                          Text(immobilierPost.adresse.toString(),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: Theme.of(context).textTheme.bodyText1),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(Icons.location_on_outlined),
                          Text("Cité : ",
                              style: Theme.of(context).textTheme.subtitle1),
                          SizedBox(
                            width: 200,
                            child: Text(
                                immobilierPost.cityname.toString() +
                                    ", " +
                                    immobilierPost.countryName.toString(),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: Theme.of(context).textTheme.bodyText1),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(Icons.price_change_outlined),
                          Text("Prix : ",
                              style: Theme.of(context).textTheme.subtitle1),
                          Text(immobilierPost.price.toString() + " \$",
                              style: Theme.of(context).textTheme.bodyText1),
                        ],
                      ),
                      if (screenSize.width > 1300 || screenSize.width < 1000)
                        Row(
                          children: [
                            Icon(Icons.contact_phone_outlined),
                            Text(" Contact : ",
                                style: Theme.of(context).textTheme.subtitle1),
                            Text(immobilierPost.contact.toString(),
                                style: Theme.of(context).textTheme.bodyText1),
                          ],
                        ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      )
    ],
  );
}
