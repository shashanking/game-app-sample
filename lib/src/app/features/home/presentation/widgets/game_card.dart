import 'package:flutter/material.dart';
import 'package:game_app_sample/src/app/core/apply_gradient.dart';
import 'package:game_app_sample/src/config/theme.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class GameCard extends StatelessWidget {
  const GameCard({Key? key, required this.gameTitle, required this.imageIndex})
      : super(key: key);
  final String gameTitle;
  final int imageIndex;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20.sp),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 4.0,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(ThemeConfig.kDefaultPadding),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                'assets/images/game_banner_$imageIndex.png',
                fit: BoxFit.cover,
                width: double.infinity,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
                // vertical: ThemeConfig.kDefaultPadding / 4,
                horizontal: ThemeConfig.kDefaultPadding),
            child: Text(gameTitle,
                style: Theme.of(context).textTheme.headlineMedium),
          ),
          Padding(
            padding: const EdgeInsets.all(ThemeConfig.kDefaultPadding),
            child: Row(
              children: const [
                PlayersImageWidget(),
                Expanded(
                  child: PlayerInfoWidget(),
                ),
                PlayNowButton(),
              ],
            ),
          ),
          SizedBox(
            height: 10.sp,
          )
        ],
      ),
    );
  }
}

class PlayNowButton extends StatelessWidget {
  const PlayNowButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ApplyGradient(
      gradient: ThemeConfig.kPrimaryGradient,
      kBorderRadius: 55,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          // make color or elevated button transparent
          backgroundColor: Colors.transparent,
          disabledBackgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
        ),
        onPressed: () {
          // Add your play now button logic here
        },
        child: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.0),
          child: Text('Play Now'),
        ),
      ),
    );
  }
}

class PlayerInfoWidget extends StatelessWidget {
  const PlayerInfoWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          '5,00,000+',
          style: Theme.of(context).textTheme.bodyMedium!,
        ),
        Text(
          'Players',
          style: Theme.of(context).textTheme.bodyMedium!,
        ),
      ],
    );
  }
}

class PlayersImageWidget extends StatelessWidget {
  const PlayersImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100.0,
      height: 45,
      child: Stack(
        children: const [
          Positioned(
            left: 48.0,
            child: CircleAvatar(
              radius: 20.0,
              backgroundImage: AssetImage('assets/images/person_3.png'),
            ),
          ),
          Positioned(
            left: 24.0,
            child: CircleAvatar(
              radius: 20.0,
              backgroundImage: AssetImage('assets/images/person_2.png'),
            ),
          ),
          Positioned(
            left: 0,
            child: CircleAvatar(
              radius: 20.0,
              backgroundImage: AssetImage('assets/images/person_1.png'),
            ),
          ),
        ],
      ),
    );
  }
}
