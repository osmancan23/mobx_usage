// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gallery_view_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$GalleryViewModel on GalleryViewModelBase, Store {
  final _$albumsAtom = Atom(name: 'GalleryViewModelBase.albums');

  @override
  List<AlbumModel> get albums {
    _$albumsAtom.reportRead();
    return super.albums;
  }

  @override
  set albums(List<AlbumModel> value) {
    _$albumsAtom.reportWrite(value, super.albums, () {
      super.albums = value;
    });
  }

  final _$isLoadingAtom = Atom(name: 'GalleryViewModelBase.isLoading');

  @override
  bool get isLoading {
    _$isLoadingAtom.reportRead();
    return super.isLoading;
  }

  @override
  set isLoading(bool value) {
    _$isLoadingAtom.reportWrite(value, super.isLoading, () {
      super.isLoading = value;
    });
  }

  final _$getAlbumsAsyncAction = AsyncAction('GalleryViewModelBase.getAlbums');

  @override
  Future getAlbums() {
    return _$getAlbumsAsyncAction.run(() => super.getAlbums());
  }

  @override
  String toString() {
    return '''
albums: ${albums},
isLoading: ${isLoading}
    ''';
  }
}
