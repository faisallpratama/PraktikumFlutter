import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:prak1/detail_screen.dart';
import 'package:prak1/list_item.dart';
import 'package:prak1/provider/done_tourism_provider.dart';
import 'package:provider/provider.dart';

import 'model/tourism_place.dart';

class TourismList extends StatefulWidget {
  const TourismList({Key? key}) : super(key: key);

  @override
  _TourismListState createState() => _TourismListState();
}

class _TourismListState extends State<TourismList> {
  final List<TourismPlace> tourismPlaceList = [
    TourismPlace(
      name: 'Surabaya Submarine Monument',
      location:
          'Jl. Pemuda No.39, Embong Kaliasin, Kec. Genteng, Kota SBY, Jawa Timur 60271',
      imageAsset: 'assets/images/submarine.jpg',
      imageNetwork: '',
      openDay: 'Open Everyday',
      openTime: '08:00 - 16:00',
      ticketPrice: 'Rp10.000,00',
      desc:
          'Monumen Kapal Selam, atau disingkat Monkasel, adalah sebuah museum kapal selam yang terdapat di Embong Kaliasin, Genteng, Surabaya. Terletak di pusat kota, monumen ini sebenarnya merupakan kapal selam KRI Pasopati 410, salah satu armada Angkatan Laut Republik Indonesia buatan Uni Soviet tahun 1952.',
      gallery: [
        'https://petualang.travelingyuk.com/unggah/kurasi/2019/02/Monkasel_2_9641.jpg',
        'https://petualang.travelingyuk.com/unggah/kurasi/2019/02/Monkasel_3_8763.jpg',
        'https://petualang.travelingyuk.com/unggah/kurasi/2019/02/Monkasel_4_9925.jpg'
      ],
    ),
    TourismPlace(
      name: 'Kelenteng Sanggar Agung',
      location:
          'Jl. Sukolilo No.100, Sukolilo Baru, Kec. Bulak, Kota SBY, Jawa Timur 60122',
      imageAsset: 'assets/images/kelenteng.jpg',
      imageNetwork: '',
      openDay: 'Open Everyday',
      openTime: '07:00 - 20:00',
      ticketPrice: 'Rp10.000,00',
      desc:
          'Kelenteng Sanggar Agung atau Klenteng Hong San Tang adalah sebuah klenteng di Kota Surabaya. Alamatnya berada di Jalan Sukolilo Nomor 100, Pantai Ria Kenjeran, Surabaya. Kuil ini, selain menjadi tempat ibadah bagi pemeluk Tridharma, juga menjadi tempat tujuan wisata bagi para wisatawan.',
      gallery: [
        'https://www.surabayarollcake.com/wp-content/uploads/2019/01/Klenteng-Sanggar-Agung-Surabaya.jpg',
        'https://www.surabayarollcake.com/wp-content/uploads/2019/01/Lokasi-Klenteng-Sanggar-Agung-Surabaya.jpg',
        'https://www.surabayarollcake.com/wp-content/uploads/2019/01/Fungsi-Klenteng-Sanggar-Agung-Surabaya.jpg',
        'https://www.surabayarollcake.com/wp-content/uploads/2019/01/Patung-Maha-Brahma-Empat-Muka.jpg'
      ],
    ),
    TourismPlace(
      name: 'House of Sampoerna',
      location:
          'Taman Sampoerna No.6, Krembangan Utara, Kec. Pabean Cantikan, Kota SBY, Jawa Timur 60163',
      imageAsset: 'assets/images/sampoerna.jpg',
      imageNetwork: '',
      openDay: 'Open Everyday',
      openTime: '09:00 - 18:00',
      ticketPrice: 'Free',
      desc:
          'House of Sampoerna adalah sebuah museum tembakau dan markas besar Sampoerna yang terletak di Surabaya. Gaya arsitektur dari bangunan utamanya yang dipengaruhi oleh gaya kolonial Belanda dibangun pada 1862 dan sekarang menjadi situs sejarah.',
      gallery: [
        'https://upload.wikimedia.org/wikipedia/commons/f/f6/House_of_Sampoerna_Mei_2015.jpg',
        'https://www.surabayarollcake.com/wp-content/uploads/2018/10/Museum-House-Of-Sampoerna-Surabaya.jpg',
        'https://bappeko.surabaya.go.id/ecobis/upload/wisata/sejarah/detail_16_02.jpg'
      ],
    ),
    TourismPlace(
      name: 'Tugu Pahlawan',
      location: 'Alun-alun contong',
      imageAsset: 'assets/images/pahlawan.jpg',
      imageNetwork: '',
      openDay: 'Open Everyday',
      openTime: '08:00 - 16:00',
      ticketPrice: 'Rp5.000,00',
      desc:
          'Tugu Pahlawan adalah sebuah monumen yang menjadi markah tanah Kota Surabaya. Tinggi monumen ini adalah 41,15 meter dan berbentuk lingga atau paku terbalik. Tubuh monumen berbentuk lengkungan-lengkungan sebanyak 10 lengkungan, dan terbagi atas 11 ruas.',
      gallery: [
        'https://www.surabayarollcake.com/wp-content/uploads/2019/01/Monumen-Tugu-Pahlawan-Surabaya.jpg',
        'https://asset.kompas.com/crops/xvrNh5VPIWgmEOr2rybwci3kwtU=/0x0:986x657/750x500/data/photo/2020/01/13/5e1bed0edcc32.jpg'
      ],
    ),
    TourismPlace(
      name: 'Patung Suro dan Boyo',
      location:
          'Jl. Diponegoro No.1-B, Darmo, Kec. Wonokromo, Kota SBY, Jawa Timur 60241',
      imageAsset: 'assets/images/surabaya.jpg',
      imageNetwork: '',
      openDay: 'Open Everyday',
      openTime: '00:00 - 23:59',
      ticketPrice: 'Free',
      desc:
          'Patung Sura dan Baya adalah sebuah patung yang merupakan lambang kota Surabaya. Patung ini berada di depan Kebun Binatang Surabaya. Patung ini terdiri atas dua hewan ini yang menjadi inspirasi nama kota Surabaya: ikan sura dan baya.',
      gallery: [
        'https://i.misteraladin.com/blog/2019/07/08064709/Featured-image-patung-tetenger-Surabaya.jpg',
        'https://cdn-2.tstatic.net/surabaya/foto/bank/images/patung-suro-dan-boyo-berdiri-megah-di-taman-suroboyo-kenjeran-selasa-2852019.jpg'
      ],
    ),
    TourismPlace(
      name: 'Kebun Binatang Surabaya',
      location:
          'Jl. Setail No.1, Darmo, Kec. Wonokromo, Kota SBY, Jawa Timur 60241',
      imageAsset: '',
      imageNetwork:
          'https://travelspromo.com/wp-content/uploads/2019/07/Zebra-di-Kebun-Binatang-Surabaya-KBS-Anindya-Azizah-Rahma.jpg',
      openDay: 'Open Everyday',
      openTime: '08:00 - 16:00',
      ticketPrice: 'Rp15.000,00',
      desc:
          'Kebun Binatang Surabaya adalah salah satu kebun binatang yang populer di Indonesia dan terletak di Surabaya. KBS merupakan kebun binatang yang pernah terlengkap se-Asia Tenggara, di dalamnya terdapat lebih dari 981 spesies satwa yang berbeda yang terdiri lebih dari 2.806 binatang.',
      gallery: [
        'https://cdn-asset.jawapos.com/wp-content/uploads/2020/11/PSX_20201102_075110-640x480.jpg',
        'https://cdn-asset.jawapos.com/wp-content/uploads/2020/11/PSX_20201102_075133-640x480.jpg',
        'https://cdn-asset.jawapos.com/wp-content/uploads/2020/11/PSX_20201102_075154-640x480.jpg'
      ],
    ),
    TourismPlace(
      name: 'Jalan Tunjungan',
      location: 'Surabaya',
      imageAsset: 'assets/images/josephin.JPG',
      imageNetwork: '',
      openDay: 'Open Everyday',
      openTime: '00:00 - 23:59',
      ticketPrice: 'Free',
      desc:
          'Jalan ini adalah jalan penghubung yang sekali menjadi daerah pertokoan utama di Surabaya. Jalan tersebut menghubungkan derah perumahan disebelah Selatan-Timur dan Barat Surabaya (Gubeng, Darmo, Ketabang dan Sawahan), dengan daerah perdagangan yang ada disekitar Jembatan Merah.',
      gallery: [
        'https://selalu.id/content/uploads/202112/a20ddfc16e443fc6af009c0227876695.jpg',
        'https://jejakpiknik.com/wp-content/uploads/2017/12/bb-1-2.jpg',
        'https://kastara.id/wp-content/uploads/2018/02/1518246922954749310975.jpg'
      ],
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        final TourismPlace place = tourismPlaceList[index];
        return InkWell(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return DetailScreen(place: place);
            }));
          },
          child: Consumer<DoneTourismProvider>(
            builder: (context, DoneTourismProvider data, widget) {
              return ListItem(
                place: place,
                isDone: data.doneTourismPlaceList.contains(place),
                onCheckboxClick: (bool? value) {
                  setState(() {
                    if (value != null) {
                      value
                          ? data.doneTourismPlaceList.add(place)
                          : data.doneTourismPlaceList.remove(place);
                    }
                  });
                },
              );
            },
          ),
        );
      },
      itemCount: tourismPlaceList.length,
    );
  }
}
