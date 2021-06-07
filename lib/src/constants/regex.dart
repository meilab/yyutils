import '../theme/images.dart';

final RegExp imgRex =
    RegExp(r'(.*)\.(jpg|bmp|gif|ico|pcx|jpeg|tif|png|raw|tga)$');

final RegExp floatingNumberRex = RegExp(r'^[-+]?[0-9]*\.?[0-9]+$');
final RegExp positiveFloatingNumberRex = RegExp(r'^[0-9]*\.?[0-9]+$');
final RegExp positiveNumberRex = RegExp(r'^[0]*[1-9][0-9]{0,2}$');
final RegExp weightRex = RegExp(r'^[0-9]+(.[0-9]{1,3})?$');
final RegExp notNumAndWord = RegExp(r'[^a-zA-Z0-9]');
final RegExp numAndWord = RegExp(r'^[a-zA-Z0-9]+$');
// for password
final RegExp regNum = RegExp(r'\d+'); //验证0-9的任意数字最少出现1次。
final RegExp regWord = RegExp(r'[a-zA-Z]+'); //验证大小写26个字母任意字母最少出现1次。
final RegExp regCn = RegExp(r'[\u4e00-\u9fa5]'); //验证大小写26个字母任意字母最少出现1次。
final RegExp regSymbol = RegExp(
    r"[`~!@#\$%^&*()_\-+=<>?:\{}|,.\/;'\\[\]·~！@#￥%……&*（）——\-+={}|《》？：“”【】、；‘’，。、]-" +
        r'"'); //验证大小写26个字母任意字母最少出现1次。
