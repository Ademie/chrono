// import 'package:flutter/material.dart';
// import '../components/avatar.dart';
// import '../components/gradient.dart';
// // import '../components/heading.dart';

// class FirstScreen extends StatelessWidget {
//   const FirstScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     // var theme = Theme.of(context);
//     // var style = theme.textTheme.displaySmall!.copyWith(
//     //   color: theme.colorScheme.onPrimary,
//     //   fontSize: 18,
//     //   fontFamily: 'poppins',
//     //   fontWeight: FontWeight.w500,
//     // );
//     return GradientScaffold(SafeArea(
//         child: Column(
//       children: [
//         Row(
//           children: [
//             IconButton(
//               onPressed: () {},
//               icon: Icon(Icons.arrow_back),
//               color: Colors.white,
//             ),
//           ],
//         ),
//         Column(
//           children: [
//             Avatar(
//               child: CircleAvatar(
//                 backgroundColor: Colors.white,
//                 backgroundImage: AssetImage("assets/user.png"),
//               ),
//             ),
//             // SizedBox(height: 40),
//             // Heading(style: style)
//             // Heading(style: style, content: "What's your First and Last name?",)
//             // TextInput(),
//             // SizedBox(height: 40),
//             // Button()
//           ],
//         )
//       ],
//     )));
//   }
// }



// class Button extends StatelessWidget {
//   const Button({
//     Key? key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       width: 300,
//       height: 40,
//       child: ElevatedButton(
//         style: ElevatedButton.styleFrom(
//           foregroundColor: Colors.white,
//           backgroundColor: Color(0xff00324F),
//         ),
//         onPressed: () {},
//         child: Text('Next'),
//       ),
//     );
//   }
// }

// class TextInput extends StatelessWidget {
//   const TextInput({
//     Key? key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       width: 300,
//       height: 40,
//       child: TextField(
//         decoration: InputDecoration(
//           filled: true,
//           fillColor: Colors.white,
//           hintText: 'Anja Roos ',
//           enabledBorder: OutlineInputBorder(
//             borderSide: BorderSide(width: 0, color: Colors.white),
//             borderRadius: BorderRadius.circular(50.0),
//           ),
//         ),
//       ),
//     );
//   }
// }
