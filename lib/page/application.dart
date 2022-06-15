import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../constant/color.dart';
import '../constant/dimension.dart';
import '../widget/buildRow.dart';
import '../widget/build_list_row.dart';




class Application extends StatefulWidget {

  const Application({Key? key, }) : super(key: key);

  @override
  State<Application> createState() => _ApplicationState();
}

class _ApplicationState extends State<Application> {
  int activeIndex = 0;
 final ScrollController _controller = ScrollController();
  CarouselController buttonCarouselController = CarouselController();
 int index = 0;
 
  List<Image> _image = pdfview;

  @override
  Widget build(BuildContext context) {
    
    return  Material(
    
      child: LayoutBuilder(builder: (context, constraints) { 
         if (constraints.maxWidth > mobileWidth) {
              return const ExpandedApp();
            }else {
           return
             Center(
        
               child: Column(
              
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                 children: [
      
                     Container(
                       
                       height: 360,
                       padding: const EdgeInsets.symmetric(horizontal: 14,),
                       child: CarouselSlider(
                         items: _image, // widget.image,
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
                     const SizedBox(height: 10),
                smoothIndicator(),
                 
                         const SizedBox(height: 20),
                        SizedBox(                                      
                          height: 130,
                          child: ListView(
                           primary: false,
                          controller: _controller,
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                              children: [
                          BuildListView(
                                image: web[1],
                                ontap: () {
                          setWidget(web);
                               mobileIndex = 1;},
                              title: 'Magg Web site',
                              description: 'Read book while enjoying your favorite song'),                   
                        
                                           
                            BuildListView(
                                  image: pdfview[1],
                                  ontap: () {
                          setWidget(pdfview);
                               mobileIndex = 1; },
                                title: 'Magg PDF view',
                                description: 'Read book while enjoying your favorite song'),

                              BuildListView(
                                image: audio[1],
                                ontap: () {
                          setWidget(audio);
                               mobileIndex = 1; },
                              title: 'Audio Player & Photo editor',
                              description: 'Play audio, edit and share image',
                            ),

                            BuildListView(
                              image: rapport[1],
                              ontap: () {
                          setWidget(rapport);
                          mobileIndex = 1;},
                              title: 'Magg Rapport apps',
                              description: 'Organize and optimize your task in the minitery'),                              
                              ],
                            ))
                         ]),
             );
         }}),
    );
    
    }
                 
                 
             
                    

List<Image> setWidget(List<Image> image) {
    setState(() => _image = image);
    return image;
  }
      Widget imageContainer(Image image, VoidCallback onTap) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration:
            BoxDecoration(color: blue, borderRadius: BorderRadius.circular(25)),
        height: 100,
        width: 200,
        child: InkWell(onTap: onTap, child: image),
      ),
    );
  }

  Widget smoothIndicator() => AnimatedSmoothIndicator(
      activeIndex: activeIndex,
      count: pdfview.length,
      effect: const WormEffect(
          dotWidth: 20,
          dotHeight: 20) // JumpingDotEffect(dotWidth: 20, dotHeight: 20),
      );


    

}



    class ExpandedApp extends StatefulWidget {
      const ExpandedApp({Key? key}) : super(key: key);
    
      @override
      State<ExpandedApp> createState() => _ExpandedAppState();
    }
    
    class _ExpandedAppState extends State<ExpandedApp> {
      int activeIndex = 0;
 final ScrollController _controller = ScrollController();
  CarouselController buttonCarouselController = CarouselController();
 int index = 0;
 
  List<Image> _image = pdfview;

      @override
      Widget build(BuildContext context) {
        return Center(
          
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(height: 20,),
      Container(
          height: 350,
          padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
          child: CarouselSlider(
            items: _image, 
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
      const SizedBox(height: 20,),
                smoothIndicator(),
    
            const SizedBox(height: 20),
    
    Container(
       padding:const EdgeInsets.symmetric(vertical: 8.0),
             height: 110,
      child: ListView(

              primary: false,
            controller: _controller,
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
        children: [
             IconButton(onPressed: (){
             _controller.animateTo(_controller.position.maxScrollExtent,
                      duration: const Duration(milliseconds: 200),
                      curve: Curves.bounceIn);
                  },
                    icon:  Icon(Icons.arrow_back_ios_new_rounded, 
                    size: 50, 
                    shadows: [
                      Shadow(
                      blurRadius: 2,
                      color: Colors.grey[300]!,
                      offset: const Offset(-2,-2)
                    ),
                      
                      const Shadow(
                      blurRadius: 4,
                      color: Colors.black,
                      offset: Offset(2,2)
                    ),
                    ],
                      
                color: Colors.white,)),


               BuildRow(
                      child: pdfview[1],
                      ontap: () {
                        setWidget(pdfview);
                             mobileIndex = 0;
                          },
                  
                    ),
                    BuildRow(
                      child: audio[1],
                      ontap: () {
                        setWidget(audio);
                             mobileIndex = 1;
                          },
                  
                    ),
                    BuildRow(
                      child: rapport[1],
                      ontap: () {
                        setWidget(rapport);
                             mobileIndex = 2;
                          }),

                      BuildRow(
                      child: web[1],
                      ontap: () {
                        setWidget(web);
                             mobileIndex = 2;
                          },),

                       IconButton(onPressed: (){
                          _controller.animateTo(    _controller.position.minScrollExtent,
                      duration: const Duration(milliseconds: 200),
                      curve: Curves.bounceInOut);
                      },
                    icon:  Icon(Icons.arrow_forward_ios_rounded,
                      color: Colors.white,
                      size: 50, 
                    shadows: [
                      Shadow(
                      blurRadius: 2,
                      color: Colors.grey[300]!,
                      offset: const Offset(-2,-2)
                    ),
                      
                      const Shadow(
                      blurRadius: 4,
                      color: Colors.black,
                      offset: Offset(2,2)
                    ),
                    ],
                    )),
                            ],
                          ),
    )
                       ]),
        );
      }


      List<Image> setWidget(List<Image> image) {
    setState(() => _image = image);
    return image;
  }
    
  Widget smoothIndicator() => AnimatedSmoothIndicator(
      activeIndex: activeIndex,
      count: pdfview.length,
      effect: const WormEffect(
          dotWidth: 20,
          dotHeight: 20) // JumpingDotEffect(dotWidth: 20, dotHeight: 20),
      );

    }