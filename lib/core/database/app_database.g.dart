// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_database.dart';

// ignore_for_file: type=lint
class $WallCacheTableTable extends WallCacheTable
    with TableInfo<$WallCacheTableTable, WallCacheTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $WallCacheTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    hasAutoIncrement: true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'PRIMARY KEY AUTOINCREMENT',
    ),
  );
  static const VerificationMeta _remoteIdMeta = const VerificationMeta(
    'remoteId',
  );
  @override
  late final GeneratedColumn<int> remoteId = GeneratedColumn<int>(
    'remote_id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _typeMeta = const VerificationMeta('type');
  @override
  late final GeneratedColumn<int> type = GeneratedColumn<int>(
    'type',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _messageMeta = const VerificationMeta(
    'message',
  );
  @override
  late final GeneratedColumn<String> message = GeneratedColumn<String>(
    'message',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
    'name',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _userIdMeta = const VerificationMeta('userId');
  @override
  late final GeneratedColumn<String> userId = GeneratedColumn<String>(
    'user_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _momentMeta = const VerificationMeta('moment');
  @override
  late final GeneratedColumn<String> moment = GeneratedColumn<String>(
    'moment',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _labelMeta = const VerificationMeta('label');
  @override
  late final GeneratedColumn<int> label = GeneratedColumn<int>(
    'label',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultValue: const Constant(0),
  );
  static const VerificationMeta _colorMeta = const VerificationMeta('color');
  @override
  late final GeneratedColumn<int> color = GeneratedColumn<int>(
    'color',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultValue: const Constant(1),
  );
  static const VerificationMeta _imgUrlMeta = const VerificationMeta('imgUrl');
  @override
  late final GeneratedColumn<String> imgUrl = GeneratedColumn<String>(
    'img_url',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _likeCountMeta = const VerificationMeta(
    'likeCount',
  );
  @override
  late final GeneratedColumn<int> likeCount = GeneratedColumn<int>(
    'like_count',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultValue: const Constant(0),
  );
  static const VerificationMeta _reportCountMeta = const VerificationMeta(
    'reportCount',
  );
  @override
  late final GeneratedColumn<int> reportCount = GeneratedColumn<int>(
    'report_count',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultValue: const Constant(0),
  );
  static const VerificationMeta _revokeCountMeta = const VerificationMeta(
    'revokeCount',
  );
  @override
  late final GeneratedColumn<int> revokeCount = GeneratedColumn<int>(
    'revoke_count',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultValue: const Constant(0),
  );
  static const VerificationMeta _commentCountMeta = const VerificationMeta(
    'commentCount',
  );
  @override
  late final GeneratedColumn<int> commentCount = GeneratedColumn<int>(
    'comment_count',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultValue: const Constant(0),
  );
  static const VerificationMeta _isLikedMeta = const VerificationMeta(
    'isLiked',
  );
  @override
  late final GeneratedColumn<bool> isLiked = GeneratedColumn<bool>(
    'is_liked',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("is_liked" IN (0, 1))',
    ),
    defaultValue: const Constant(false),
  );
  static const VerificationMeta _cachedAtMeta = const VerificationMeta(
    'cachedAt',
  );
  @override
  late final GeneratedColumn<DateTime> cachedAt = GeneratedColumn<DateTime>(
    'cached_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
    defaultValue: currentDateAndTime,
  );
  static const VerificationMeta _pageMeta = const VerificationMeta('page');
  @override
  late final GeneratedColumn<int> page = GeneratedColumn<int>(
    'page',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _pageSizeMeta = const VerificationMeta(
    'pageSize',
  );
  @override
  late final GeneratedColumn<int> pageSize = GeneratedColumn<int>(
    'page_size',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    remoteId,
    type,
    message,
    name,
    userId,
    moment,
    label,
    color,
    imgUrl,
    likeCount,
    reportCount,
    revokeCount,
    commentCount,
    isLiked,
    cachedAt,
    page,
    pageSize,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'wall_cache_table';
  @override
  VerificationContext validateIntegrity(
    Insertable<WallCacheTableData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('remote_id')) {
      context.handle(
        _remoteIdMeta,
        remoteId.isAcceptableOrUnknown(data['remote_id']!, _remoteIdMeta),
      );
    } else if (isInserting) {
      context.missing(_remoteIdMeta);
    }
    if (data.containsKey('type')) {
      context.handle(
        _typeMeta,
        type.isAcceptableOrUnknown(data['type']!, _typeMeta),
      );
    } else if (isInserting) {
      context.missing(_typeMeta);
    }
    if (data.containsKey('message')) {
      context.handle(
        _messageMeta,
        message.isAcceptableOrUnknown(data['message']!, _messageMeta),
      );
    }
    if (data.containsKey('name')) {
      context.handle(
        _nameMeta,
        name.isAcceptableOrUnknown(data['name']!, _nameMeta),
      );
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('user_id')) {
      context.handle(
        _userIdMeta,
        userId.isAcceptableOrUnknown(data['user_id']!, _userIdMeta),
      );
    } else if (isInserting) {
      context.missing(_userIdMeta);
    }
    if (data.containsKey('moment')) {
      context.handle(
        _momentMeta,
        moment.isAcceptableOrUnknown(data['moment']!, _momentMeta),
      );
    } else if (isInserting) {
      context.missing(_momentMeta);
    }
    if (data.containsKey('label')) {
      context.handle(
        _labelMeta,
        label.isAcceptableOrUnknown(data['label']!, _labelMeta),
      );
    }
    if (data.containsKey('color')) {
      context.handle(
        _colorMeta,
        color.isAcceptableOrUnknown(data['color']!, _colorMeta),
      );
    }
    if (data.containsKey('img_url')) {
      context.handle(
        _imgUrlMeta,
        imgUrl.isAcceptableOrUnknown(data['img_url']!, _imgUrlMeta),
      );
    }
    if (data.containsKey('like_count')) {
      context.handle(
        _likeCountMeta,
        likeCount.isAcceptableOrUnknown(data['like_count']!, _likeCountMeta),
      );
    }
    if (data.containsKey('report_count')) {
      context.handle(
        _reportCountMeta,
        reportCount.isAcceptableOrUnknown(
          data['report_count']!,
          _reportCountMeta,
        ),
      );
    }
    if (data.containsKey('revoke_count')) {
      context.handle(
        _revokeCountMeta,
        revokeCount.isAcceptableOrUnknown(
          data['revoke_count']!,
          _revokeCountMeta,
        ),
      );
    }
    if (data.containsKey('comment_count')) {
      context.handle(
        _commentCountMeta,
        commentCount.isAcceptableOrUnknown(
          data['comment_count']!,
          _commentCountMeta,
        ),
      );
    }
    if (data.containsKey('is_liked')) {
      context.handle(
        _isLikedMeta,
        isLiked.isAcceptableOrUnknown(data['is_liked']!, _isLikedMeta),
      );
    }
    if (data.containsKey('cached_at')) {
      context.handle(
        _cachedAtMeta,
        cachedAt.isAcceptableOrUnknown(data['cached_at']!, _cachedAtMeta),
      );
    }
    if (data.containsKey('page')) {
      context.handle(
        _pageMeta,
        page.isAcceptableOrUnknown(data['page']!, _pageMeta),
      );
    } else if (isInserting) {
      context.missing(_pageMeta);
    }
    if (data.containsKey('page_size')) {
      context.handle(
        _pageSizeMeta,
        pageSize.isAcceptableOrUnknown(data['page_size']!, _pageSizeMeta),
      );
    } else if (isInserting) {
      context.missing(_pageSizeMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  WallCacheTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return WallCacheTableData(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      remoteId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}remote_id'],
      )!,
      type: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}type'],
      )!,
      message: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}message'],
      ),
      name: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}name'],
      )!,
      userId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}user_id'],
      )!,
      moment: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}moment'],
      )!,
      label: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}label'],
      )!,
      color: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}color'],
      )!,
      imgUrl: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}img_url'],
      ),
      likeCount: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}like_count'],
      )!,
      reportCount: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}report_count'],
      )!,
      revokeCount: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}revoke_count'],
      )!,
      commentCount: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}comment_count'],
      )!,
      isLiked: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}is_liked'],
      )!,
      cachedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}cached_at'],
      )!,
      page: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}page'],
      )!,
      pageSize: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}page_size'],
      )!,
    );
  }

  @override
  $WallCacheTableTable createAlias(String alias) {
    return $WallCacheTableTable(attachedDatabase, alias);
  }
}

class WallCacheTableData extends DataClass
    implements Insertable<WallCacheTableData> {
  /// 主键：自增 id
  final int id;

  /// 业务 id（与后端 id 对应，用于去重）
  final int remoteId;

  /// 类型：0=留言，1=照片
  final int type;

  /// 留言/照片内容
  final String? message;

  /// 发布者名称
  final String name;

  /// 发布者 userId
  final String userId;

  /// 发布时间（ISO 8601）
  final String moment;

  /// 标签
  final int label;

  /// 卡片颜色索引
  final int color;

  /// 图片 URL（照片墙使用）
  final String? imgUrl;

  /// 点赞数
  final int likeCount;

  /// 举报数
  final int reportCount;

  /// 撤回数
  final int revokeCount;

  /// 评论数
  final int commentCount;

  /// 当前用户是否已点赞
  final bool isLiked;

  /// 缓存写入时间戳（用于过期判断）
  final DateTime cachedAt;

  /// 分页页码（用于按页查询缓存）
  final int page;

  /// 分页大小
  final int pageSize;
  const WallCacheTableData({
    required this.id,
    required this.remoteId,
    required this.type,
    this.message,
    required this.name,
    required this.userId,
    required this.moment,
    required this.label,
    required this.color,
    this.imgUrl,
    required this.likeCount,
    required this.reportCount,
    required this.revokeCount,
    required this.commentCount,
    required this.isLiked,
    required this.cachedAt,
    required this.page,
    required this.pageSize,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['remote_id'] = Variable<int>(remoteId);
    map['type'] = Variable<int>(type);
    if (!nullToAbsent || message != null) {
      map['message'] = Variable<String>(message);
    }
    map['name'] = Variable<String>(name);
    map['user_id'] = Variable<String>(userId);
    map['moment'] = Variable<String>(moment);
    map['label'] = Variable<int>(label);
    map['color'] = Variable<int>(color);
    if (!nullToAbsent || imgUrl != null) {
      map['img_url'] = Variable<String>(imgUrl);
    }
    map['like_count'] = Variable<int>(likeCount);
    map['report_count'] = Variable<int>(reportCount);
    map['revoke_count'] = Variable<int>(revokeCount);
    map['comment_count'] = Variable<int>(commentCount);
    map['is_liked'] = Variable<bool>(isLiked);
    map['cached_at'] = Variable<DateTime>(cachedAt);
    map['page'] = Variable<int>(page);
    map['page_size'] = Variable<int>(pageSize);
    return map;
  }

  WallCacheTableCompanion toCompanion(bool nullToAbsent) {
    return WallCacheTableCompanion(
      id: Value(id),
      remoteId: Value(remoteId),
      type: Value(type),
      message: message == null && nullToAbsent
          ? const Value.absent()
          : Value(message),
      name: Value(name),
      userId: Value(userId),
      moment: Value(moment),
      label: Value(label),
      color: Value(color),
      imgUrl: imgUrl == null && nullToAbsent
          ? const Value.absent()
          : Value(imgUrl),
      likeCount: Value(likeCount),
      reportCount: Value(reportCount),
      revokeCount: Value(revokeCount),
      commentCount: Value(commentCount),
      isLiked: Value(isLiked),
      cachedAt: Value(cachedAt),
      page: Value(page),
      pageSize: Value(pageSize),
    );
  }

  factory WallCacheTableData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return WallCacheTableData(
      id: serializer.fromJson<int>(json['id']),
      remoteId: serializer.fromJson<int>(json['remoteId']),
      type: serializer.fromJson<int>(json['type']),
      message: serializer.fromJson<String?>(json['message']),
      name: serializer.fromJson<String>(json['name']),
      userId: serializer.fromJson<String>(json['userId']),
      moment: serializer.fromJson<String>(json['moment']),
      label: serializer.fromJson<int>(json['label']),
      color: serializer.fromJson<int>(json['color']),
      imgUrl: serializer.fromJson<String?>(json['imgUrl']),
      likeCount: serializer.fromJson<int>(json['likeCount']),
      reportCount: serializer.fromJson<int>(json['reportCount']),
      revokeCount: serializer.fromJson<int>(json['revokeCount']),
      commentCount: serializer.fromJson<int>(json['commentCount']),
      isLiked: serializer.fromJson<bool>(json['isLiked']),
      cachedAt: serializer.fromJson<DateTime>(json['cachedAt']),
      page: serializer.fromJson<int>(json['page']),
      pageSize: serializer.fromJson<int>(json['pageSize']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'remoteId': serializer.toJson<int>(remoteId),
      'type': serializer.toJson<int>(type),
      'message': serializer.toJson<String?>(message),
      'name': serializer.toJson<String>(name),
      'userId': serializer.toJson<String>(userId),
      'moment': serializer.toJson<String>(moment),
      'label': serializer.toJson<int>(label),
      'color': serializer.toJson<int>(color),
      'imgUrl': serializer.toJson<String?>(imgUrl),
      'likeCount': serializer.toJson<int>(likeCount),
      'reportCount': serializer.toJson<int>(reportCount),
      'revokeCount': serializer.toJson<int>(revokeCount),
      'commentCount': serializer.toJson<int>(commentCount),
      'isLiked': serializer.toJson<bool>(isLiked),
      'cachedAt': serializer.toJson<DateTime>(cachedAt),
      'page': serializer.toJson<int>(page),
      'pageSize': serializer.toJson<int>(pageSize),
    };
  }

  WallCacheTableData copyWith({
    int? id,
    int? remoteId,
    int? type,
    Value<String?> message = const Value.absent(),
    String? name,
    String? userId,
    String? moment,
    int? label,
    int? color,
    Value<String?> imgUrl = const Value.absent(),
    int? likeCount,
    int? reportCount,
    int? revokeCount,
    int? commentCount,
    bool? isLiked,
    DateTime? cachedAt,
    int? page,
    int? pageSize,
  }) => WallCacheTableData(
    id: id ?? this.id,
    remoteId: remoteId ?? this.remoteId,
    type: type ?? this.type,
    message: message.present ? message.value : this.message,
    name: name ?? this.name,
    userId: userId ?? this.userId,
    moment: moment ?? this.moment,
    label: label ?? this.label,
    color: color ?? this.color,
    imgUrl: imgUrl.present ? imgUrl.value : this.imgUrl,
    likeCount: likeCount ?? this.likeCount,
    reportCount: reportCount ?? this.reportCount,
    revokeCount: revokeCount ?? this.revokeCount,
    commentCount: commentCount ?? this.commentCount,
    isLiked: isLiked ?? this.isLiked,
    cachedAt: cachedAt ?? this.cachedAt,
    page: page ?? this.page,
    pageSize: pageSize ?? this.pageSize,
  );
  WallCacheTableData copyWithCompanion(WallCacheTableCompanion data) {
    return WallCacheTableData(
      id: data.id.present ? data.id.value : this.id,
      remoteId: data.remoteId.present ? data.remoteId.value : this.remoteId,
      type: data.type.present ? data.type.value : this.type,
      message: data.message.present ? data.message.value : this.message,
      name: data.name.present ? data.name.value : this.name,
      userId: data.userId.present ? data.userId.value : this.userId,
      moment: data.moment.present ? data.moment.value : this.moment,
      label: data.label.present ? data.label.value : this.label,
      color: data.color.present ? data.color.value : this.color,
      imgUrl: data.imgUrl.present ? data.imgUrl.value : this.imgUrl,
      likeCount: data.likeCount.present ? data.likeCount.value : this.likeCount,
      reportCount: data.reportCount.present
          ? data.reportCount.value
          : this.reportCount,
      revokeCount: data.revokeCount.present
          ? data.revokeCount.value
          : this.revokeCount,
      commentCount: data.commentCount.present
          ? data.commentCount.value
          : this.commentCount,
      isLiked: data.isLiked.present ? data.isLiked.value : this.isLiked,
      cachedAt: data.cachedAt.present ? data.cachedAt.value : this.cachedAt,
      page: data.page.present ? data.page.value : this.page,
      pageSize: data.pageSize.present ? data.pageSize.value : this.pageSize,
    );
  }

  @override
  String toString() {
    return (StringBuffer('WallCacheTableData(')
          ..write('id: $id, ')
          ..write('remoteId: $remoteId, ')
          ..write('type: $type, ')
          ..write('message: $message, ')
          ..write('name: $name, ')
          ..write('userId: $userId, ')
          ..write('moment: $moment, ')
          ..write('label: $label, ')
          ..write('color: $color, ')
          ..write('imgUrl: $imgUrl, ')
          ..write('likeCount: $likeCount, ')
          ..write('reportCount: $reportCount, ')
          ..write('revokeCount: $revokeCount, ')
          ..write('commentCount: $commentCount, ')
          ..write('isLiked: $isLiked, ')
          ..write('cachedAt: $cachedAt, ')
          ..write('page: $page, ')
          ..write('pageSize: $pageSize')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    remoteId,
    type,
    message,
    name,
    userId,
    moment,
    label,
    color,
    imgUrl,
    likeCount,
    reportCount,
    revokeCount,
    commentCount,
    isLiked,
    cachedAt,
    page,
    pageSize,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is WallCacheTableData &&
          other.id == this.id &&
          other.remoteId == this.remoteId &&
          other.type == this.type &&
          other.message == this.message &&
          other.name == this.name &&
          other.userId == this.userId &&
          other.moment == this.moment &&
          other.label == this.label &&
          other.color == this.color &&
          other.imgUrl == this.imgUrl &&
          other.likeCount == this.likeCount &&
          other.reportCount == this.reportCount &&
          other.revokeCount == this.revokeCount &&
          other.commentCount == this.commentCount &&
          other.isLiked == this.isLiked &&
          other.cachedAt == this.cachedAt &&
          other.page == this.page &&
          other.pageSize == this.pageSize);
}

class WallCacheTableCompanion extends UpdateCompanion<WallCacheTableData> {
  final Value<int> id;
  final Value<int> remoteId;
  final Value<int> type;
  final Value<String?> message;
  final Value<String> name;
  final Value<String> userId;
  final Value<String> moment;
  final Value<int> label;
  final Value<int> color;
  final Value<String?> imgUrl;
  final Value<int> likeCount;
  final Value<int> reportCount;
  final Value<int> revokeCount;
  final Value<int> commentCount;
  final Value<bool> isLiked;
  final Value<DateTime> cachedAt;
  final Value<int> page;
  final Value<int> pageSize;
  const WallCacheTableCompanion({
    this.id = const Value.absent(),
    this.remoteId = const Value.absent(),
    this.type = const Value.absent(),
    this.message = const Value.absent(),
    this.name = const Value.absent(),
    this.userId = const Value.absent(),
    this.moment = const Value.absent(),
    this.label = const Value.absent(),
    this.color = const Value.absent(),
    this.imgUrl = const Value.absent(),
    this.likeCount = const Value.absent(),
    this.reportCount = const Value.absent(),
    this.revokeCount = const Value.absent(),
    this.commentCount = const Value.absent(),
    this.isLiked = const Value.absent(),
    this.cachedAt = const Value.absent(),
    this.page = const Value.absent(),
    this.pageSize = const Value.absent(),
  });
  WallCacheTableCompanion.insert({
    this.id = const Value.absent(),
    required int remoteId,
    required int type,
    this.message = const Value.absent(),
    required String name,
    required String userId,
    required String moment,
    this.label = const Value.absent(),
    this.color = const Value.absent(),
    this.imgUrl = const Value.absent(),
    this.likeCount = const Value.absent(),
    this.reportCount = const Value.absent(),
    this.revokeCount = const Value.absent(),
    this.commentCount = const Value.absent(),
    this.isLiked = const Value.absent(),
    this.cachedAt = const Value.absent(),
    required int page,
    required int pageSize,
  }) : remoteId = Value(remoteId),
       type = Value(type),
       name = Value(name),
       userId = Value(userId),
       moment = Value(moment),
       page = Value(page),
       pageSize = Value(pageSize);
  static Insertable<WallCacheTableData> custom({
    Expression<int>? id,
    Expression<int>? remoteId,
    Expression<int>? type,
    Expression<String>? message,
    Expression<String>? name,
    Expression<String>? userId,
    Expression<String>? moment,
    Expression<int>? label,
    Expression<int>? color,
    Expression<String>? imgUrl,
    Expression<int>? likeCount,
    Expression<int>? reportCount,
    Expression<int>? revokeCount,
    Expression<int>? commentCount,
    Expression<bool>? isLiked,
    Expression<DateTime>? cachedAt,
    Expression<int>? page,
    Expression<int>? pageSize,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (remoteId != null) 'remote_id': remoteId,
      if (type != null) 'type': type,
      if (message != null) 'message': message,
      if (name != null) 'name': name,
      if (userId != null) 'user_id': userId,
      if (moment != null) 'moment': moment,
      if (label != null) 'label': label,
      if (color != null) 'color': color,
      if (imgUrl != null) 'img_url': imgUrl,
      if (likeCount != null) 'like_count': likeCount,
      if (reportCount != null) 'report_count': reportCount,
      if (revokeCount != null) 'revoke_count': revokeCount,
      if (commentCount != null) 'comment_count': commentCount,
      if (isLiked != null) 'is_liked': isLiked,
      if (cachedAt != null) 'cached_at': cachedAt,
      if (page != null) 'page': page,
      if (pageSize != null) 'page_size': pageSize,
    });
  }

  WallCacheTableCompanion copyWith({
    Value<int>? id,
    Value<int>? remoteId,
    Value<int>? type,
    Value<String?>? message,
    Value<String>? name,
    Value<String>? userId,
    Value<String>? moment,
    Value<int>? label,
    Value<int>? color,
    Value<String?>? imgUrl,
    Value<int>? likeCount,
    Value<int>? reportCount,
    Value<int>? revokeCount,
    Value<int>? commentCount,
    Value<bool>? isLiked,
    Value<DateTime>? cachedAt,
    Value<int>? page,
    Value<int>? pageSize,
  }) {
    return WallCacheTableCompanion(
      id: id ?? this.id,
      remoteId: remoteId ?? this.remoteId,
      type: type ?? this.type,
      message: message ?? this.message,
      name: name ?? this.name,
      userId: userId ?? this.userId,
      moment: moment ?? this.moment,
      label: label ?? this.label,
      color: color ?? this.color,
      imgUrl: imgUrl ?? this.imgUrl,
      likeCount: likeCount ?? this.likeCount,
      reportCount: reportCount ?? this.reportCount,
      revokeCount: revokeCount ?? this.revokeCount,
      commentCount: commentCount ?? this.commentCount,
      isLiked: isLiked ?? this.isLiked,
      cachedAt: cachedAt ?? this.cachedAt,
      page: page ?? this.page,
      pageSize: pageSize ?? this.pageSize,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (remoteId.present) {
      map['remote_id'] = Variable<int>(remoteId.value);
    }
    if (type.present) {
      map['type'] = Variable<int>(type.value);
    }
    if (message.present) {
      map['message'] = Variable<String>(message.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (userId.present) {
      map['user_id'] = Variable<String>(userId.value);
    }
    if (moment.present) {
      map['moment'] = Variable<String>(moment.value);
    }
    if (label.present) {
      map['label'] = Variable<int>(label.value);
    }
    if (color.present) {
      map['color'] = Variable<int>(color.value);
    }
    if (imgUrl.present) {
      map['img_url'] = Variable<String>(imgUrl.value);
    }
    if (likeCount.present) {
      map['like_count'] = Variable<int>(likeCount.value);
    }
    if (reportCount.present) {
      map['report_count'] = Variable<int>(reportCount.value);
    }
    if (revokeCount.present) {
      map['revoke_count'] = Variable<int>(revokeCount.value);
    }
    if (commentCount.present) {
      map['comment_count'] = Variable<int>(commentCount.value);
    }
    if (isLiked.present) {
      map['is_liked'] = Variable<bool>(isLiked.value);
    }
    if (cachedAt.present) {
      map['cached_at'] = Variable<DateTime>(cachedAt.value);
    }
    if (page.present) {
      map['page'] = Variable<int>(page.value);
    }
    if (pageSize.present) {
      map['page_size'] = Variable<int>(pageSize.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('WallCacheTableCompanion(')
          ..write('id: $id, ')
          ..write('remoteId: $remoteId, ')
          ..write('type: $type, ')
          ..write('message: $message, ')
          ..write('name: $name, ')
          ..write('userId: $userId, ')
          ..write('moment: $moment, ')
          ..write('label: $label, ')
          ..write('color: $color, ')
          ..write('imgUrl: $imgUrl, ')
          ..write('likeCount: $likeCount, ')
          ..write('reportCount: $reportCount, ')
          ..write('revokeCount: $revokeCount, ')
          ..write('commentCount: $commentCount, ')
          ..write('isLiked: $isLiked, ')
          ..write('cachedAt: $cachedAt, ')
          ..write('page: $page, ')
          ..write('pageSize: $pageSize')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  $AppDatabaseManager get managers => $AppDatabaseManager(this);
  late final $WallCacheTableTable wallCacheTable = $WallCacheTableTable(this);
  late final WallCacheDao wallCacheDao = WallCacheDao(this as AppDatabase);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [wallCacheTable];
}

typedef $$WallCacheTableTableCreateCompanionBuilder =
    WallCacheTableCompanion Function({
      Value<int> id,
      required int remoteId,
      required int type,
      Value<String?> message,
      required String name,
      required String userId,
      required String moment,
      Value<int> label,
      Value<int> color,
      Value<String?> imgUrl,
      Value<int> likeCount,
      Value<int> reportCount,
      Value<int> revokeCount,
      Value<int> commentCount,
      Value<bool> isLiked,
      Value<DateTime> cachedAt,
      required int page,
      required int pageSize,
    });
typedef $$WallCacheTableTableUpdateCompanionBuilder =
    WallCacheTableCompanion Function({
      Value<int> id,
      Value<int> remoteId,
      Value<int> type,
      Value<String?> message,
      Value<String> name,
      Value<String> userId,
      Value<String> moment,
      Value<int> label,
      Value<int> color,
      Value<String?> imgUrl,
      Value<int> likeCount,
      Value<int> reportCount,
      Value<int> revokeCount,
      Value<int> commentCount,
      Value<bool> isLiked,
      Value<DateTime> cachedAt,
      Value<int> page,
      Value<int> pageSize,
    });

class $$WallCacheTableTableFilterComposer
    extends Composer<_$AppDatabase, $WallCacheTableTable> {
  $$WallCacheTableTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get remoteId => $composableBuilder(
    column: $table.remoteId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get type => $composableBuilder(
    column: $table.type,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get message => $composableBuilder(
    column: $table.message,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get userId => $composableBuilder(
    column: $table.userId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get moment => $composableBuilder(
    column: $table.moment,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get label => $composableBuilder(
    column: $table.label,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get color => $composableBuilder(
    column: $table.color,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get imgUrl => $composableBuilder(
    column: $table.imgUrl,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get likeCount => $composableBuilder(
    column: $table.likeCount,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get reportCount => $composableBuilder(
    column: $table.reportCount,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get revokeCount => $composableBuilder(
    column: $table.revokeCount,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get commentCount => $composableBuilder(
    column: $table.commentCount,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get isLiked => $composableBuilder(
    column: $table.isLiked,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get cachedAt => $composableBuilder(
    column: $table.cachedAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get page => $composableBuilder(
    column: $table.page,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get pageSize => $composableBuilder(
    column: $table.pageSize,
    builder: (column) => ColumnFilters(column),
  );
}

class $$WallCacheTableTableOrderingComposer
    extends Composer<_$AppDatabase, $WallCacheTableTable> {
  $$WallCacheTableTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get remoteId => $composableBuilder(
    column: $table.remoteId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get type => $composableBuilder(
    column: $table.type,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get message => $composableBuilder(
    column: $table.message,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get userId => $composableBuilder(
    column: $table.userId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get moment => $composableBuilder(
    column: $table.moment,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get label => $composableBuilder(
    column: $table.label,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get color => $composableBuilder(
    column: $table.color,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get imgUrl => $composableBuilder(
    column: $table.imgUrl,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get likeCount => $composableBuilder(
    column: $table.likeCount,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get reportCount => $composableBuilder(
    column: $table.reportCount,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get revokeCount => $composableBuilder(
    column: $table.revokeCount,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get commentCount => $composableBuilder(
    column: $table.commentCount,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get isLiked => $composableBuilder(
    column: $table.isLiked,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get cachedAt => $composableBuilder(
    column: $table.cachedAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get page => $composableBuilder(
    column: $table.page,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get pageSize => $composableBuilder(
    column: $table.pageSize,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$WallCacheTableTableAnnotationComposer
    extends Composer<_$AppDatabase, $WallCacheTableTable> {
  $$WallCacheTableTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<int> get remoteId =>
      $composableBuilder(column: $table.remoteId, builder: (column) => column);

  GeneratedColumn<int> get type =>
      $composableBuilder(column: $table.type, builder: (column) => column);

  GeneratedColumn<String> get message =>
      $composableBuilder(column: $table.message, builder: (column) => column);

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  GeneratedColumn<String> get userId =>
      $composableBuilder(column: $table.userId, builder: (column) => column);

  GeneratedColumn<String> get moment =>
      $composableBuilder(column: $table.moment, builder: (column) => column);

  GeneratedColumn<int> get label =>
      $composableBuilder(column: $table.label, builder: (column) => column);

  GeneratedColumn<int> get color =>
      $composableBuilder(column: $table.color, builder: (column) => column);

  GeneratedColumn<String> get imgUrl =>
      $composableBuilder(column: $table.imgUrl, builder: (column) => column);

  GeneratedColumn<int> get likeCount =>
      $composableBuilder(column: $table.likeCount, builder: (column) => column);

  GeneratedColumn<int> get reportCount => $composableBuilder(
    column: $table.reportCount,
    builder: (column) => column,
  );

  GeneratedColumn<int> get revokeCount => $composableBuilder(
    column: $table.revokeCount,
    builder: (column) => column,
  );

  GeneratedColumn<int> get commentCount => $composableBuilder(
    column: $table.commentCount,
    builder: (column) => column,
  );

  GeneratedColumn<bool> get isLiked =>
      $composableBuilder(column: $table.isLiked, builder: (column) => column);

  GeneratedColumn<DateTime> get cachedAt =>
      $composableBuilder(column: $table.cachedAt, builder: (column) => column);

  GeneratedColumn<int> get page =>
      $composableBuilder(column: $table.page, builder: (column) => column);

  GeneratedColumn<int> get pageSize =>
      $composableBuilder(column: $table.pageSize, builder: (column) => column);
}

class $$WallCacheTableTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $WallCacheTableTable,
          WallCacheTableData,
          $$WallCacheTableTableFilterComposer,
          $$WallCacheTableTableOrderingComposer,
          $$WallCacheTableTableAnnotationComposer,
          $$WallCacheTableTableCreateCompanionBuilder,
          $$WallCacheTableTableUpdateCompanionBuilder,
          (
            WallCacheTableData,
            BaseReferences<
              _$AppDatabase,
              $WallCacheTableTable,
              WallCacheTableData
            >,
          ),
          WallCacheTableData,
          PrefetchHooks Function()
        > {
  $$WallCacheTableTableTableManager(
    _$AppDatabase db,
    $WallCacheTableTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$WallCacheTableTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$WallCacheTableTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$WallCacheTableTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<int> remoteId = const Value.absent(),
                Value<int> type = const Value.absent(),
                Value<String?> message = const Value.absent(),
                Value<String> name = const Value.absent(),
                Value<String> userId = const Value.absent(),
                Value<String> moment = const Value.absent(),
                Value<int> label = const Value.absent(),
                Value<int> color = const Value.absent(),
                Value<String?> imgUrl = const Value.absent(),
                Value<int> likeCount = const Value.absent(),
                Value<int> reportCount = const Value.absent(),
                Value<int> revokeCount = const Value.absent(),
                Value<int> commentCount = const Value.absent(),
                Value<bool> isLiked = const Value.absent(),
                Value<DateTime> cachedAt = const Value.absent(),
                Value<int> page = const Value.absent(),
                Value<int> pageSize = const Value.absent(),
              }) => WallCacheTableCompanion(
                id: id,
                remoteId: remoteId,
                type: type,
                message: message,
                name: name,
                userId: userId,
                moment: moment,
                label: label,
                color: color,
                imgUrl: imgUrl,
                likeCount: likeCount,
                reportCount: reportCount,
                revokeCount: revokeCount,
                commentCount: commentCount,
                isLiked: isLiked,
                cachedAt: cachedAt,
                page: page,
                pageSize: pageSize,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required int remoteId,
                required int type,
                Value<String?> message = const Value.absent(),
                required String name,
                required String userId,
                required String moment,
                Value<int> label = const Value.absent(),
                Value<int> color = const Value.absent(),
                Value<String?> imgUrl = const Value.absent(),
                Value<int> likeCount = const Value.absent(),
                Value<int> reportCount = const Value.absent(),
                Value<int> revokeCount = const Value.absent(),
                Value<int> commentCount = const Value.absent(),
                Value<bool> isLiked = const Value.absent(),
                Value<DateTime> cachedAt = const Value.absent(),
                required int page,
                required int pageSize,
              }) => WallCacheTableCompanion.insert(
                id: id,
                remoteId: remoteId,
                type: type,
                message: message,
                name: name,
                userId: userId,
                moment: moment,
                label: label,
                color: color,
                imgUrl: imgUrl,
                likeCount: likeCount,
                reportCount: reportCount,
                revokeCount: revokeCount,
                commentCount: commentCount,
                isLiked: isLiked,
                cachedAt: cachedAt,
                page: page,
                pageSize: pageSize,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$WallCacheTableTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $WallCacheTableTable,
      WallCacheTableData,
      $$WallCacheTableTableFilterComposer,
      $$WallCacheTableTableOrderingComposer,
      $$WallCacheTableTableAnnotationComposer,
      $$WallCacheTableTableCreateCompanionBuilder,
      $$WallCacheTableTableUpdateCompanionBuilder,
      (
        WallCacheTableData,
        BaseReferences<_$AppDatabase, $WallCacheTableTable, WallCacheTableData>,
      ),
      WallCacheTableData,
      PrefetchHooks Function()
    >;

class $AppDatabaseManager {
  final _$AppDatabase _db;
  $AppDatabaseManager(this._db);
  $$WallCacheTableTableTableManager get wallCacheTable =>
      $$WallCacheTableTableTableManager(_db, _db.wallCacheTable);
}

mixin _$WallCacheDaoMixin on DatabaseAccessor<AppDatabase> {
  $WallCacheTableTable get wallCacheTable => attachedDatabase.wallCacheTable;
  WallCacheDaoManager get managers => WallCacheDaoManager(this);
}

class WallCacheDaoManager {
  final _$WallCacheDaoMixin _db;
  WallCacheDaoManager(this._db);
  $$WallCacheTableTableTableManager get wallCacheTable =>
      $$WallCacheTableTableTableManager(
        _db.attachedDatabase,
        _db.wallCacheTable,
      );
}

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// 数据库 Provider（全局单例）

@ProviderFor(appDatabase)
const appDatabaseProvider = AppDatabaseProvider._();

/// 数据库 Provider（全局单例）

final class AppDatabaseProvider
    extends $FunctionalProvider<AppDatabase, AppDatabase, AppDatabase>
    with $Provider<AppDatabase> {
  /// 数据库 Provider（全局单例）
  const AppDatabaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'appDatabaseProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$appDatabaseHash();

  @$internal
  @override
  $ProviderElement<AppDatabase> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  AppDatabase create(Ref ref) {
    return appDatabase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AppDatabase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AppDatabase>(value),
    );
  }
}

String _$appDatabaseHash() => r'8c7fb583737b35e44dd8ca0588453404ef77bcc3';
