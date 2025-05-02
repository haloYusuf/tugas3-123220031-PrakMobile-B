import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../services/api_service.dart';
import '../../models/character_model.dart';
import '../../routes/route_name.dart';

class AkatsukiController extends GetxController {
  final ScrollController scrollController = ScrollController();
  List<CharacterModel> _akatsukiData = [];
  final _currentPage = 1.obs;
  final _maxPage = 3;
  final _initLoad = true.obs;
  final _loadMore = false.obs;

  @override
  void onInit() {
    super.onInit();
    Future.delayed(
      const Duration(seconds: 2),
      () => getAllData(),
    );
    Future.delayed(const Duration(seconds: 2), () {});
    scrollController.addListener(_scrollBehavior);
  }

  bool isInitLoad() {
    return _initLoad.value;
  }

  bool isLoadMore() {
    return _loadMore.value;
  }

  int getLengthData() {
    return _akatsukiData.length;
  }

  bool hasMorePage() {
    return _currentPage.value <= _maxPage;
  }

  CharacterModel getCurrentData({required int index}) {
    return _akatsukiData[index];
  }

  void _scrollBehavior() {
    if (scrollController.position.pixels >=
            scrollController.position.maxScrollExtent - 50 &&
        !_initLoad.value &&
        !_loadMore.value &&
        _currentPage.value <= _maxPage) {
      Future.delayed(
        const Duration(seconds: 2),
        () => getAllData(),
      );
    }
  }

  Future<void> getAllData() async {
    if (_loadMore.value) return;
    _loadMore.value = true;
    try {
      _akatsukiData = _akatsukiData
        ..addAll(
          await ApiService.getAkatsukiData(page: _currentPage.value),
        );
      _currentPage.value += 1;
      _initLoad.value = false;
    } catch (e) {
      _initLoad.value = true;
    }
    _loadMore.value = false;
  }

  void handleItemClick({required int index}) {
    Get.toNamed(
      RouteName.detail,
      arguments: _akatsukiData[index],
    );
  }
}
