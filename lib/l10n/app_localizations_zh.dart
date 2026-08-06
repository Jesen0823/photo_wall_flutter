// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Chinese (`zh`).
class AppLocalizationsZh extends AppLocalizations {
  AppLocalizationsZh([String locale = 'zh']) : super(locale);

  @override
  String get appTitle => '照片墙';

  @override
  String get homeTabPhoto => '照片墙';

  @override
  String get homeTabMessage => '留言墙';

  @override
  String get actionPublish => '发表';

  @override
  String get actionLike => '点赞';

  @override
  String get actionReport => '举报';

  @override
  String get actionRevoke => '撤回';

  @override
  String get actionEdit => '编辑';

  @override
  String get actionDelete => '删除';

  @override
  String get actionRetry => '重试';

  @override
  String get stateLoading => '加载中...';

  @override
  String get stateEmpty => '暂无内容';

  @override
  String get errorNetwork => '网络错误，请重试';

  @override
  String get errorUnknown => '发生未知错误';

  @override
  String get errorPageNotFound => '页面不存在';

  @override
  String get editorHintMessage => '写点什么...';

  @override
  String get editorHintPhoto => '选择照片';

  @override
  String get loginTitle => '登录';

  @override
  String get registerTitle => '注册';
}
