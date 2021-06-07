import 'dart:io';

import 'package:dio/dio.dart';

Future<Map<String, String>> Function(Future<FormData>) _uploadImage(
        Future<Response> uploadHandler(FormData formData)) =>
    (Future<FormData> formData) async {
      Response res = await uploadHandler(await formData);
      if (res.data['errorCode'] == 0 && res.data['data'] != null) {
        return {"id": res.data['data']['id'], "path": res.data['data']['path']};
      } else {
        return {};
      }
    };

Future<List<Map<String, String>>> uploadImages(
    Future<Response> uploadHandler(FormData formData),
    List<File> imageList) async {
  List<Future<FormData>> formDatas = imageList
      .map((image) async => FormData.fromMap({
            'file': await MultipartFile.fromFile(
              // image, filename: 'image.jpg',
              // TODO: need to check how to handle this
              image.path, filename: 'image.jpg',
              // contentType: ContentType("image", "jpeg")
            )
          }))
      .toList();

  List<Map<String, String>> fileInfoList = await Future.wait(formDatas
      .map<Future<Map<String, String>>>(_uploadImage(uploadHandler))
      .toList());

  return fileInfoList;
}
