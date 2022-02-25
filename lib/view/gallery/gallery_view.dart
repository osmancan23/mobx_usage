import "package:flutter/material.dart";
import 'package:flutter_mobx/flutter_mobx.dart';
import '../../core/base/base_widget.dart';
import '../../core/model/album_model.dart';
import 'gallery_view_model.dart';

class GalleryView extends StatelessWidget {
  GalleryView({Key? key}) : super(key: key);
  late GalleryViewModel _galleryViewModel;
  @override
  Widget build(BuildContext context) {
    return BaseView<GalleryViewModel>(
      viewModel: GalleryViewModel(),
      onModelReady: (model) {
        _galleryViewModel = model;
        _galleryViewModel.getAlbums();
      },
      onPageBuilder: (context, value) => Scaffold(
        body: Column(
          children: [
            Observer(builder: (_) {
              return Text(value.num.toString());
            }),
            value.albums.isEmpty ? _buildLoading() : _buildLoaded(value),
          ],
        ),
        floatingActionButton: FloatingActionButton(onPressed: () {
          value.increase();
        }),
      ),
    );
  }

  Observer _buildLoaded(GalleryViewModel value) {
    return Observer(
      builder: (_) {
        return ListView.builder(
          itemCount: value.albums.length,
          itemBuilder: (BuildContext context, int index) {
            AlbumModel albumModel = value.albums[index];
            return Column(
              children: [
                SizedBox(
                  width: 400,
                  height: 200,
                  child: Image.network(
                    albumModel.url!,
                    fit: BoxFit.fitWidth,
                  ),
                ),
                Text(albumModel.title!)
              ],
            );
          },
        );
      },
    );
  }

  Center _buildLoading() => Center(child: CircularProgressIndicator());
}
