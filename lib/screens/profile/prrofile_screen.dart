import 'package:duettest/screens/profile/components/body.dart';
import 'package:duettest/size_config.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SafeArea(
      child: Scaffold(
        // appBar: buildAppBar(),
        body: ProfileBody(),
      ),
    );
  }
}
//   AppBar buildAppBar() {
//     return AppBar(
//       backgroundColor: kPrimaryColor,
//       leading: SizedBox(),
//       // On Android it's false by default
//       centerTitle: true,
//       // title: Text("Profile"),
//       actions: <Widget>[
//         IconButton(
//           onPressed: () {},
//           icon: Icon(Icons.abc),
//         )
//         //   child: Text(
//         //     "Edit",
//         //     style: TextStyle(
//         //       color: Colors.white,
//         //       fontSize: SizeConfig.defaultSize * 1.6, //16
//         //       fontWeight: FontWeight.bold,
//         //     ),
//         //   ),
//         // ),
//       ],
//     );
//   }
// }
