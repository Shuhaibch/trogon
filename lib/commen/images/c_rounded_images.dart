import 'dart:developer';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:trogon/commen/shimmer/shimmer_effect.dart';
import 'package:trogon/utils/constants/colors.dart';
import 'package:trogon/utils/constants/sizes.dart';

class CRoundedImage extends StatelessWidget {
  const CRoundedImage({
    super.key,
    this.width,
    this.height,
    required this.imageUrl,
    this.applyImageRadius = true,
    this.backgroundColor = CColors.lightColor,
    this.fit = BoxFit.contain,
    this.padding,
    this.isNetworkImage = false,
    this.onPressed,
    this.border,
    this.borderRadius = 0,
  });
  final double? width, height;
  final String imageUrl;
  final bool applyImageRadius;
  final Color? backgroundColor;
  final BoxBorder? border;
  final BoxFit? fit;
  final EdgeInsetsGeometry? padding;
  final bool isNetworkImage;
  final double borderRadius;
  final VoidCallback? onPressed;
  @override
  Widget build(BuildContext context) {
    log(imageUrl);
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: width,
        height: height,
        padding: padding,
        decoration: BoxDecoration(
            border: border, borderRadius: BorderRadius.circular(0)),
        child: ClipRRect(
            borderRadius: applyImageRadius
                ? const BorderRadius.only(
                    topLeft: Radius.elliptical(
                        CSizes.cardRadiusLg, CSizes.cardRadiusLg),
                    topRight: Radius.elliptical(
                        CSizes.cardRadiusLg, CSizes.cardRadiusLg))
                : BorderRadius.zero,
            child: isNetworkImage
                ? CachedNetworkImage(
                    imageUrl: imageUrl,
                    fit: fit,
                    progressIndicatorBuilder: (context, url, progress) =>
                        CShimmerEffect(
                            width: width ?? double.infinity,
                            height: height ?? 140),
                    errorWidget: (context, url, error) =>
                        const Icon(Icons.error),
                  )
                : Image(
                    image: AssetImage(imageUrl),
                    fit: fit,
                  )),
      ),
    );
  }
}
