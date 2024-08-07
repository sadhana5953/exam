import 'package:flutter/material.dart';
import 'package:exam/Screens/Provider/NewsProvider.dart';
import 'package:provider/provider.dart';

class Savedscreen extends StatelessWidget {
  const Savedscreen({super.key});

  @override
  Widget build(BuildContext context) {
    Newsprovider newsprovider = Provider.of(context, listen: false);
    Newsprovider newsproviderTrue = Provider.of(context, listen: true);
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: Icon(
              Icons.arrow_back,
              color: Colors.white,
            )),
        title: Text(
          'Latest News',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
        ),
        backgroundColor: Colors.red,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Top News',
                  style: TextStyle(
                      color: Colors.grey.shade700,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                ),
                Text(
                  'View all',
                  style: TextStyle(
                      color: Colors.redAccent,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) => GestureDetector(
                onTap: () {},
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Card(
                        child: Row(
                          children: [
                            Container(
                              height: 100,
                              width: 140,
                              margin: EdgeInsets.only(right: 10, left: 10),
                              decoration: BoxDecoration(
                                  color: Colors.red,
                                  borderRadius: BorderRadius.circular(7),
                                  image: DecorationImage(
                                      image: NetworkImage(
                                          'https://imagetesting.chartbeat.com/abc.net.au/buGTy6VawEP5a.png?width=862&height=485'),
                                      fit: BoxFit.cover)),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  height: 67,
                                  width: 230,
                                  margin: EdgeInsets.only(bottom: 7),
                                  child: Text(
                                    newsprovider
                                        .newsmodel
                                        .sources[listOfFavourite[index]]
                                        .description,
                                    textAlign: TextAlign.start,
                                    overflow: TextOverflow.fade,
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                                Text(newsprovider.newsmodel
                                    .sources[listOfFavourite[index]].name),
                              ],
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        height: 100,
                        width: 80,
                        decoration: BoxDecoration(
                            color: Color(0xfff5f0f8),
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(40),
                                bottomRight: Radius.circular(40))),
                        child: IconButton(
                            onPressed: () {
                              newsprovider.removeFavourite(index);
                            },
                            icon: Icon(Icons.delete, color: Colors.red)),
                      ),
                    ],
                  ),
                ),
              ),
              itemCount: listOfFavourite.length,
            ),
          )
        ],
      ),
    );
  }
}
