import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:megg_mate_website/model/slide_transition.dart';
import 'package:shimmer/shimmer.dart';

import '../constant/string.dart';
import '../model/animation_fade.dart';
import '../widget/custom_text.dart';

class WelcomPage extends StatelessWidget {
  final VoidCallback ontap;

  const WelcomPage({
    Key? key,
    required this.ontap,
  }) : super(key: key);

 

  final sizedBox = const SizedBox(
    height: 12,
  );
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(children: [
            const SizedBox(
              height: 20,
            ),
            Image.asset('assets/team.png'),
            Shimmer.fromColors(
                 baseColor:Colors.black,
              highlightColor: Colors.grey.shade300,
              child: AnimationTransition(
                delay: 900,
                child: CustomText(
                    text: 'Welcom to Megg Mate',
                    style: GoogleFonts.coda(
                        fontSize: 30,
                        fontWeight: FontWeight.w500,
                        color: const Color(0xff242F9B))),
              ),
            ),
            const SizedBox(height: 20),
             Center(
               child: Column(
                 crossAxisAlignment: CrossAxisAlignment.center,
                 children: [
                    SizedBox(
                      width: 450,
                      child: CustomText(
                          text: string,
                          style: GoogleFonts.roboto(fontSize: 20, letterSpacing: 1)),
                    ),
            sizedBox,
            AnimationTransition(
              delay: 1000,
              child: Text(text,
                       style: GoogleFonts.alatsi(
                       fontSize: 20, color: const Color.fromARGB(255, 10, 62, 90))),
            ),

            sizedBox,

            AnimationTransition(
              delay: 2000,
              child: SizedBox(
                  width: 200,
                  child: ElevatedButton(
                    style: ButtonStyle(
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30.0))),
                        minimumSize: MaterialStateProperty.all(const Size(90, 50))),
                    onPressed: ontap,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        CustomText(
                            text: 'Apply Now',
                            style: GoogleFonts.roboto(
                                color: Colors.white, fontSize: 20)),
                        const SizedBox(
                          width: 8,
                        ),
                        const Transition(child:  Icon(
                          Icons.arrow_forward,
                          size: 30, color: Color.fromARGB(255, 237, 204, 154)
                        ))
                        
                       
                      ],
                    ),
                  ),
              ),
            )
                 ],
               ),
             )
           
          ]),
        ),
      ),
    );
  }
}
