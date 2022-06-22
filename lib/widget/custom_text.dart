import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String text;
  final TextStyle? style;
  const CustomText({Key? key, required this.text, this.style})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: style ??
            Theme.of(context)
                .textTheme
                .headline6!
                .copyWith(color: Colors.black));
  }
}

class Paragraphe extends StatelessWidget {
  final String text;
  final TextStyle? style;
  const Paragraphe({Key? key, required this.text, this.style})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Text(text,
          style: style ??
              Theme.of(context)
                  .textTheme
                  .headline6!
                  .copyWith(color: Colors.black)),
    );
  }
}

class DotText extends StatelessWidget {
  final String text;
  final TextStyle? style;
  const DotText({Key? key, required this.text, this.style}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 14),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(right:8.0),
            child: dot(),
          ),
          Text(text,
              style: style ??
                  Theme.of(context)
                      .textTheme
                      .headline5!
                      .copyWith(color: const Color.fromARGB(255, 134, 20, 113))),
        ],
      ),
    );
  }

  Widget dot() {
    return Container(
        width: 10,
        height: 10,
        decoration: const BoxDecoration(shape: BoxShape.circle, color: Colors.black));
  }
}



class TitleText extends StatelessWidget {
  final String text;
  final TextStyle? style;
  const TitleText({Key? key, required this.text, this.style})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 14, bottom: 10),
      child: Text(text,
          style: style ??
              Theme.of(context)
                  .textTheme
                  .headline3!
                  .copyWith(color: Colors.black)),
    );
  }
}