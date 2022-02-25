// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gallery_view_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$GalleryViewModel on _GalleryViewModelBase, Store {
  final _$albumsAtom = Atom(name: '_GalleryViewModelBase.albums');

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

  final _$numAtom = Atom(name: '_GalleryViewModelBase.num');

  @override
  int get num {
    _$numAtom.reportRead();
    return super.num;
  }

  @override
  set num(int value) {
    _$numAtom.reportWrite(value, super.num, () {
      super.num = value;
    });
  }

  final _$getAlbumsAsyncAction = AsyncAction('_GalleryViewModelBase.getAlbums');

  @override
  Future getAlbums() {
    return _$getAlbumsAsyncAction.run(() => super.getAlbums());
  }

  final _$_GalleryViewModelBaseActionController =
      ActionController(name: '_GalleryViewModelBase');

  @override
  dynamic increase() {
    final _$actionInfo = _$_GalleryViewModelBaseActionController.startAction(
        name: '_GalleryViewModelBase.increase');
    try {
      return super.increase();
    } finally {
      _$_GalleryViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
albums: ${albums},
num: ${num}
    ''';
  }
}
