import 'dart:convert';
import 'dart:io';

import 'package:flutter_bloc_with_freezed/model/game_model.dart';
import 'package:http/http.dart' as http;

abstract class IProductService {
  Future<List<GameModel>> fetchProducts();
}

class ProductService extends IProductService {
  @override
  Future<List<GameModel>> fetchProducts() async {
    final servicePath = Uri.parse(
        "https://www.gamerpower.com/api/giveaways?type=$ProductServiceEndPoints.GAME.rawValue");
    final response = await http.get(servicePath);
    if (response.statusCode != HttpStatus.ok) {
      return throw "Error";
    } else {
      Iterable models = jsonDecode(response.body);
      List<GameModel> dataModels = [];
      for (var model in models) {
        GameModel dataModel = GameModel.fromJson(model);
        dataModels.add(dataModel);
      }
      return dataModels;
    }
  }
}

extension ProductServiceExtension on ProductServiceEndPoints {
  String get rawValue {
    switch (this) {
      case ProductServiceEndPoints.GAME:
        return 'game';
    }
  }
}

enum ProductServiceEndPoints { GAME }
