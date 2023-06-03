import 'package:flutter/material.dart';

class TopBannerWidget extends StatelessWidget {
  const TopBannerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 66.0,
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              'assets/images/banner_top.png',
              fit: BoxFit.cover,
              width: double.infinity,
            ),
          ),
          const Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'UNIBIT Fantasy is Live',
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 16.0,
            right: 16.0,
            child: Row(
              children: [
                _buildDot(Colors.white),
                _buildDot(Colors.white.withOpacity(0.3)),
                _buildDot(Colors.white.withOpacity(0.3)),
                _buildDot(Colors.white.withOpacity(0.3)),
              ],
            ),
          )
        ],
      ),
    );
  }
}

_buildDot(Color color) {
  return Container(
    width: 8.0,
    height: 8.0,
    margin: const EdgeInsets.only(right: 4.0),
    decoration: BoxDecoration(
      shape: BoxShape.circle,
      color: color,
    ),
  );
}
