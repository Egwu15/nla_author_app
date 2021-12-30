import 'package:hive_flutter/hive_flutter.dart';
import 'package:nla_author_app/model/storeValues.dart';

class HiveStorageMain {
  var box;
  hiveName() {
    return box = Hive.box(StoreValues.mainBox);
  }

// TOKEN
  addToken(String token) {
    hiveName();
    box.put(StoreValues.token, token);
  }

  getToken() {
    hiveName();
    return box.get(StoreValues.token);
  }
}
