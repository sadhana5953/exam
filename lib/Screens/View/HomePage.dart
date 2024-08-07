import 'package:exam/Screens/Provider/NewsProvider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    Newsprovider newsprovider = Provider.of(context, listen: false);
    return SafeArea(
      child: Scaffold(
        body: FutureBuilder(
          future: newsprovider.fromJson(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return Column(
                children: [
                  Container(
                    height: 190,
                    width: double.infinity,
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(15),
                        bottomRight: Radius.circular(15),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 75,
                              width: 75,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(image: NetworkImage('https://media.istockphoto.com/id/515009931/photo/african-female-news-reporter-in-live-broadcasting.jpg?s=612x612&w=0&k=20&c=8JpEyjVbjd9sfg1xnvHWqt1TlfuKlK0d1xHvJaWqMXU='),fit: BoxFit.cover)
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Text(
                                'Hii, Chaudhary Sadhana',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                            Spacer(),
                            IconButton(onPressed: (){Navigator.of(context).pushNamed('/save');}, icon: Icon(Icons.save,color: Colors.white,))
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 7, top: 20),
                          child: Text(
                            'Discover Trending and\n Latest News',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Today',
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
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: List.generate(
                        10,
                        (index) => Container(
                          height: 280,
                          width: 350,
                          margin: EdgeInsets.all(10),
                          padding: EdgeInsets.all(7),
                          decoration: BoxDecoration(
                            color: Colors.black87,
                            image: DecorationImage(
                                image: NetworkImage(
                                    'https://i.abcnewsfe.com/a/a8e44623-2b84-4d6d-bd00-033233ac5ef3/harris-walz-rally-02-rt-jt-240806_1722982102263_hpMain_16x9.jpg?w=992'),
                                fit: BoxFit.cover,
                                opacity: 0.60),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                '${newsprovider.newsmodel.sources[index].description}',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500),
                              ),
                              Row(
                                children: [
                                  Container(
                                    height: 55,
                                    width: 55,
                                    margin: EdgeInsets.only(bottom: 5, top: 8),
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(10),
                                      image: DecorationImage(image: NetworkImage('https://media.istockphoto.com/id/515009931/photo/african-female-news-reporter-in-live-broadcasting.jpg?s=612x612&w=0&k=20&c=8JpEyjVbjd9sfg1xnvHWqt1TlfuKlK0d1xHvJaWqMXU='),fit: BoxFit.cover)
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 8.0),
                                    child: Text(
                                      '${newsprovider.newsmodel.sources[index].name}',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 18,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
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
                        onTap: (){
                          selectedIndex=index;
                          Navigator.of(context).pushNamed('/detail');
                        },
                        child: Card(
                          child: Row(
                            children: [
                              Container(
                                height: 100,
                                width: 140,
                                margin: EdgeInsets.only(right: 10),
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
                                          .newsmodel.sources[index].description,
                                      textAlign: TextAlign.start,
                                      overflow: TextOverflow.fade,
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ),
                                  Text(
                                      newsprovider.newsmodel.sources[index].name),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      itemCount: newsprovider.newsmodel.sources.length,
                    ),
                  )
                ],
              );
            } else {
              return CircularProgressIndicator();
            }
          },
        ),
      ),
    );
  }
}

int selectedIndex=0;