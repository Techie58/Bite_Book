import 'package:bite_book/designs/featured_container_desing.dart';
import 'package:flutter/cupertino.dart';

class FeaturedBannerPageController extends StatelessWidget {
  final List<String> bannersPics;
  final PageController bannerController;

  const FeaturedBannerPageController({super.key, required this.bannersPics, required this.bannerController});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 23),
            child: Text('Featured',style: TextStyle(fontSize:26,fontWeight: FontWeight.bold,color: Color(0xFF0A2533) ),),
          ),
          SizedBox(height: 12,),

          SizedBox(
            height: 172,
            child: PageView.builder(
              itemCount: bannersPics.length,
              controller: bannerController,

              itemBuilder: (context, index) {
                return FeaturedContainerDesign(index: index, bannersPics: bannersPics);
              },
            ),
          ),
        ],
    );
  }
}
