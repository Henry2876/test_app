// Задание 6


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main()=>runApp(const MyApp());

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Screen',
      home: HomeScreen(),
      routes: {
        '/logic1': (context)=> LogicScreen1(),
        '/logic2': (context)=> LogicScreen2(),
        '/logic3': (context)=> LogicScreen3(),
        '/final': (context)=> FinalScreen(),
      },
    );
  }
}

class HomeScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Главный экран'),
      centerTitle: true,),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: ()=> Navigator.pushNamed(context, '/logic1'),
                child: Text('Экран 1')),
            const SizedBox(height: 15.0),
            ElevatedButton(
                onPressed: ()=> Navigator.pushNamed(context, '/logic2'),
                child: Text('Экран 2')),
            const SizedBox(height: 15.0),
            ElevatedButton(
                onPressed: ()=> Navigator.pushNamed(context, '/logic3'),
                child: Text('Экран 3')),
            const SizedBox(height: 15.0),
            ElevatedButton(
                onPressed: ()=>Navigator.pushNamed(context, '/final'),
                child: Text('Развязка')),

          ],
        ),
      ),

    );
  }
}

class LogicScreen1 extends StatefulWidget {
  @override
  _LogicScreen1State createState() => _LogicScreen1State();
}
class _LogicScreen1State extends State<LogicScreen1>{
  bool _isHidden = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Экран 1'),
        centerTitle: true,),
    body: Center(
    child: _isHidden
    ? Text('Hidden', style: TextStyle(fontSize: 25),)
        :Image.network('https://filapp1.imgsmail.ru/pic?url=https%3A%2F%2Fotvet.imgsmail.ru%2Fdownload%2F179457519_6fb2312d2ffb76fa222914af5bdada71_800.jpg&sig=8af1813007d6b61593ac80b69d4346a8')
    ),
    bottomNavigationBar: Padding(
    padding:const EdgeInsets.all(16.0),
    child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
    Expanded(child: ElevatedButton(
    onPressed: (){
    setState(() {
    _isHidden = true;
    });
    },
    style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
    children: [Text('Скрыть', style: TextStyle(color: Colors.white,fontSize: 15)), Icon(CupertinoIcons.hand_point_left, color: Colors.white)],
    )
    )
    ),

    const SizedBox(width: 16,),

    Expanded(child: ElevatedButton(
    onPressed: (){
    setState(() {
    _isHidden = false;
    });
    },
    style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
    children: [
    Text('Показать', style: TextStyle(color: Colors.yellow, fontSize: 15)), Icon(CupertinoIcons.hand_point_left_fill, color: Colors.yellow,)
    ],
    )

    )
    )
    ],
    ),
    )
    );
  }
}

class LogicScreen2 extends StatefulWidget{
  @override
  _LogicScreen2State createState() => _LogicScreen2State();
  }
class _LogicScreen2State extends State<LogicScreen2>{
  bool _isPresence = false;

  Widget build(BuildContext contex) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Экран 2'),
        centerTitle: true,
      ),
      body:Center(child: 
        _isPresence
          ? Image.network('https://avatars.mds.yandex.net/get-yapic/58107/cBmWI0WoDcFfgcqQEREiuFZ0SU-1/orig')
            :Container(),
      ),
      bottomNavigationBar: Padding(
          padding: EdgeInsets.all(16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(child:
                ElevatedButton(
                    onPressed: (){
                      setState(() {
                        _isPresence = true;
                      });
                    },
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.lightBlueAccent),
                    child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Восстановить',style: TextStyle(color: Colors.green, fontSize: 15)),
                    const SizedBox(width: 5),
                    Icon(Icons.restore,color: Colors.green,)
                  ],
                )
                )
            ),

            const SizedBox(width: 16),

            Expanded(child:
            ElevatedButton(
                onPressed: (){
                  setState(() {
                    _isPresence = false;
                  });
                },
                style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Удалить',style: TextStyle(color: Colors.red, fontSize: 15)),
                    const SizedBox(width: 5),
                    Icon(CupertinoIcons.delete, color: Colors.red)
                  ],
                )
            )
            ),

          ],
        ),
      ),
        
    );
  }
}



class LogicScreen3 extends StatefulWidget{
  @override
  _LogicScreen3State createState() => _LogicScreen3State();
}

class _LogicScreen3State extends State<LogicScreen3>{
  double _opacity = 1.0;
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Экран 3'),
        centerTitle: true,
      ),
      body: Center(child: Opacity(opacity: _opacity,
      child: Image.network('https://avatars.mds.yandex.net/i?id=c47543b7dba408a70eb257673e8b6596b2b0ea57-5392430-images-thumbs&n=13')
      )),
      bottomNavigationBar: Padding(
          padding: EdgeInsets.all(16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
                child: ElevatedButton(
                    onPressed: (){
                      setState(() {
                        if (_opacity > 0.1) _opacity -= 0.1;
                      });
                    },
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.blueGrey),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Уменьшить',style: TextStyle(color: Colors.black87, fontSize: 15)),
                        const SizedBox(width: 5),
                        Icon(CupertinoIcons.lightbulb, color: Colors.black87,)
                      ],
                    )
                )
            ),
            const SizedBox(width: 16),

            Expanded(
                child: ElevatedButton(
                    onPressed: (){
                      setState(() {
                        if (_opacity< 1.0) _opacity += 0.1;
                      });
                    },
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.black87),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Увеличить', style: TextStyle(color: Colors.blueGrey, fontSize: 15)),
                        const SizedBox(width: 5),
                        Icon(Icons.lightbulb, color: Colors.blueGrey,)
                      ],
                    )
                ))

          ],
        ),
      )
    );
  }
}

class FinalScreen extends StatefulWidget{
  @override
  _FinalScreenState createState() => _FinalScreenState();
}

class _FinalScreenState extends State<FinalScreen>{
  
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Экран Развязки'),
        centerTitle: true,
      ),
      body: Center(
        child: Image.network('https://a.d-cd.net/bQHHm3946rgr_qbCBJ4c6dSb2ng-960.jpg'),
      ),
    );
  }
}












// // Задание №5
//
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
//
// void main() => runApp (const MyApp());
//
//
// class MyApp extends StatelessWidget{
//   const MyApp({super.key});
//
//   @override
//   Widget build(BuildContext context){
//     return MaterialApp(
//       title: "Three Button",
//       theme: ThemeData.dark(),
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//           appBar: AppBar(
//             title:const Text('___Button___'),
//             centerTitle: true,
//             titleTextStyle:const TextStyle(fontSize: 30,color:  Colors.blue),
//           ),
//
//           body:Column(children: [
//
//             Container (
//                 margin:const EdgeInsets.all(16),
//                 height: 50,
//                 width: 400,
//
//                 decoration: BoxDecoration(
//                     boxShadow: [
//                       BoxShadow(
//                         color: Colors.white.withOpacity(0.08),
//                         offset:const Offset(0, 4),
//                       )
//                     ]
//                 ),
//
//                 child: ElevatedButton(
//                   onPressed:() {
//                     debugPrint('Go!');
//                   },
//                   style: ElevatedButton.styleFrom(
//                       padding:const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
//                       foregroundColor: Colors.white,
//                       backgroundColor: Colors.green,
//                       shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(15)
//                       )
//                   ),
//                   child:const Text('Go!'),
//                 )
//             ),
//
//             Row(children: [
//               Container (
//                   margin:const EdgeInsets.only(left: 16,right: 8),
//                   height: 50,
//                   width: 180,
//
//                   decoration: BoxDecoration(
//                       boxShadow: [
//                         BoxShadow(
//                           color: Colors.white.withOpacity(0.08),
//                           offset:const Offset(0, 4),
//                         )
//                       ]
//                   ),
//
//                   child: ElevatedButton(
//                       onPressed:() {
//                         debugPrint('Stop the violence!');
//                       },
//                       style: ElevatedButton.styleFrom(
//                           padding:const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
//                           foregroundColor: Colors.white,
//                           backgroundColor: Colors.red,
//                           shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(15)
//                           )
//                       ),
//                       child:const Row(
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           children: [
//                             Icon(Icons.back_hand_outlined,color: Colors.white,),
//                             SizedBox(width: 10),
//                             Text(
//                                 'Stop the violence',
//                                 textAlign: TextAlign.center,
//                                 maxLines: 2,
//                                 style: TextStyle(color: Colors.white))
//                           ]
//                       )
//
//                   )
//               ),
//
//
//               Container (
//                   margin:const EdgeInsets.only(right: 16, left: 8),
//                   height: 50,
//                   width: 180,
//
//                   decoration: BoxDecoration(
//                       boxShadow: [
//                         BoxShadow(
//                           color: Colors.white.withOpacity(0.08),
//                           offset:const Offset(0, 4),
//                         )
//                       ]
//                   ),
//
//                   child: ElevatedButton(
//                       onPressed:() {
//                         debugPrint('Edit!');
//                       },
//                       style: ElevatedButton.styleFrom(
//                           padding:const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
//                           foregroundColor: Colors.white,
//                           backgroundColor: Colors.lightBlueAccent,
//                           shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(15)
//                           )
//                       ),
//                       child:const Row(
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           children: [
//                             Icon(CupertinoIcons.plus,color: Colors.white,),
//                             SizedBox(width: 10),
//                             Text('Edit'),
//                             SizedBox(width: 10),
//                             Icon(CupertinoIcons.minus,color: Colors.white,)]
//                       )
//
//                   )
//               ),
//
//             ],
//             )
//           ]
//           )
//       ),
//     );
//
//
//   }
// }
//












// //Задача № 4
// import 'package:flutter/material.dart';
//
// void main() => runApp (const MyApp());
//
// class MyApp extends StatelessWidget{
//   const MyApp({super.key});
//
//   @override
//   Widget build(BuildContext context){
//     return MaterialApp(
//       title: "Glide",
//       debugShowCheckedModeBanner: false,
//       theme: ThemeData.dark(),
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text('_____Glide____'),
//           titleTextStyle: const TextStyle(color: Colors.green, fontSize: 35),
//           centerTitle: true,
//
//           backgroundColor: Colors.black,
//           foregroundColor: Colors.green,
//
//           leading: Tooltip(message: 'Search',
//               child: IconButton(onPressed: ()=>debugPrint("Menu"), icon:const Icon(Icons.menu))),
//           actions: [Tooltip(message: 'Search',
//               child: IconButton(onPressed: ()=> debugPrint('Search'), icon:const Icon(Icons.search)))],
//         ),
//         body: Center(
//             child: SingleChildScrollView(
//               child: Column(
//                   children:[
//
//                     Container(       // #1
//                       width: 150,
//                       height: 150,
//                       child: Image.network('https://www.nicepng.com/png/detail/171-1717669_heroes-3-blackdragon-heroes-of-might-and-magic.png'),
//                     ),
//
//
//                     const SizedBox(height: 20),
//
//                     Container(         //#2
//                       width: 150,
//                       height: 150,
//                       color: const Color(0xFF1C3072),
//                       child: Image.network('https://www.nicepng.com/png/detail/171-1717669_heroes-3-blackdragon-heroes-of-might-and-magic.png',
//                         fit: BoxFit.cover,),
//                     ),
//
//                     const SizedBox(height: 20),
//
//                     Container(               //#3
//                       width: 150,
//                       height: 150,
//                       color:const Color(0xFF1C3072),
//                       child: Image.network('https://www.nicepng.com/png.png',
//                         fit: BoxFit.contain,
//                         errorBuilder: (context, error, stackTrace) => Container(
//                           color: Colors.red,
//                           child: const Icon(Icons.error, color: Colors.white,size: 80,),
//                         ),),
//                     ),
//
//                     const SizedBox(height: 20),
//
//                     Container(                  //#4
//                       width: 150,
//                       height: 150,
//                       color:const Color(0xFF1C3072),
//                       child: Image.network('https://www.nicepng.com/png/detail/171-1717669_heroes-3-blackdragon-heroes-of-might-and-magic.png',
//                           fit: BoxFit.cover),
//                     ),
//
//                     const SizedBox(height: 20),
//
//                     Container(                //#5
//                       width: 150,
//                       height: 150,
//                       color:const Color(0xFF1C3072),
//                       child:
//                       Image.network('https://www.nicepng.com/png/detail/171-1717669_heroes-3-blackdragon-heroes-of-might-and-magic.png',
//                         loadingBuilder: (context, child, progress){
//                           return progress == null
//                               ? child
//                               : Image.network('https://simg.nicepng.com/png/small/171-1717669_heroes-3-blackdragon-heroes-of-might-and-magic.png',
//                             height: 150,
//                             width: 150,);
//                         },
//                         errorBuilder: (context, error, stackTrace)=> Container(
//                           color: Colors.red,
//                           child: const Icon(Icons.error, color: Colors.white,size: 80),
//                         ),
//                       ),
//                     ),
//
//
//                     const SizedBox(height: 20),
//
//                     Container(              //#6
//                       width: 150,
//                       height: 150,
//                       color:const Color(0xFF1C3072),
//                       child:
//                       Image.network('https://www.nicepng.com/png/detail/171-1717669_heroes-3-blackdragon-heroes-of-might-and-magic.png',
//                         loadingBuilder: (context, child, progress){
//                           return progress == null
//                               ? child
//                               : Image.network('https://simg.nicepng.com/png/small/171-1717669_heroes-3-blackdragon-heroes-of-might-and-magic.png',
//                               height: 37.5,
//                               width: 37.5);
//                         },
//                         errorBuilder: (context, error, stackTrace)=> Container(
//                           color: Colors.red,
//                           child: const Icon(Icons.error, color: Colors.white,size: 80),
//                         ),
//                       ),
//                     ),
//
//                     const SizedBox(height: 20),
//
//                     Container(
//
//                       width: 150,
//                       height: 150,
//                       color: const Color(0xFF1C3072),
//                       child: Stack(
//
//                         alignment: Alignment.center,
//                         children: [
//                           Image.network('https://w.wallhaven.cc/fu8ll/0q/wallhaven-0qv23r.jpg',
//                             fit:BoxFit.cover,
//                             loadingBuilder: (context, child, progress) {
//                               if (progress == null) return child;
//                               return const CircularProgressIndicator();
//                             },
//                             errorBuilder: (context, error, stackTrace)=> Container(
//                               color: Colors.red,
//                               child:const Center(child:  Icon(Icons.error, color: Colors.white, size: 80),
//                               )
//                             )
//                           )
//                         ]
//                       ),
//                     ),
//
//                     const SizedBox(height: 20),
//
//                     Container(
//                       width: 150,
//                       height: 150,
//                       color:const Color(0xFF1C3072),
//                       child:
//                       Image.network('https://www.nicepng.com/png/detail/171-1717669_heroes-3-blackdragon-heroes-of-might-and-magic.png',
//                       loadingBuilder: (context, child, progress){
//                         return progress == null
//                             ? child
//                             : Image.network('https://simg.nicepng.com/png/small/171-1717669_heroes-3-blackdragon-heroes-of-might-and-magic.png',
//                         height: 37.5,
//                         width: 37.5,);
//                       },
//                         errorBuilder: (context, error, stackTrace)=>Container(
//                           color: Colors.red,
//                           child: const Icon(Icons.error, size: 80,color: Colors.white),
//                         ),
//                       ),
//                     ),
//
//                     const SizedBox(height: 20),
//
//                     Container(
//                       width: 150,
//                       height: 150,
//                       color:const Color(0xFF1C3072),
//                       child:
//                       Image.network('https://www.nicepng.com/png/detail/171-1717669_heroes-3-blackdragon-heroes-of-might-and-magic.png',
//                       loadingBuilder: (context, child, progress){
//                         return progress == null
//                             ? child
//                             : Image.network('https://simg.nicepng.com/png/small/171-1717669_heroes-3-blackdragon-heroes-of-might-and-magic.png',
//                         height: 37.5,
//                             width: 37.5);
//                         },
//                         errorBuilder: (context, error, stackTrace)=>Container(
//                           color: Colors.red,
//                           child: const Icon(Icons.error, color: Colors.white,size: 80),
//                         ),
//                       ),
//                     )
//
//                   ]
//               ),
//             )
//         ),
//       ),
//     );
//   }
// }
//
//
//

















//----------------ЗАДАНИЕ 1.3----------------------

// import 'package:flutter/material.dart';
//
// void main()=>runApp(const MyApp());
//
//
// class MyApp extends StatelessWidget{
//   const MyApp({super.key});
//
//   @override
//   Widget build(BuildContext context){
//     final SizeScreen = MediaQuery.of(context).size;
//     return MaterialApp(
//       title: 'Stack',
//       debugShowCheckedModeBanner: false,
//       theme: ThemeData.dark(),
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text('___Stack___'),
//           titleTextStyle: const TextStyle(fontSize: 30,color: Colors.yellow),
//           toolbarHeight: 50,
//           backgroundColor: Colors.red,
//           foregroundColor: Colors.yellow,
//           centerTitle: true,
//
//           leading: IconButton(onPressed:()=>debugPrint('Размеры $SizeScreen'), icon: const Icon(Icons.format_size)),
//           actions: [IconButton(onPressed:()=>debugPrint('Поисковая строка открыта'), icon: const Icon(Icons.search)),],
//         ),
//
//         body:  Stack(
//             children: [
//               Positioned(
//                   top: 10,
//                   right:10,
//                   child: SizedBox(height: 675, width: 405,child: Container(color: const Color(
//                       0xFFF6F6F6)))
//               ),
//               Positioned(
//                   top: 10,
//                   left:0,
//                   child: SizedBox(height: 325, width: 325,child: Container(color: const Color(
//                       0xFF0011C8)))
//               ),
//               Positioned(
//                   top: 12,
//                   left:0,
//                   child: SizedBox(height: 320, width: 320,child: Container(color: const Color(
//                       0xFFEB2920)))
//               ),
//               Positioned(
//                   top: 12,
//                   left:0,
//                   child: SizedBox(height: 55, width: 55,child: Container(color: const Color(
//                       0xFFC49AAA)))
//               ),
//               Positioned(
//                   top: 12,
//                   left:0,
//                   child: SizedBox(height: 52, width: 52,child: Container(color: const Color(
//                       0xFF8DC302)))
//               ),
//               Positioned(
//                   top: 12,
//                   left:265,
//                   child: SizedBox(height: 55, width: 55,child: Container(color: const Color(
//                       0xFF516161)))
//               ),
//               Positioned(
//                   top: 12,
//                   left:268,
//                   child: SizedBox(height: 52, width: 52,child: Container(color: const Color(
//                       0xFF000000)))
//               ),
//               Positioned(
//                   top: 12,
//                   left:295,
//                   child: SizedBox(height: 25, width: 25,child: Container(color: const Color(
//                       0xFFBDB9B5)))
//               ),
//               Positioned(
//                   top: 12,
//                   left:298,
//                   child: SizedBox(height: 22, width: 22,child: Container(color: const Color(
//                       0xFFFC7A02)))
//               ),
//               Positioned(
//                   top: 277,
//                   left:0,
//                   child: SizedBox(height: 55, width: 55,child: Container(color: const Color(
//                       0xFF70BED7)))
//               ),
//               Positioned(
//                   top: 280,
//                   left:0,
//                   child: SizedBox(height: 52, width: 52,child: Container(color: const Color(
//                       0xFF2BAADF)))
//               ),
//               Positioned(
//                   top: 145,
//                   left:145,
//                   child: SizedBox(height: 55, width: 55,child: Container(color: const Color(
//                       0xFFADC0CB)))
//               ),
//               Positioned(
//                   top: 147,
//                   left:147,
//                   child: SizedBox(height: 51, width: 51,child: Container(color: const Color(
//                       0xFF9E5AC3)))
//               ),
//
//             ],
//
//           ),
//         ),
//     );
//   }
//
// }
//






//-------------------------ЗАДАНИЕ 1.2



//
// import 'package:flutter/material.dart';
//
// void main() =>runApp(MyApp());
//
//
// class MyApp extends StatelessWidget{
//   const MyApp({Key? key}) : super (key : key);
//
//   @override
//   Widget build(BuildContext context) {
//
//     return MaterialApp(
//       title: 'Row Пример',
//       debugShowCheckedModeBanner: false,
//       theme: ThemeData.dark(),
//       home: Scaffold(
//         appBar: AppBar(
//           backgroundColor: Colors.blue,
//           foregroundColor: Colors.black87,
//           centerTitle: true,
//           toolbarHeight: 50,
//           title: Text('___Row___'),
//
//           leading: IconButton(onPressed: ()=>debugPrint('Вы вошли в меню'), icon: Icon(Icons.menu)),
//           actions: [IconButton(onPressed: ()=>debugPrint('Вы вошли в поиск'), icon: Icon(Icons.search))],
//          // iconTheme: IconThemeData(color: Colors.black87, size: 30),
//         ),
//         body:Container(child:  Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             Container(
//               child: Icon(
//                   Icons.scale,size: 50,),
//               color: Colors.yellow,),
//             SizedBox(width: 20),
//             Container(child: Icon(
//                 Icons.scale,size: 50,),
//               color: Colors.green,),
//             SizedBox(width: 20),
//
//             Container(child: Icon(
//                 Icons.scale,size: 50,),
//               color: Colors.blue,),
//             SizedBox(width: 20),
//             Container(child: Icon(
//                 Icons.scale,size: 50,),
//               color: Colors.red,),
//             SizedBox(width: 20),
//           ],
//         ),
//           alignment: Alignment.center,
//         ),
//       ),
//
//     );
//   }
// }




//-------------------ЗАДАНИЕ 1.1------------------------------------
//
//
//
//
//
//
// import 'dart:math'; // Для вычисления диагонали экрана.
// import 'package:flutter/material.dart'; // Основной пакет Flutter для UI.
//
// void main() {
//   runApp(const MyApp()); // Запуск приложения.
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     // Оборачиваем всё приложение в MaterialApp.
//     return MaterialApp(
//       title: 'Пример приложения', // Название приложения.
//       debugShowCheckedModeBanner: false, // Убираем баннер "debug".
//       theme: ThemeData.dark(), // Тема приложения.
//       home: const ScrollViewExample(), // Задаем главный экран.
//     );
//   }
// }
//
// class ScrollViewExample extends StatelessWidget {
//   const ScrollViewExample({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     // Получаем размеры экрана.
//     final screenSize = MediaQuery.of(context).size;
//     final diagonal = sqrt(pow(screenSize.width, 2) + pow(screenSize.height, 2));
//
//     // Проверяем, является ли экран маленьким.
//     final isSmallScreen = diagonal < 5.5 * 160;
//
//     return Scaffold(
//       appBar: AppBar(
//         toolbarHeight: 50,
//         backgroundColor: Colors.black,
//         title: const Text(
//           "___ScrollView___",
//           style: TextStyle(
//             color: Colors.yellow,
//             fontSize: 30,
//             fontWeight: FontWeight.bold,
//           ),
//         ),
//         centerTitle: true,
//         leading: IconButton(
//           onPressed: () => debugPrint('Меню открыто'),
//           icon: const Icon(Icons.menu),
//         ),
//         actions: [
//           IconButton(
//             onPressed: () => debugPrint("Поиск активирован"),
//             icon: const Icon(Icons.search),
//           ),
//         ],
//         iconTheme: const IconThemeData(color: Colors.yellow, size: 30),
//       ),
//
//       // Прокручиваемый контент
//       body: SingleChildScrollView(
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.stretch,
//           children: [
//             // Генерация текста (контента)
//             for (int i = 1; i <= 50; i++)
//               Center(
//                 child: Text(
//                   "Контент $i",
//                   style: const TextStyle(fontSize: 18),
//                 ),
//               ),
//             // Кнопка внизу контента
//             isSmallScreen ? Padding(
//               padding: EdgeInsets.only(
//                 top: 20, // Отступ сверху.
//                 bottom: isSmallScreen ? 20 : 0, // Для маленьких экранов.
//               ),
//               child: ElevatedButton(
//                 onPressed: () => debugPrint('Кнопка нажата!'),
//                 onLongPress: () => debugPrint("Долгое нажатие на кнопку"),
//                 style: ElevatedButton.styleFrom(
//                   foregroundColor: Colors.yellow,
//                   backgroundColor: Colors.black,
//                 ),
//                 child: const Icon(
//                     Icons.ads_click),
//
//
//
//               ),
//             ):Scaffold(
//               floatingActionButton: FloatingActionButton(
//
//                   onPressed: (){
//                     debugPrint('Кнопка нажата');
//                   },
//                 foregroundColor: Colors.yellow,
//                 backgroundColor: Colors.black,
//                 child: const Icon(Icons.ads_click),
//
//               ),
//             ),
//
//           ],
//         ),
//       ),
//     );
//   }
// }
//
//
//
//
//










//------------------------------------------------------------------------------













// void main() =>runApp(const SizedWidget());
//
// class SizedWidget extends StatelessWidget {
//   const SizedWidget({super.key});
//
//   @override
//     Widget build(BuildContext context){
//     return MaterialApp(
//       home: Scaffold(
//       body: Stack(
//       children: [
//         Container(
//           width: 300,
//          height: 300,
//          color: Colors.black,
//         ),
//
//         const Positioned(
//           top: 20,
//             left: 20,
//             child: Icon(Icons.camera_alt_outlined, color: Colors.yellow,)
//         ),
//
//         const Positioned(
//             top: 70,
//             left: 70,
//             child: Icon(Icons.camera_alt_rounded, color: Colors.yellow,)
//         ),
//       ],
//     )
//     )
//     );
//   }
//   }





























//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         body: Container(
//
//           color: Colors.black,
//           padding: const EdgeInsets.all(30),
//           child: const Center(
//               child:  Row(
//             children: [
//               Expanded(
//                   flex: 1,
//                   child: Image(image: NetworkImage('https://p16-va-tiktok.ibyteimg.com/img/musically-maliva-obj/1641851722153990~c5_720x720.jpeg')),
//               ),
//               Expanded(
//                   flex: 1,
//                   child: Image(image: NetworkImage('https://pic.rutubelist.ru/video/4e/a6/4ea65a396c1e8acf12ee2735eccd64ea.jpg')),
//               ),
//               Expanded(
//                   flex: 1,
//                   child: Image(image: NetworkImage('https://avatars.mds.yandex.net/i?id=3950f54214cfb025ee8919b5f9c77c3c6581cfa5_l-9268554-images-thumbs&ref=rim&n=13&w=800&h=665'))
//               ),
//               Expanded(
//                   flex: 1,
//                   child: Image(image: NetworkImage('https://avatars.mds.yandex.net/i?id=3950f54214cfb025ee8919b5f9c77c3c6581cfa5_l-9268554-images-thumbs&ref=rim&n=13&w=800&h=665'))
//               ),
//               Expanded(
//                   flex: 1,
//                   child: Image(image: NetworkImage('https://avatars.mds.yandex.net/i?id=3950f54214cfb025ee8919b5f9c77c3c6581cfa5_l-9268554-images-thumbs&ref=rim&n=13&w=800&h=665'))
//               ),
//               Expanded(
//                   flex: 1,
//                   child: Image(image: NetworkImage('https://avatars.mds.yandex.net/i?id=3950f54214cfb025ee8919b5f9c77c3c6581cfa5_l-9268554-images-thumbs&ref=rim&n=13&w=800&h=665'))
//               ),
//             ],
//                       )
//           )
//
//         ),
//       ),
//     );
//   }
// }
//












// import 'package:flutter/material.dart';
//
//
// void main() => runApp(const SimpleWidget());
//
// class SimpleWidget extends StatelessWidget{
//   const SimpleWidget({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//
//
//
//     return Container(
//       //color: Colors.blue,
//       margin: EdgeInsets.only(bottom: 50.0, left: 50.0, right: 70, top: 100.0),
//       padding: EdgeInsets.only(bottom: 60.0),
//
//       // foregroundDecoration: BoxDecoration(
//       //  gradient: LinearGradient(
//       //    colors: [Colors.greenAccent.withOpacity(0.3), Colors.redAccent.withOpacity(0.3)],
//       //    begin: Alignment.bottomCenter,
//       //    end: Alignment.topCenter,
//       //  ),
//       // ),
//
//       // constraints: const BoxConstraints.tightFor(
//       //   width: 1,
//       //   height: 1,
//       // ),
//
//
//       decoration: BoxDecoration(
//
//         // shape: BoxShape.circle,
//
//         // image: DecorationImage(
//         //   image: NetworkImage('https://avatars.mds.yandex.net/i?id=13307b292d817cee7738ce6115de32b957c26b6e-10907882-images-thumbs&ref=rim&n=33&w=283&h=200'),
//         //   fit: BoxFit.cover,
//         // ),
//
//         gradient: LinearGradient(
//           colors: [Colors.green.withOpacity(0.8), Colors.red],
//           begin: Alignment.bottomCenter,
//           end: Alignment.topCenter,
//         ),
//
//
//         border: Border.all(color: Colors.white, width: 2),//граница контур
//         borderRadius: BorderRadius.circular(360),
//
//         boxShadow: [//тень
//           BoxShadow(
//             color: Colors.red.withOpacity(0.5),
//             spreadRadius: 5,
//             blurRadius: 85,
//             offset: Offset(-25, -35),
//           ),
//           BoxShadow(
//             color: Colors.green.withOpacity(0.5),
//             spreadRadius: 5,
//             blurRadius: 85,
//             offset: Offset(25, 35),
//           ),
//         ],
//       ),
//
//       transform: Matrix4.identity()
//       ..rotateZ(0.2),
//
//
//       transformAlignment: Alignment.bottomCenter,
//
//       child:
//       Text('Hello', textDirection: TextDirection.ltr,),
//       alignment: Alignment.bottomCenter,
//
//     );
//
//   }

