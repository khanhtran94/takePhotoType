// ListView.builder(
//     shrinkWrap: true,
//     itemCount: 2,
//     itemBuilder: (contex, index) {
//       return Expanded(child: Text('data'));
//     })
// ListView.builder(
//   physics: ClampingScrollPhysics(),
//   shrinkWrap: true,
//   itemCount: 4,
//   itemBuilder: (context, index) {
//     return Container(
//         width: MediaQuery.of(context).size.width * 0.5,
//         height: 200,
//         child: Center(
//           child: FittedBox(
//             child: CachedNetworkImage(
//               imageUrl: "http://via.placeholder.com/350x350",
//               placeholder: (context, url) =>
//                   CircularProgressIndicator(),
//               errorWidget: (context, url, error) => Icon(Icons.error),
//               fit: BoxFit.contain,
//             ),
//           ),
//         ));
//   },
// )

//
// ListView.builder(
//   itemCount: 5,
//   shrinkWrap: true,
//   physics: ClampingScrollPhysics(),
//   scrollDirection: Axis.horizontal,
//   itemBuilder: (contex, index) {
//     return Container();
//   },
// ),
