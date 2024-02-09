import 'package:flutter/material.dart';
import 'package:provider_course/models/all_crypto_model.dart';
import 'package:provider_course/network/api_provider.dart';
import 'package:provider_course/network/response_model.dart';

class CryptoDataProvider extends ChangeNotifier {
  ApiProvider apiProvider = ApiProvider();

  late AllCryptoModel dataFutur;
  late ResponseModel state;
  var response;

  getTopMarketCapData() async {
    state = ResponseModel.loading('is loading ...');

    try {
      response = await apiProvider.getTopMarketCapData();
      if (response.statusCode == 200) {
        dataFutur = AllCryptoModel.fromJson(response.data);
        response = ResponseModel.completed(dataFutur);
      } else {
        state = ResponseModel.error('something wrong please try again');
      }

      notifyListeners();
    } catch (e) {
      state = ResponseModel.error('please check your connection!');
      notifyListeners();
    }
  }
}
