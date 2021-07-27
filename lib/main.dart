import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(FalciApp());
}

class FalciApp extends StatelessWidget {
  const FalciApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: Theme.of(context).textTheme.apply(
              bodyColor: Colors.white,
              displayColor: Colors.white,
            ),
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

int yanitIndex = 0;

class _MyHomePageState extends State<MyHomePage> {
  List<String> yanitlar = [
    'Tıklayın və taleyinizə baxın',
    'Sevgi Falı: Bu gün sevgi və münasibət həyatınızda bir az daha diqqətli olmalısınız. Hər şeydə düzgün işlədiyinizə əminsinizmi? ',
    'Sevgi Falı: Sevgi və münasibət həyatınıza nəzarət etmək və birliyinizi istədiyiniz kimi yönləndirmək istəyə bilərsiniz. Bu istəyin balanslı bir əlaqəyə necə fayda gətirəcəyini düşünməlisiniz. ',
    'Sevgi Falı: Bu gün duyğularınızın bir az səhv olduğunu görə bilərsiniz. Gününüzü əvvəllər heç etmədiyiniz kimi başlamağa məcbur edən təbii bir elektrik hissi var. Ürəyiniz həmişə həqiqəti söyləyir. ',
    'Sevgi Falı: Duyğularınız tez-tez rasional düşüncələrinizi üstələyir və nəticədə dərin bir emosional qarışıqlıq yaranır. Çox məntiqli düşünərək ürəyinizə laqeyd yanaşmayın. Məqsədiniz ikisi arasında tarazlığı tapmaqdır. ',
    'Sevgi Falı: Emosional olaraq pis hiss etməyin, intuisiyanız güclüdür. Bu intuisiyalarla sevgilinizin hisslərini anlamağa çalışın. Bəzən yalnız əylənmək, istirahət etmək və birlikdə əylənmək lazımdır! ',
    'Maddiyyat Falı: Uzun müddətdir düşündüyünüz bəzi xərclər var, özünüzə bu gün həqiqətən nə qədər ehtiyacınız olduğunu soruşun və bəzilərini ləğv edin. Bu gün bir xeyriyyə təşkilatına kiçik bir ianə edin, daha yaxşı hiss edəcəksiniz. ',
    'Maddiyyat Falı: Nağd pul axınınızın balansını poza biləcək dövrlərə giririk, bu günlərdə mütləq masada oturmalı və büdcə hesablaması etməlisiniz, növbəti 3 ay üçün gəlir və xərc balansınızdan əmin olmadan hərəkət etməməlisiniz. '
    'Maddiyyat Falı: Bu gün başqalarına kömək, dəstək və xidmət hissinizin yüksək olduğu bir gün ola bilər, xeyriyyə və ianə işlərində iştirak edə bilərsiniz.',
    'Maddiyyat Falı: Özünə inamınız bu gün olduqca yüksəkdir, ancaq sizə çox yaxşı təsir edə bilməz, əlaqələriniz dəstəklərindən şübhələnə bilər. Sakit davranın, geri addım atın və pulunuzdan çox sağlamlığınıza fikir verin ',
    'Maddiyyat Falı: Bu dövrdə maliyyə qaynaqlarımızın detallarına diqqət yetirməlisiniz. Bundan əlavə, uzun müddət sizi maliyyə məsələləri və xərcləri ilə məşğul edən bir mövzuda qərar verə bilər, qərar verərkən yaxınlarınızdan və ya həyat yoldaşınızdan kömək istəyə bilərsiniz. ',
    'Tövsiyə: Bu gün maraqlı şəxsiyyətinizi vurğulayaraq insanlara sual verməkdən çəkinməyin',
    'Tövsiyə: Bu gün əvvəllər heç görmədiyiniz şeylərin daima orada olduğunu başa düşə bilərsiniz, sadəcə bir az daha diqqətli olmağa çalışın',
    'Tövsiyə: Bu gün ikitərəfli münasibətlərinizdə daha aktiv və səmimi olmağa çalışa bilərsiniz, daha diqqətlə dinləməyə və razı olduğunuz insanları sorğu-sual etməyə başlayın',
    'Tövsiyə: Yalnız bu gün işinizə diqqət yetirin, hər cür yayındırıcı və sosial mediadan qaçmaq sizi daha xoşbəxt hiss edə bilər',
    'Tövsiyə: Bu gün tək gəzin, uşaqlıqda dinlədiyiniz mahnıları açın və o vaxt oynadığınız oyunları təsəvvür edin'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purpleAccent,
      appBar: AppBar(
        backgroundColor: Colors.purple,
        centerTitle: true,
        title: Text(
          'Günün Falı',
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 150,
              margin: EdgeInsets.only(bottom: 20),
              child: Image.asset('assets/fal.png')),
            Card(
              margin: EdgeInsets.symmetric(horizontal: 40.0, vertical: 4.0),
              child: ListTile(
                leading: Icon(
                  Icons.favorite,
                  color: Colors.redAccent),
                title: Text(
                  'Sevgi Falı',
                  style: TextStyle(
                    color: Colors.redAccent,
                  ),
                ),
                onTap: (){
                  setState(() {
                    yanitIndex = Random().nextInt(5) + 1;
                  });
                },
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 4.0, horizontal: 40.0),
              child: ListTile(
                leading: Icon(Icons.shopping_cart, color: Colors.green),
                title: Text(
                  'Maddiyyat Falı',
                  style: TextStyle(
                    color: Colors.green,
                  ),
                ),
                onTap: (){
                  setState(() {
                    yanitIndex = Random().nextInt(5) + 6;
                  });
                },
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 4.0, horizontal: 40.0),
              child: ListTile(
                leading: Icon(
                    Icons.explore,
                  color: Colors.blue,
                ),
                title: Text(
                  'Tövsiyyələr',
                  style: TextStyle(
                    color: Colors.blue,
                  ),
                ),
                onTap: (){
                  setState(() {
                    yanitIndex = Random().nextInt(5) + 11;
                  });
                },
              ),
            ),

            Container(
              padding: EdgeInsets.symmetric(horizontal: 25),
              height: 150,
              width: double.infinity,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
                child: Text(
                  yanitlar
                  [yanitIndex],
                  style: TextStyle(
                    fontSize: 16,
                  ),
                  textAlign: TextAlign.center,


                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
