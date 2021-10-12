import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import './Login.dart';
import 'package:adobe_xd/page_link.dart';

class Mainpage extends StatelessWidget {
  Mainpage({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Stack(
        children: <Widget>[
          Pinned.fromPins(
            Pin(start: 57.0, end: 57.0),
            Pin(size: 66.0, middle: 0.6853),
            child: PageLink(
              links: [
                PageLinkInfo(
                  transition: LinkTransition.SlideDown,
                  ease: Curves.easeOut,
                  duration: 0.3,
                  pageBuilder: () => Login(),
                ),
              ],
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(33.0),
                  color: const Color(0xffed1b24),
                ),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 96.0, middle: 0.5),
            Pin(size: 42.0, middle: 0.68),
            child: Text(
              'Logout',
              style: TextStyle(
                fontFamily: 'Impact',
                fontSize: 35,
                color: const Color(0xffffffff),
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Pinned.fromPins(
            Pin(start: 8.0, end: 7.0),
            Pin(size: 397.0, start: 94.0),
            child:
                // Adobe XD layer: 'il_794xN.2946860225…' (shape)
                Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage(''),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(start: 0.0, end: 0.0),
            Pin(size: 164.0, end: 0.0),
            child:
                // Adobe XD layer: '287938' (shape)
                Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage(''),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
