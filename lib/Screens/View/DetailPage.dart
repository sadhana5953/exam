import 'package:exam/Screens/View/HomePage.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../Provider/NewsProvider.dart';

class Detailpage extends StatelessWidget {
  const Detailpage({super.key});

  @override
  Widget build(BuildContext context) {
    Newsprovider newsprovider = Provider.of(context, listen: false);
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 100,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(15),
                    bottomLeft: Radius.circular(15)),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      icon: Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                      )),
                  Text(
                    'News Detail',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 22),
                  ),
                  IconButton(
                      onPressed: () {
                        newsprovider.favouriteData(selectedIndex);
                      },
                      icon: Icon(
                        Icons.save_alt,
                        color: Colors.white,
                      )),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, top: 8),
              child: Text(
                newsprovider.newsmodel.sources[selectedIndex].name,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              height: 250,
              width: double.infinity,
              margin: EdgeInsets.all(15),
              decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(
                      image: NetworkImage(
                          'https://imagetesting.chartbeat.com/abc.net.au/buGTy6VawEP5a.png?width=862&height=485'),
                      fit: BoxFit.cover)),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Text(
                '${newsprovider.newsmodel.sources[selectedIndex].description}${newsprovider.newsmodel.sources[selectedIndex].description}${newsprovider.newsmodel.sources[selectedIndex].description}',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
