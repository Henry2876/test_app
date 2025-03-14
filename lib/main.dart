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






import 'dart:math'; // Для вычисления диагонали экрана.
import 'package:flutter/material.dart'; // Основной пакет Flutter для UI.

void main() {
  runApp(const MyApp()); // Запуск приложения.
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Оборачиваем всё приложение в MaterialApp.
    return MaterialApp(
      title: 'Пример приложения', // Название приложения.
      debugShowCheckedModeBanner: false, // Убираем баннер "debug".
      theme: ThemeData.dark(), // Тема приложения.
      home: const ScrollViewExample(), // Задаем главный экран.
    );
  }
}

class ScrollViewExample extends StatelessWidget {
  const ScrollViewExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Получаем размеры экрана.
    final screenSize = MediaQuery.of(context).size;
    final diagonal = sqrt(pow(screenSize.width, 2) + pow(screenSize.height, 2));

    // Проверяем, является ли экран маленьким.
    final isSmallScreen = diagonal < 5.5 * 160;

    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 50,
        backgroundColor: Colors.black,
        title: const Text(
          "___ScrollView___",
          style: TextStyle(
            color: Colors.yellow,
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () => debugPrint('Меню открыто'),
          icon: const Icon(Icons.menu),
        ),
        actions: [
          IconButton(
            onPressed: () => debugPrint("Поиск активирован"),
            icon: const Icon(Icons.search),
          ),
        ],
        iconTheme: const IconThemeData(color: Colors.yellow, size: 30),
      ),

      // Прокручиваемый контент
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Генерация текста (контента)
            for (int i = 1; i <= 50; i++)
              Center(
                child: Text(
                  "Контент $i",
                  style: const TextStyle(fontSize: 18),
                ),
              ),
            // Кнопка внизу контента
            isSmallScreen ? Padding(
              padding: EdgeInsets.only(
                top: 20, // Отступ сверху.
                bottom: isSmallScreen ? 20 : 0, // Для маленьких экранов.
              ),
              child: ElevatedButton(
                onPressed: () => debugPrint('Кнопка нажата!'),
                onLongPress: () => debugPrint("Долгое нажатие на кнопку"),
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.yellow,
                  backgroundColor: Colors.black,
                ),
                child: const Icon(
                    Icons.ads_click),



              ),
            ):Scaffold(
              floatingActionButton: FloatingActionButton(

                  onPressed: (){
                    debugPrint('Кнопка нажата');
                  },
                child: Icon(Icons.ads_click),
                foregroundColor: Colors.yellow,
                backgroundColor: Colors.black,

              ),
            ),

          ],
        ),
      ),
    );
  }
}















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

