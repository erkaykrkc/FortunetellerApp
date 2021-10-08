import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.purple[300],
          appBar: AppBar(
            backgroundColor: Colors.purple[400],
            centerTitle: true,
            title: Text(
              'Günün Falı',
              style: GoogleFonts.abel(
                color: Colors.white,
                fontSize: 25,
              ),
            ),
          ),
          body: HomePage(),
        ),
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

List<String> yanitlar = [
  'TIKLA FALIN GELSİN',
  'AŞK: Bugün, aşk ve ilişki hayatınızda biraz daha temkinli olmalısın. Onu her konuda doğru anlamda anladığından da emin misin?',
  'AŞK: Aşk ve ilişki hayatınızda hakimiyeti eline almak ve birlikteliğinizi dilediğiniz gibi yönlendirmek isteyebilirsin. Bu isteğinin denge içerisindeki bir ilişkiye ne şekilde fayda edeceğini gözden geçirmelisin.',
  'AŞK: Duygularınızın bugün biraz düzensiz olduğunu görebilirsiniz. Güne, daha önce hiç yapmadığınız bir şekilde başlamanızı sağlayan doğal bir elektrik hissi var. Kalbiniz her zaman doğruyu söyler.',
  'AŞK: Duygularınız çoğu zaman rasyonel düşüncelerinize galip geliyor ve sonunda derinlerde duyguların beslediği bir karmaşa ortaya çıkıyor. Çok da mantıklı düşünerek kalbinizi görmezden gelmeyin. Amacınız bu ikisi arasında dengeyi bulmak.',
  'AŞK: Duygusal olarak kötü hissetmeyin, sezgileriniz güçlü durumda. Sevgilinizin hislerini bu sezgiler ile anlamaya çalışın. Bazen sadece eğlenmek gerekir, siz de rahatlayın ve birlikte eğlenin!',
  'PARA: Kafanıza uzun süredir koyduğunuz bazı harcamalar var, bugün kendinize bunlara gerçekten ne kadar ihtiyacınız olduğunu sorun ve bir kısmını iptal edin. Bugün bir hayır kurumuna küçücük bir bağış yapın, kendinizi çok daha iyi hissedeceksiniz.',
  'PARA: Nakit akışınızın dengesini bozabilecek dönemlere giriyoruz, bu aralar kesinlikle masa başına oturup bir bütçe hesabı yapmalısınız, önümüzdeki 3 ay boyunca gelir gider dengenizden emin olmadan hareket etmeyin',
  'PARA: Bugün, başkalarına yardım, destek ve hizmet duygunuzun yüksek olduğu bir gün olabilir, hayır, bağış işlerinde yer alabilirsiniz.',
  'PARA: Bugün kendinize güveniniz oldukça yüksek, ancak bu size pek fayda getirmeyebilir, bağlantılarınız size verdikleri destekten şüphelenebilirler. Sakin hareket edin, bir adım geri durun, ve paradan çok sağlığınızla ilgilenin.',
  'PARA: Para kaynaklarımız ile ilgili detaylar bu dönem dikkat etmelisiniz. Ayrıca maddi konularda ve harcamalarda uzun süredir sizi meşgul eden bir konuda karara varabilirsiniz, yakınlarınızdan veya eşinizden karar alırken yardım isteyin.',
  'TAVSİYE: Bugün meraklı kişiliğini ön plana çıkartarak insanlara soru sormaktan çekinme ',
  'TAVSİYE: Bugün daha önce hiç fark etmediğin şeylerin hep orada olduğunu fark edebilirsin, sadece biraz daha dikkatli olmaya çalış',
  'TAVSİYE: Bugün ikili ilişkilerinde daha aktif ve verici olmaya çalışabilirsin, aynı fikirde olduğun insanları daha dikkatli dinlemeye ve sorgulamaya başla',
  'TAVSİYE: Bugün sadece işine odaklan, dikkatini dağıtacak her türlü nesne ve sosyal medyadan uzaklaşmak kendini daha mutlu hissettirebilir',
  'TAVSİYE: Bugün tek başına biraz yürüyüş yap, çocukluğunda dinlediğin şarkıları aç ve o zamanlar oynadığın oyunları hayal et'
];

int yanitIndex = 0;

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          margin: EdgeInsets.only(
            bottom: 20,
          ),
          width: 150,
          child: Image.asset('assets/images/falci.png'),
        ),
        Card(
          margin: EdgeInsets.symmetric(vertical: 10, horizontal: 40),
          child: Padding(
            padding: const EdgeInsets.all(2.0),
            child: ListTile(
              leading: Icon(Icons.favorite, color: Colors.red),
              title: Text(
                'AŞK DURUMU',
                style: GoogleFonts.roboto(
                  color: Colors.red,
                ),
              ),
              onTap: () {
                setState(() {
                  yanitIndex = Random().nextInt(5) + 1;
                });
              },
            ),
          ),
        ),
        Card(
          margin: EdgeInsets.symmetric(vertical: 10, horizontal: 40),
          child: Padding(
            padding: const EdgeInsets.all(2.0),
            child: ListTile(
              leading: Icon(
                Icons.add_shopping_cart,
                color: Colors.green,
              ),
              title: Text(
                'PARA DURUMU',
                style: GoogleFonts.roboto(
                  color: Colors.green,
                ),
              ),
              onTap: () {
                setState(() {
                  yanitIndex = Random().nextInt(5) + 6;
                });
              },
            ),
          ),
        ),
        Card(
          margin: EdgeInsets.symmetric(vertical: 10, horizontal: 40),
          child: ListTile(
              leading: Icon(
                Icons.bookmark,
                color: Colors.blue,
              ),
              title: Text(
                'GÜNLÜK TAVSİYE',
                style: GoogleFonts.roboto(
                  color: Colors.blue,
                ),
              ),
              onTap: () {
                setState(() {
                  yanitIndex = Random().nextInt(5) + 11;
                });
              }),
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 25),
          height: 150,
          width: double.infinity,
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
            child: Text(
              yanitlar[yanitIndex],
              style: TextStyle(color: Colors.white, fontSize: 15),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ],
    ));
  }
}
