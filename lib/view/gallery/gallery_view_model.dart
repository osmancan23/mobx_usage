import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:vexana/vexana.dart';

import '../../core/model/album_model.dart';
part 'gallery_view_model.g.dart';

class GalleryViewModel = _GalleryViewModelBase with _$GalleryViewModel;

abstract class _GalleryViewModelBase with Store {
  INetworkManager networkManager = NetworkManager(isEnableLogger: true, options: BaseOptions(baseUrl: "https://jsonplaceholder.typicode.com/"));
  // final INetworkManager _networkManager = NetworkManager(options: BaseOptions(baseUrl: "https://jsonplaceholder.typicode.com/"));
  @observable
  late List<AlbumModel> albums = [];

  @observable
  int num = 0;
  @action
  increase() {
    num++;
  }

  @action
  getAlbums() async {
    final response = await networkManager.send<AlbumModel, List<AlbumModel>>("/photos", parseModel: AlbumModel(), method: RequestType.GET);
    albums = response.data!;
  }
}
