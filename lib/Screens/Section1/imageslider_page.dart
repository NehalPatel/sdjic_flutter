import 'package:flutter/material.dart';
import 'package:flutter_swiper_null_safety/flutter_swiper_null_safety.dart';
import 'package:sdjic_flutter/components/my_drawer.dart';
import 'package:sdjic_flutter/components/my_popup_menu.dart';

class ImageSliderPage extends StatelessWidget {
  ImageSliderPage({Key? key}) : super(key: key);

  final List<String> imageList = [
    'https://www.sdjic.org/storage/2706/conversions/vaibhav-desai-image_300x300.jpg',
    'https://www.sdjic.org/storage/2707/conversions/vimal-vaiwala-image_300x300.jpg',
    'https://www.sdjic.org/storage/2711/conversions/nidhi-desai-image_300x300.jpg',
    'https://www.sdjic.org/storage/2740/conversions/nainesh-gathiyawala-image_300x300.jpg',
    'https://www.sdjic.org/storage/2745/conversions/poonam_patel-image_300x300.jpg',
    'https://www.sdjic.org/storage/2743/conversions/img_20190716_190410-image_300x300.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Image Slider Widget Demo"),
        actions: const [
          MyPopupMenu()
        ],
      ),
      drawer: MyDrawer(),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("SDJIC - BCA Department", style: TextStyle(fontSize: 30),),
              SizedBox(height: 20,),
              SizedBox(
                height: 300,
                width: 300,
                child: Swiper(
                  itemBuilder: (BuildContext context, int index) {
                    return Image.network(
                      imageList[index],
                      fit: BoxFit.fill,
                    );
                  },
                  itemCount: imageList.length,
                  autoplay: true,
                  autoplayDelay: 5000,
                  pagination: SwiperPagination(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
