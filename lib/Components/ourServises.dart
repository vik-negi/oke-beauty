import 'package:flutter/material.dart';
import 'package:oyebeauty/Data/homePage_data.dart';

class OurServises extends StatelessWidget {
  const OurServises({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        shrinkWrap: true,
        padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 15),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            mainAxisExtent: 110),
        itemCount: ourServisesModel.length,
        itemBuilder: (context, i) {
          return Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(ourServisesModel[i].image),
              ),
              Positioned(
                bottom: 2,
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.45,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: Card(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: Text(ourServisesModel[i].title,
                                style: const TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w500,
                                )),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: Text(ourServisesModel[i].subTitle,
                                style: const TextStyle(
                                  fontSize: 8,
                                  fontWeight: FontWeight.w300,
                                )),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              )
            ],
          );
        });
  }
}
