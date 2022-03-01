import 'package:mobx/mobx.dart';
import 'package:mobx_usage/view/gallery/service/gallery_service.dart';
import 'package:vexana/vexana.dart';

import '../../core/model/album_model.dart';
part 'gallery_view_model.g.dart';

class GalleryViewModel = GalleryViewModelBase with _$GalleryViewModel;

abstract class GalleryViewModelBase with Store {
  final IGalleryService _galleryService =
      GalleryService(NetworkManager(isEnableLogger: true, options: BaseOptions(baseUrl: "https://jsonplaceholder.typicode.com/")));
  @observable
  late List<AlbumModel> albums = [];
  @observable
  bool isLoading = false;

  @action
  getAlbums() async {
    try {
      isLoading = true;
      final response = await _galleryService.getAllAlbums();
      if (response!.isNotEmpty) {
        isLoading = false;
      }
      albums = response;
    } catch (e) {
      isLoading = false;
    }
  }
}
