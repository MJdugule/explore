import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class ImageSlider extends StatefulWidget {
  final List<String> images;
  ImageSlider({Key? key, required this.images}) : super(key: key);

  @override
  State<ImageSlider> createState() => _ImageSliderState();
}

class _ImageSliderState extends State<ImageSlider> {
  int currentIndex = 0;
  final PageController controller = PageController();
  @override
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
            height: 200,
            width: double.infinity,
            child: Stack(children: [
              PageView(
                controller: controller,
                onPageChanged: (index) {
                  setState(() {
                    currentIndex = index;
                  });
                },
                children: [
                  for (var i = 0; i < widget.images.length; i++)
                    Container(
                      height: 200,
                      width: 50,
                      margin: const EdgeInsets.fromLTRB(0, 8, 0, 1),
                      // padding: const EdgeInsets.all(10),
                      // decoration: BoxDecoration(
                      //     borderRadius: BorderRadius.circular(10),
                      //     image: DecorationImage(
                      //         image: NetworkImage(widget.images[index % widget.images.length]) ,fit: BoxFit.cover
                      //     )

                      // ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        child: CachedNetworkImage(
                          fit: BoxFit.cover,
                          imageUrl: widget
                              .images[currentIndex % widget.images.length],
                          placeholder: (context, url) =>
                              Center(child: CircularProgressIndicator()),
                          errorWidget: (context, url, error) =>
                              Icon(Icons.map, size: 90,),
                        ),
                      ),
                    )
                ],
              ),
              Positioned(
                bottom: 6,
                left: 0,
                right: 0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    for (var i = 0; i < widget.images.length; i++)
                      buildIndicator(i)
                  ],
                ),
              ),
              Positioned(
                top: 0,
                bottom: 0,
                left: 10,
                child: Container(
                  height: 25,
                  width: 25,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.grey,
                  ),
                  child: IconButton(
                    icon: Icon(Icons.arrow_back_ios, size: 12, color: Color.fromARGB(255, 8, 17, 39),),
                    onPressed: () {
                      if (currentIndex == 0) {
                        setState(() {
                          controller.animateToPage(
                            2,
                            curve: Curves.linear,
                            duration: const Duration(
                              milliseconds: 200,
                            ),
                          );
                        });
                      } else {
                        controller.previousPage(
                            duration: const Duration(milliseconds: 500),
                            curve: Curves.easeInOut);
                      }
                    },
                  ),
                ),
              ),    Positioned(
                top: 0,
                bottom: 0,
                right: 10,
                child: Container(
                  height: 25,
                  width: 25,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.grey,
                  ),
                  child: IconButton(
                    icon: Icon(Icons.arrow_forward_ios, size: 12, color: Color.fromARGB(255, 8, 17, 39),),
                    onPressed: () {
                      if (currentIndex == 2) {
                        setState(() {
                          controller.animateToPage(
                            0,
                            curve: Curves.linear,
                            duration: const Duration(
                              milliseconds: 200,
                            ),
                          );
                        });
                      } else {
                        controller.nextPage(
                            duration: const Duration(milliseconds: 500),
                            curve: Curves.easeInOut);
                      }
                    },
                  ),
                ),
              ),
            
            ])),
      ],
    );
  }

  Widget buildIndicator(isSelected) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 1),
      child: Container(
        height: currentIndex == isSelected ? 9 : 7,
        width: currentIndex == isSelected ? 9 : 7,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: currentIndex == isSelected ? Colors.white : Colors.grey,
        ),
      ),
    );
  }
}
