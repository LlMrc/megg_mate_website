import 'package:flutter/material.dart';

class PromotScreen extends StatefulWidget {
  final Color? color;

  const PromotScreen({
    Key? key,  this.color, 
  }) : super(key: key);

  @override
  State<PromotScreen> createState() => _PromotScreenState();
}

class _PromotScreenState extends State<PromotScreen> {
  final PageController _controller =
      PageController(viewportFraction: 0.8, initialPage: 1);
  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        IconButton(onPressed: (){}, icon: const Icon(Icons.chevron_left, color: Colors.white,)),
        Container(
          padding: const EdgeInsets.all(8),
          height: 400,
          child: PageView(
            controller: _controller,
            children: [
                Container(
          decoration: BoxDecoration(
        
            borderRadius: BorderRadiusDirectional.circular(14),
          ),
          child:  Image.asset('assets/images/meggPdf.png',
          fit: BoxFit.cover),
        ),
          Container(
          decoration: BoxDecoration(
         
            borderRadius: BorderRadiusDirectional.circular(14),
          ),
          child:  Image.asset('assets/images/meggPdf1.png'),
        ),
           
                  Container(
          decoration: BoxDecoration(
           
            borderRadius: BorderRadiusDirectional.circular(14),
          ),
          child:  Image.asset('assets/images/meggPdf2.png'),
        )
            ],
          ),
        ),
          IconButton(onPressed: (){}, icon: const Icon(Icons.chevron_left, color: Colors.white,))
      ],
    );
  }

 
}
