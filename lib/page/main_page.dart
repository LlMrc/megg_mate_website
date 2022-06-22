import 'package:flutter/material.dart';
import 'package:megg_mate_website/animation/animation_fade.dart';
import 'package:megg_mate_website/animation/fadding.dart';
import 'package:seo_renderer/renderers/text_renderer/text_renderer_vm.dart';

import '../widget/custom_text.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  Size get screenSize => MediaQuery.of(context).size;
  final double fontsize = 24;
  @override
  Widget build(BuildContext context) {
    String title =
        '''Cinq raisons pour lesquelles le smartphone Tesla ne pourra pas concurrencer ios et android.
    ''';
    String paragraphe =
        '''Un smartphone n'est pas qu'un gadget électronique, un smartphone est composé de
  différents éléments assurant son bon fonctionnement, des interfaces logiques des algorithmes c'est tout un écosystème.''';
    return Material(
        child: SingleChildScrollView(
      child: Container(
        width: screenSize.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 300,
              child: Image.network('https://p0.ssl.qhimgs4.com/t0147ca242f2b0a2c77.jpg')),
            TitleText(
              text: title,
            ),
            Paragraphe(text: paragraphe, style: TextStyle(fontSize: fontsize)),
             Paragraphe(
                text:
                    ''' Pour qu'un Smartphone ait sa place dans le marché il doit considérer ces éléments essentiel:''',
                style: TextStyle(fontSize: fontsize)),
            const DotText(
              text: 'Avoir un design réussi',
            ),
            const DotText(text: 'Avoir son propre écosystème'),
            const DotText(
              text: 'Propose des fonctionnalités exclusives',
            ),
            const DotText(
              text: 'Autonomie',
            ),
            const DotText(
              text: 'Être une bête de marketing',
            ),
             Paragraphe(
                text:
                    '''Le Tesla Phone remplit toutes les conditions pour être une grande marque. Son atout majeur est que ses abonnés auront un accès permanent à l'internet n'importe où,  grâce à son réseau satellitaire starlink.  Imaginez un équipage échoué au fond de l'océan totalement coupé du monde.  Avec un smartphone tesla il pourra alerter les secours une en quelques secondes.''', style: TextStyle(fontSize: fontsize)),
            const CustomText(
                text:
                    '''Alors pourquoi disons nous que Tesla ne réussira pas face au géant android et ios?''',
                    style: TextStyle(color: Color.fromARGB(255, 20, 11, 122), fontSize: 24, fontWeight: FontWeight.w500),),
            TitleText(
                text: 'Conception réussite',
                style: Theme.of(context)
                    .textTheme
                    .headline3!
                    .copyWith(color: const Color.fromARGB(255, 134, 20, 113))),
             Paragraphe(
                text:
                    '''Un bon design joue un rôle important pour vous faire vendre et établir une image crédible et professionnelle. Tesla ne rate jamais l'occasion de fabriquer des produits cools, il est plutôt  bien positionné sur ce point. Par contre, ça ne vaut pas grand-chose puisque tous ses concurrents potentiels le sont aussi. Après tout, c'est le choix des consommateurs qui compte.''',
                style: TextStyle(fontSize: fontsize)),
               SizedBox(
                height: 200,
                child: AnimationTransition(delay: 800,
                child: Image.network('https://th.bing.com/th/id/OIP.QmzZAxSZGJ0ykHb9Bo_hJwHaKX?pid=ImgDet&rs=1'))),
             TextRenderer(
               child: Paragraphe(
                  text:
                      '''Avec l'expérience et une certaine maîtrise du marché, tous les fabricants de smartphone innovent constamment. Cela étant dit, le principal facteur de réussite reste son écosystème.''',
                  style: TextStyle(fontSize: fontsize)),
             ),
            TextRenderer(
              child: TitleText(
                  text: 'Ecosystème',
                  style: Theme.of(context)
                      .textTheme
                      .headline3!
                      .copyWith(color: const Color.fromARGB(255, 134, 20, 113))),
            ),
             TextRenderer(
               child: Paragraphe(
                  text:
                      '''Vous achetez un produit Apple et, quand vous en achetez un autre, il fonctionne avec une telle facilité  comme si tous les produits d'Apple n'étaient qu'un. Il est si facile de passer d'un produit à un autre. 
                      Je me demande s'il est possible d'abandonner l'écosystème si séduisant d'Apple. Google détient aussi un écosystème très bien fait mais pas  au niveau de celui d'Apple. Notons que ces deux compagnies ont leur propre système d'exploitation.  Cela nous amène à nous poser quelques questions:  est-ce que Tesla aura son propre  système d'exploitation? 
             Un smartphone est presque inutile sans son marché d'application, cela étant dit, qu'une communauté de développeurs est cruciale pour sa réussite.  Tesla aura besoin d'une communauté de développeurs pour faire tourner son système d'exploitation.  Android compte environ 500 mille membres dans sa communauté et Apple plus de 350 mille. Comment convaincre des millions de développeurs de créer des applications pour Tesla.
             Encore faudrait-il qu'ils sachent quel langage de programmation adopter.''',
                  style: TextStyle(fontSize: fontsize)),
             ),
            TitleText(
                text: 'Fonctionnalités exclusive',
                style: Theme.of(context)
                    .textTheme
                    .headline3!
                    .copyWith(color: const Color.fromARGB(255, 134, 20, 113))),
             TextRenderer(
               child: Paragraphe(
                  text:
                      '''Avec son réseau satellitaire Starlink Tesla va surclasser ses concurrents mais pas pour  longtemps?  L'entreprise de Mountain View envisage d'investir entre 1 et plus de 3 milliards de dollars dans une flotte de satellites afin de couvrir les régions les plus reculées du globe où les infrastructures terrestres de communication ne sont pas, ou mal déployées. Amazon travaille sur son projet Kuiper et Facebook aussi qui ont des projets similaires. Bien que Tesla soit déjà en avance, les autres compagnies ne se feront plus attendre.''',style: TextStyle(fontSize: fontsize)),
             ),
            TextRenderer(
              child: TitleText(
                  text: 'Autonomie',
                  style: Theme.of(context)
                      .textTheme
                      .headline3!
                      .copyWith(color: const Color.fromARGB(255, 134, 20, 113))),
            ),
            FadeAnimation(
              delay: 1000,
              child: SizedBox(
                height: 300,
                child: Image.network('https://st3.depositphotos.com/1007168/14192/v/950/depositphotos_141923036-stock-illustration-battery-cartoon-mascot-character-pointing.jpg')),
            ),
             Paragraphe(
                text:
                    '''L'autonomie des smartphone fait partie des critères à prendre en compte avant de passer par la production

Vu que Tesla est l'un des meilleure et plus grande compagnie  de batterie électrique au monde, on pourrait penser qu'il n'aura aucun mal à dépasser ses concurrents, mais bon, prenons l'exemple des voitures électriques. Tandis que Tesla est le plus grand constructeur de voitures électrique au monde, la version Eqxx de Mercedes détient le record d'autonomie, elle a parcouru plus de 1000 km avec une seule recharge. Tout ça pour vous dire que la technologie électrique est en pleine évolution, Toute les entreprise se jettent corps et âme dans cette transition et personne ne peut prétendre en détenir l'exclusivité.
Et  en plus, vu la taille des smartphones, il est quasiment impossible qu'une batterie smartphone dépasse les 5000 mAh. Ce seuil est en train d'être atteint par de plus en plus de marques.
''',
                style: TextStyle(fontSize: fontsize)),
            TextRenderer(
              child: TitleText(
                  text: 'Être une bêtes de marketing',
                  style: Theme.of(context)
                      .textTheme
                      .headline3!
                      .copyWith(color: const Color.fromARGB(255, 134, 20, 113))),
            ),
             TextRenderer(
               child: Paragraphe(
                  text:
                      '''Le moteur de recherche  de Google draine environ 98 % des recherches sur le web. 
                      On peut carrément parler de monopole. 92 % du chiffre d'affaires de Google relève de ses recettes publicitaires.''',
                  style: TextStyle(fontSize: fontsize)),
             ),
             Paragraphe(
                text:
                    '''Apple soigne le design de ces produits, et met généralement cela en avant dans sa communication... Le marketing d'Apple est un marketing spécifique, proche du marketing du luxe. On peut constater que les publicités sont très épurées, très simples, très évocatrices et que le produit en lui-même est montré sous toutes ses coutures comme un objet de mode. La marque américaine joue volontairement avec des stocks réduits pour favoriser l'attente et le désir. En effet, à chaque lancement de nouveau produit, une semaine de vente suffit à vider les stocks et créer de la frustration chez ceux qui sont arrivés trop tard.''',
                style: TextStyle(fontSize: fontsize)),
            
             TextRenderer(
               child: Paragraphe(
                  text:
                      '''Les acheteurs de Tesla  sont des fans inconditionnels de la marque et ce sont eux qui en assurent la promotion. Le constructeur se contente quant à lui d'animer ces réseaux via internet et, à l'occasion, de susciter l'intérêt des médias. Bienvenue dans l'ère de l'infotainment. »''',
                  style: TextStyle(fontSize: fontsize)),
             ),
            const CustomText(
                text:
                    '''On peut dire que chacun a sa stratégie de marketing et n'ont rien à prouver .
'''),
             const TextRenderer(
               child: TitleText(
                text:
                    '''En conclusion le smartphone tesla sera un très beau smartphone qui susciterait beaucoup d'enthousiasme comme lorsque Steve jobs dévoilait le premier smartphone il y 15 ans.
                    
                     Dans le domaine de la téléphonie, la technologie change trop vite pour qu'une nouvelle entreprise prétend la révolutionner.
             ''',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
                         ),
             )
          ],
        ),
      ),
    ));
  }
}
