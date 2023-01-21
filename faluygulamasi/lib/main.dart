// import 'dart:math';
import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const Falci());
}

class Falci extends StatefulWidget {
  const Falci({Key? key}) : super(key: key);

  @override
  State<Falci> createState() => _FalciState();
}

int yanitlaR = 0;

class _FalciState extends State<Falci> {
  List<String> yanitlar = [
    'BİRİNİ SEÇ VE BAŞLA',
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

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xFFDBF227),
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: const Color(0xFFDBF227),
          elevation: 5,
          title: const Text(
            'FALCINIZ',
            style: TextStyle(
              fontFamily: 'Solitreo',
            ),
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 300,
                margin: const EdgeInsets.only(bottom: 1),
                child: Image.asset('assets/images/falcı.png'),
              ),
              const Text(
                'GÜNLÜK YORUM',
                style: TextStyle(
                  fontFamily: "Solitreo",
                  color: Colors.deepPurple,
                  fontSize: 20,
                ),
              ),
              const SizedBox(height: 5),
              Card(
                elevation: 5,
                margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 50),
                child: ListTile(
                  leading: Container(
                      width: 40, child: Image.asset('assets/images/kalp.jpg')),
                  title: const Text(
                    'Aşk Durumunuz:',
                    style: TextStyle(color: Colors.redAccent),
                  ),
                  onTap: () {
                    setState(() {
                      yanitlaR = Random().nextInt(5) + 1;
                    });
                  },
                ),
              ),
              Card(
                elevation: 5,
                margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 50),
                child: ListTile(
                  leading: Container(
                      width: 50, child: Image.asset('assets/images/para.png')),
                  title: const Text(
                    'Para Durumunuz',
                    style: TextStyle(
                      color: Colors.green,
                    ),
                  ),
                  onTap: () {
                    setState(() {
                      yanitlaR = Random().nextInt(5) + 6;
                    });
                  },
                ),
              ),
              Card(
                elevation: 5,
                margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 50),
                child: ListTile(
                  leading: Container(
                      width: 45,
                      child: Image.asset('assets/images/tavsiye.png')),
                  title: const Text(
                    'Tavsiye İster misin ?',
                    style: TextStyle(color: Colors.black),
                  ),
                  onTap: () {
                    setState(() {
                      yanitlaR = Random().nextInt(5) + 11;
                    });
                  },
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                height: 150,
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 5.0, horizontal: 20.0),
                  child: Text(
                    yanitlar[yanitlaR],
                    style: const TextStyle(
                      fontFamily: "Solitreo",
                      color: Colors.deepPurple,
                      fontSize: 22,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
