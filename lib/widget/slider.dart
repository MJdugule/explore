import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';


class CarouselSlide extends StatefulWidget {
  final List<String> images;
  CarouselSlide({Key? key, required this.images}) : super(key: key);

  @override
  State<CarouselSlide> createState() => _CarouselSlideState();
}

class _CarouselSlideState extends State<CarouselSlide> {
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
          child: PageView.builder(itemBuilder: (context, index) {
            return
              Container(
                height: 200,
                width: 50,
                margin: const EdgeInsets.fromLTRB(0, 8, 10, 17),
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                        image: NetworkImage(widget.images[index % widget.images.length]) ,fit: BoxFit.cover
                    )
                ),



              );
          } )
        ),
        SizedBox(height: 20,),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            for (var i = 0; i < widget.images.length; i++)
              buildIndicator(currentIndex == i)
          ],
        ),


      ],
    );
  }
  Widget buildIndicator(bool isSelected) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 1),
      child: Container(
        height: isSelected ? 12 : 10,
        width: isSelected ? 12 : 10,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: isSelected ? Colors.black : Colors.grey,
        ),
      ),
    );
  }
}