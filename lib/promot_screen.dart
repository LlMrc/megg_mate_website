import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'constant/dimension.dart';

class PromotScreen extends StatefulWidget {
 final List<Image> carrousel;
  const PromotScreen({Key? key, required this.carrousel}) : super(key: key);

  @override
  State<PromotScreen> createState() => _PromotScreenState();
}

class _PromotScreenState extends State<PromotScreen> {
  int activeIndex = 0;

  CarouselController buttonCarouselController = CarouselController();

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        height: 450,
        padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
        child: CarouselSlider(
          items: widget.carrousel, // widget.image,
          carouselController: buttonCarouselController,
          options: CarouselOptions(
            onPageChanged: (index, reason) {
              setState(() => activeIndex = index);
            },
            autoPlay: false,
            enlargeCenterPage: true,
            viewportFraction: 0.9,
            aspectRatio: 2.0,
            initialPage: 2,
          ),
        ),
      ),
      smoothIndicator()
    ]);
  }

  Widget smoothIndicator() => AnimatedSmoothIndicator(
      activeIndex: activeIndex,
      count: widget.carrousel.length,
      effect: const WormEffect(
          dotWidth: 20,
          dotHeight: 20) // JumpingDotEffect(dotWidth: 20, dotHeight: 20),
      );
}
