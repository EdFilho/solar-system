import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class GalleryWidget extends StatelessWidget {

  GalleryWidget ({ Key key}) : super (key : key);

  List<String> images = ['1', '2', '3', '4', '5'];
  
  @override
  Widget build(BuildContext context) {
    return Container(
      child: new Swiper(
        itemCount: images.length,
        control: SwiperControl(
          disableColor: Colors.white,
          color: Colors.white
        ),
        pagination: new SwiperPagination(),
        itemBuilder: (BuildContext context,int index){
          return new Image.asset('assets/gallery/${images[index]}.jpeg');
        },
      ),
    );
  }
}