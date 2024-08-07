import 'package:exam/Screens/Helper/NewsHelper.dart';
import 'package:exam/Screens/Model/NewsModel.dart';
import 'package:flutter/cupertino.dart';

class Newsprovider extends ChangeNotifier
{
  ApiHelper apiHelper=ApiHelper();
  late Newsmodel newsmodel;

  void favouriteData(int index)
  {
    listOfFavourite.add(index);
    notifyListeners();
  }

  void removeFavourite(int index)
  {
    listOfFavourite.removeAt(index);
    notifyListeners();
  }
  Future<Newsmodel> fromJson()
  async {
    final Map data=await apiHelper.fetchNewsData();
    newsmodel=Newsmodel.fromJson(data);
    notifyListeners();
    return newsmodel;
  }
}
List listOfFavourite=[];