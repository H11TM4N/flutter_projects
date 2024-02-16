import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hexagon/hexagon.dart';

class DummyPage extends StatelessWidget {
  const DummyPage({super.key});

  @override
  Widget build(BuildContext context) {
    const textStyle = TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.bold,
    );

    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      appBar: AppBar(
        title: const Text('Jeremiah'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: SizedBox(
              child: CachedNetworkImage(
                imageUrl: 'https://via.placeholder.com/300',
                progressIndicatorBuilder: (context, url, download) {
                  if (download.progress != null) {
                    final percent = download.progress! * 100;
                    return Text('$percent done loading');
                  }
                  return Text('loaded $url');
                },
              ),
            ),
          ),
        ],
      ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      // floatingActionButton: SizedBox(
      //   height: 20,
      //   child: FloatingActionButton(
      //     backgroundColor: Colors.black,
      //     onPressed: () {},
      //     child: const Padding(
      //       padding: EdgeInsets.only(top: 8.0),
      //       child: Icon(FontAwesomeIcons.list, color: Colors.red),
      //     ),
      //   ),
      // ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white,
        unselectedLabelStyle: textStyle,
        selectedLabelStyle: textStyle,
        items: const [
          BottomNavigationBarItem(
            backgroundColor: Colors.black,
            icon: Icon(FontAwesomeIcons.gift, size: 16),
            label: 'Promo',
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.magnifyingGlass, size: 16),
            label: 'CheckBet',
          ),
          BottomNavigationBarItem(
            icon: BetslipIcon(),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.bookmark, size: 16),
            label: 'My bets',
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.moneyBill, size: 16),
            label: 'Deposit',
          ),
        ],
      ),
    );
  }
}

class BetslipIcon extends StatelessWidget {
  const BetslipIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      clipBehavior: Clip.none,
      children: [
        const SizedBox(
          width: 70,
          child: Icon(Icons.abc, color: Colors.red),
        ),
        Positioned(
          bottom: -24,
          child: HexagonWidget.flat(
            width: 70,
            color: Colors.red,
            cornerRadius: 12,
            child: Center(
              child: HexagonWidget.flat(
                width: 67,
                color: Colors.black,
                cornerRadius: 12,
                child: Padding(
                  padding: const EdgeInsets.all(8.0).copyWith(bottom: 2),
                  child: const Column(
                    children: [
                      CircleContainer(),
                      Text(
                        'Betslip',
                        style: TextStyle(
                            fontSize: 12,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class CircleContainer extends StatelessWidget {
  const CircleContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(3),
      decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.orange),
      child: Center(
        child: Text(
          '1',
          style: TextStyle(
            color: Colors.white,
            fontSize: 10,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
