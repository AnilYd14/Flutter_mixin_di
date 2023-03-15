

import 'package:di_mixin_extension_demo/data_repo.dart';
import 'package:get_it/get_it.dart';

final locator = GetIt.instance;

void setUp(){
  locator.registerLazySingleton<DataRepo>(() => DataRepo());
}