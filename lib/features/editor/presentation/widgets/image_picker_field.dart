import 'package:flutter/material.dart';

/// 图片选择器
///
/// 职责说明：
/// - 提供照片选择与预览
/// - 设计稿：App端设计-发表照片-编辑页面.jpg
/// - TODO: 接入 image_picker 实现选图
///
/// 作者：photo_wall_flutter team
/// 日期：2026-08-05
class ImagePickerField extends StatelessWidget {
  const ImagePickerField({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 4 / 3,
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey.shade400),
          borderRadius: BorderRadius.circular(8),
        ),
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Icon(Icons.add_photo_alternate_outlined, size: 48),
            const SizedBox(height: 8),
            Text('选择照片',
                style: Theme.of(context).textTheme.bodyMedium),
          ],
        ),
      ),
    );
  }
}
