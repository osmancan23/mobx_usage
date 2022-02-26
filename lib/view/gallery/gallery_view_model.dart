import 'package:mobx/mobx.dart';
import 'package:vexana/vexana.dart';

import '../../core/model/album_model.dart';
part 'gallery_view_model.g.dart';

class GalleryViewModel = GalleryViewModelBase with _$GalleryViewModel;

abstract class GalleryViewModelBase with Store {
  INetworkManager networkManager = NetworkManager(isEnableLogger: true, options: BaseOptions(baseUrl: "https://jsonplaceholder.typicode.com/"));
  // final INetworkManager _networkManager = NetworkManager(options: BaseOptions(baseUrl: "https://jsonplaceholder.typicode.com/"));
  @observable
  late List<AlbumModel> albums = [];
  @observable
  bool isLoading = false;

  @action
  getAlbums() async {
    try {
      isLoading = true;
      final response =
          await ObservableFuture(networkManager.send<AlbumModel, List<AlbumModel>>("/photos", parseModel: AlbumModel(), method: RequestType.GET));
      if (response.data!.isNotEmpty) {
        isLoading = false;
      }
      albums = response.data!;
    } catch (e) {
      isLoading = false;
    }
  }
}
