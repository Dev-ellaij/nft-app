import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:nft_app/components/nft_cards.dart';

class TopTab extends StatelessWidget {
  const TopTab({Key? key}) : super(key: key); // Use named constructor

  @override
  Widget build(BuildContext context) {
    return NftCard(
      imagePath: '', // Provide the image path or a placeholder
    );
  }
}
