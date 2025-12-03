//
//
// void nScaffold(
// body:
// Stack(
// children: [
// /// Top Image
// SizedBox(
// height: screenHeight * 0.33,
// width: double.infinity,
// child: Image.asset(
// widget.image,
// fit: BoxFit.cover,
// ),
// ),
//
// /// Top Buttons
// Positioned(
// top: 40,
// left: 12,
// right: 12,
// child: Row(
// mainAxisAlignment: MainAxisAlignment.spaceBetween,
// children: [
// FavouriteBtn(
// icon: Icons.cancel_outlined,
// containerSize: 50,
// iconSize: 40,
// ),
// FavouriteBtn(
// icon: Icons.favorite_border_rounded,
// containerSize: 50,
// iconSize: 40,
// ),
// ],
// ),
// ),
//
// /// ⭐ Sliding Box — now fully working
// SlidingBox(
// minHeight: screenHeight - (screenHeight * 0.33),
// maxHeight: screenHeight * 0.85,
// collapsed: true,
// draggableIconBackColor: Colors.white,
// draggableIconColor: transparentGrey,
// draggableIconVisible: true,
//
// /// ⭐ Use ONLY bodyBuilder
// bodyBuilder: (scrollController, boxPosition) {
// return CustomScrollView(
// controller: scrollController,
// slivers: [
//
// SliverToBoxAdapter(
// child: Padding(
// padding: const EdgeInsets.all(16),
// child: Text(
// widget.title,
// style: const TextStyle(
// fontSize: 26,
// fontWeight: FontWeight.bold,
// ),
// ),
// ),
// ),
//
// /// Example details
// SliverToBoxAdapter(
// child: Padding(
// padding: const EdgeInsets.symmetric(horizontal: 16),
// child: Text(
// widget.subtitle,
// style: const TextStyle(
// fontSize: 16,
// color: Colors.grey,
// ),
// ),
// ),
// ),
//
// /// Ingredients label
// SliverToBoxAdapter(
// child: Padding(
// padding: const EdgeInsets.all(16),
// child: const Text(
// "Ingredients",
// style: TextStyle(
// fontWeight: FontWeight.bold,
// fontSize: 20,
// ),
// ),
// ),
// ),
//
// /// Ingredients list
// SliverList(
// delegate: SliverChildBuilderDelegate(
// (context, index) {
// return ListTile(
// title: Text(widget.ingredients[index]),
// );
// },
// childCount: widget.ingredients.length,
// ),
// ),
// ],
// );
// },
// ),
// ],
// ),
// )