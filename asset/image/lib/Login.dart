import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import './Main.dart';
import 'package:adobe_xd/page_link.dart';
import 'package:adobe_xd/blend_mask.dart';

class Login extends StatelessWidget {
  Login({
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
            Pin(size: 66.0, middle: 0.5908),
            child: PageLink(
              links: [
                PageLinkInfo(
                  transition: LinkTransition.SlideDown,
                  ease: Curves.easeOut,
                  duration: 0.3,
                  pageBuilder: () => Main(),
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
            Pin(start: 57.0, end: 57.0),
            Pin(size: 66.0, middle: 0.709),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(33.0),
                color: const Color(0xffed1b24),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 182.0, middle: 0.5),
            Pin(size: 61.0, middle: 0.3943),
            child: BlendMask(
              blendMode: BlendMode.darken,
              child: Text(
                'GODZILLA',
                style: TextStyle(
                  fontFamily: 'Impact',
                  fontSize: 50,
                  color: const Color(0xffed1b24),
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 78.0, middle: 0.5),
            Pin(size: 42.0, middle: 0.5882),
            child: Text(
              'Login',
              style: TextStyle(
                fontFamily: 'Impact',
                fontSize: 35,
                color: const Color(0xffffffff),
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 122.0, middle: 0.5),
            Pin(size: 42.0, middle: 0.7029),
            child: Text(
              'Register',
              style: TextStyle(
                fontFamily: 'Impact',
                fontSize: 35,
                color: const Color(0xffffffff),
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Pinned.fromPins(
            Pin(start: 93.0, end: 93.0),
            Pin(size: 226.0, start: 52.0),
            child:
                // Adobe XD layer: '0de2b09bcbfd242eca2…' (shape)
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
