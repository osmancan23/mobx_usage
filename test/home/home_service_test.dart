import 'package:flutter_test/flutter_test.dart';
import 'package:mobx_usage/view/gallery/service/gallery_service.dart';
import 'package:vexana/vexana.dart';

void main() {
  late GalleryService galleryService;

  setUp(() {
    galleryService = GalleryService(NetworkManager(options: BaseOptions(baseUrl: "https://jsonplaceholder.typicode.com/")));
  });

  test("Gallery Service Test", () async {
    var response = await galleryService.getAllAlbums();

    expect(response, isNotEmpty);
  });
}
