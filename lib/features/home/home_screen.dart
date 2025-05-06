import 'package:chiva_experiences/features/home/domain/place.dart';
import 'package:chiva_experiences/features/home/home_general.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  final List<Map<String, dynamic>> places = [
    {
      "principalImageUrl":
          "https://www.medellin.travel/wp-content/uploads/2020/10/Botero-1024x1024.jpg",
      "secondaryImagesUrls": [
        "https://upload.wikimedia.org/wikipedia/commons/5/5a/Plaza_Botero_2019.jpg",
        "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/15/33/f8/df/plaza-botero.jpg",
        "https://media-cdn.tripadvisor.com/media/photo-s/1b/31/19/1d/plaza-botero.jpg",
      ],
      "name": "Plaza Botero",
      "promPrice": 0,
      "stars": 4.3,
    },
    {
      "principalImageUrl":
          "https://raw.githubusercontent.com/JhamG9/api-viaja/main/uploads/parque-explora-medellin/dinosaurios-parque-explora.webp",
      "secondaryImagesUrls": [
        "https://upload.wikimedia.org/wikipedia/commons/9/9e/Parque_Explora_-_Medell%C3%ADn.jpg",
        "https://www.parqueexplora.org/wp-content/uploads/2023/06/parque-explora-1.jpg",
        "https://media-cdn.tripadvisor.com/media/photo-s/0e/86/4e/6c/parque-explora.jpg",
      ],
      "name": "Parque Explora",
      "promPrice": 35000,
      "stars": 4.6,
    },
    {
      "principalImageUrl":
          "https://fundacionferrocarrildeantioquia.com/wp-content/uploads/2023/05/20.jpg",
      "secondaryImagesUrls": [
        "https://upload.wikimedia.org/wikipedia/commons/4/4b/Cerro_Nutibara_-_Pueblito_Paisa.jpg",
        "https://media-cdn.tripadvisor.com/media/photo-s/0b/35/2b/6e/cerro-nutibara.jpg",
        "https://www.colombia.co/wp-content/uploads/2017/03/cerro-nutibara.jpg",
      ],
      "name": "Cerro Nutibara",
      "promPrice": 5000,
      "stars": 4.2,
    },
    {
      "principalImageUrl":
          "https://centrodemedellin.co/imagenes/imagenesPagina/Cont_52_Museo%20De%20Antioquia/museoaAntppal2.jpg",
      "secondaryImagesUrls": [
        "https://upload.wikimedia.org/wikipedia/commons/7/7e/Museo_de_Antioquia_-_Plaza_Botero.jpg",
        "https://www.museodeantioquia.co/wp-content/uploads/2023/06/museo-de-antioquia-1.jpg",
        "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0a/4a/1a/2e/museo-de-antioquia.jpg",
      ],
      "name": "Museo de Antioquia",
      "promPrice": 18000,
      "stars": 4.4,
    },
    {
      "principalImageUrl":
          "https://img.atlasobscura.com/O6L8FP6tVPapgChafN6C_rLZ1roRKSW4zs1OWPVlu3o/rt:fit/h:400/q:81/sm:1/scp:1/ar:1/aHR0cHM6Ly9hdGxh/cy1kZXYuczMuYW1h/em9uYXdzLmNvbS91/cGxvYWRzL3BsYWNl/X2ltYWdlcy84Yjgx/YWI0OS1iNTVlLTQ4/N2ItYmEyMS0xNDBk/OWYxYWM0YWZmNTI0/NDA3NzM5Nzc4ZmU4/NjFfUGFycXVlLWRl/LWxhcy1MdWNlcy1N/ZWRlbGxpbi03Lmpw/Zw.webp",
      "secondaryImagesUrls": [
        "https://upload.wikimedia.org/wikipedia/commons/d/d5/Parque_de_las_Luces%2C_Medell%C3%ADn%2C_Colombia.jpg",
        "https://media-cdn.tripadvisor.com/media/photo-s/05/3f/f2/8f/parque-de-las-luces.jpg",
        "https://www.colombia.co/wp-content/uploads/2017/03/parque-de-las-luces.jpg",
      ],
      "name": "Parque de las Luces",
      "promPrice": 0,
      "stars": 4.0,
    },
    {
      "principalImageUrl":
          "https://estaticos.elcolombiano.com/binrepository/848x565/34c0/780d565/none/11101/JTTC/gcomuna-13-graffitour-74-jpg_42284849_20230501220002.jpg",
      "secondaryImagesUrls": [
        "https://upload.wikimedia.org/wikipedia/commons/9/9f/Comuna_13_-_Medell%C3%ADn.jpg",
        "https://media-cdn.tripadvisor.com/media/photo-s/18/30/9b/1b/comuna-13.jpg",
        "https://www.colombia.co/wp-content/uploads/2017/03/comuna-13.jpg",
      ],
      "name": "Comuna 13",
      "promPrice": 20000,
      "stars": 4.9,
    },
    {
      "principalImageUrl":
          "https://soyrustiko.com/cdn/shop/articles/parque-de-los-pies-descalzos-318810.jpg?v=1666654620&width=800",
      "secondaryImagesUrls": [
        "https://upload.wikimedia.org/wikipedia/commons/5/5b/Parque_de_los_Pies_Descalzos_-_Medell%C3%ADn.jpg",
        "https://media-cdn.tripadvisor.com/media/photo-s/05/3f/f2/90/parque-de-los-pies-descalzos.jpg",
        "https://www.colombia.co/wp-content/uploads/2017/03/parque-de-los-pies-descalzos.jpg",
      ],
      "name": "Parque de los Pies Descalzos",
      "promPrice": 0,
      "stars": 4.1,
    },
  ];

  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: kToolbarHeight),
      child: HomeInitial(
        places: places.map((place) => Place.fromJson(place)).toList(),
      ),
    );
  }
}
