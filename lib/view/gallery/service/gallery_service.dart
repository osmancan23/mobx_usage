import 'package:mobx_usage/core/model/album_model.dart';
import 'package:vexana/vexana.dart';
import 'package:mobx/mobx.dart';

abstract class IGalleryService {
  late final INetworkManager _networkManager;

  IGalleryService(this._networkManager);

  Future<List<AlbumModel>?> getAllAlbums();
}

class GalleryService extends IGalleryService {
  GalleryService(INetworkManager networkManager) : super(networkManager);

  @override
  Future<List<AlbumModel>?> getAllAlbums() async {
    var response =
        await ObservableFuture(_networkManager.send<AlbumModel, List<AlbumModel>>("/photos", parseModel: AlbumModel(), method: RequestType.GET));

    return response.data;
  }
}
