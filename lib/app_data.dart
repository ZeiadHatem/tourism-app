import 'package:tourism/Models/Category.dart';
import 'package:tourism/Models/Trips.dart';

const categories_data = const [

  Category(
      id: 'c1',
      title: 'Mountains',
      imageUrl:'https://images.unsplash.com/photo-1486870591958-9b9d0d1dda99?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=870&q=80'
  ),

  Category(
      id: 'c2',
      title: 'Lakes',
      imageUrl: 'https://images.unsplash.com/photo-1542667855206-7ab65607dd34?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1074&q=80'
  ),

  Category(
      id: 'c3',
      title: 'Beaches',
      imageUrl: 'https://images.unsplash.com/flagged/photo-1557899775-24a0957d3895?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1331&q=80'
  ),

  Category(
      id: 'c4',
      title: 'Deserts',
      imageUrl: 'https://images.unsplash.com/photo-1473580044384-7ba9967e16a0?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1170&q=80'
  ),

  Category(id: 'c5',
      title: 'Historic Cities',
      imageUrl: 'https://images.unsplash.com/photo-1542576329-818ff4ffda3f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1329&q=80'
  ),

  Category(
      id: 'c6',
      title: 'Other',
      imageUrl: 'https://images.unsplash.com/photo-1507281736509-c6289f1ea0f8?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1170&q=80'
  ),

];


 List<Trips> tripsData =  [
  Trips(
      id: 'm1',
      categories: ['c1'],
      title: 'Alps Mountain',
      imageurl: 'https://images.unsplash.com/photo-1655064028986-3cc62e4d1069?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=660&q=80',
      activites: [
        'Visiting archaeological sites',
        'Walking tour',
        'Visiting commercial centers for shopping',
        'Have lunch',
        'Enjoy the scenery'
      ],
      programs: [
        'Aliate, Set Do Usmood Tempor Uncaidediduntiot Laboure It Dollar Magna Aliquia',
        'Yesking Elite Set Do Usmod Tempor Uncaidediduntu Laborit At Dollar Magna Aliquia',
        'Lorem Ipsum Dollars at Dollars Magna Aliquia',
        'Lor de ausmod tempur uncaidedidiontiot laboure at dollar magna aliquia',
        'Lorem Ipsum Dollar Set Amit,Conceptor Adaiba Yesking Aliyete, Set Do Ayosmod Tempor Uncaidediduntu Laborit at Dollar Magna Aliqiwa',
        'Lorem Ipsum Dollar Set Amit , Tempur Uncaidediontuot Labori at Dollar Magna Aliqiwa'
      ],
      duration: 20,
      season: Season.winter,
      tripType: TripType.exploration,
      isInSummer: false,
      isInWinter: true,
      isForFamily: true
  ),

   Trips(
       id: 'm2',
       categories: ['c1'],
       title: 'Southern Mountains',
       imageurl: 'https://plus.unsplash.com/premium_photo-1661962862470-a03bcc2fb415?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1170&q=80',
       activites: [
         'Visiting archaeological sites',
         'Walking tour',
         'Visiting commercial centers for shopping',
         'Have lunch',
         'Enjoy the scenery'
       ],
       programs: [
         'Aliate, Set Do Usmood Tempor Uncaidediduntiot Laboure It Dollar Magna Aliquia',
         'Yesking Elite Set Do Usmod Tempor Uncaidediduntu Laborit At Dollar Magna Aliquia',
         'Lorem Ipsum Dollars at Dollars Magna Aliquia',
         'Lor de ausmod tempur uncaidedidiontiot laboure at dollar magna aliquia',
         'Lorem Ipsum Dollar Set Amit,Conceptor Adaiba Yesking Aliyete, Set Do Ayosmod Tempor Uncaidediduntu Laborit at Dollar Magna Aliqiwa',
         'Lorem Ipsum Dollar Set Amit , Tempur Uncaidediontuot Labori at Dollar Magna Aliqiwa'
       ],
       duration: 10,
       season: Season.winter,
       tripType: TripType.exploration,
       isInSummer: false,
       isInWinter: false,
       isForFamily: false
   ),

   Trips(
       id: 'm3',
       categories: ['c1'],
       title: 'High Mountains',
       imageurl: 'https://images.unsplash.com/photo-1572183967790-64cf01a04974?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1074&q=80',
       activites: [
         'Visiting archaeological sites',
         'Walking tour',
         'Visiting commercial centers for shopping',
         'Have lunch',
         'Enjoy the scenery'
       ],
       programs: [
         'Aliate, Set Do Usmood Tempor Uncaidediduntiot Laboure It Dollar Magna Aliquia',
         'Yesking Elite Set Do Usmod Tempor Uncaidediduntu Laborit At Dollar Magna Aliquia',
         'Lorem Ipsum Dollars at Dollars Magna Aliquia',
         'Lor de ausmod tempur uncaidedidiontiot laboure at dollar magna aliquia',
         'Lorem Ipsum Dollar Set Amit,Conceptor Adaiba Yesking Aliyete, Set Do Ayosmod Tempor Uncaidediduntu Laborit at Dollar Magna Aliqiwa',
         'Lorem Ipsum Dollar Set Amit , Tempur Uncaidediontuot Labori at Dollar Magna Aliqiwa'
       ],
       duration: 45,
       season: Season.winter,
       tripType: TripType.recovery,
       isInSummer: false,
       isInWinter: true,
       isForFamily: false
   ),

   Trips(id: 'm4',
       categories: [
         'c1',
         'c2'
       ],
       title: 'The Great Lake',
       imageurl: 'https://images.unsplash.com/photo-1536707014829-340b2d17bd54?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1203&q=80',
       activites: [
         'Visiting archaeological sites',
         'Walking tour',
         'Visiting commercial centers for shopping',
         'Have lunch',
         'Enjoy the scenery'
       ],
       programs: [
         'Aliate, Set Do Usmood Tempor Uncaidediduntiot Laboure It Dollar Magna Aliquia',
         'Yesking Elite Set Do Usmod Tempor Uncaidediduntu Laborit At Dollar Magna Aliquia',
         'Lorem Ipsum Dollars at Dollars Magna Aliquia',
         'Lor de ausmod tempur uncaidedidiontiot laboure at dollar magna aliquia',
         'Lorem Ipsum Dollar Set Amit,Conceptor Adaiba Yesking Aliyete, Set Do Ayosmod Tempor Uncaidediduntu Laborit at Dollar Magna Aliqiwa',
         'Lorem Ipsum Dollar Set Amit , Tempur Uncaidediontuot Labori at Dollar Magna Aliqiwa'
       ],
       duration: 60,
       season: Season.spring,
       tripType: TripType.activities,
       isInSummer: false,
       isInWinter: false,
       isForFamily: false
   ),


   Trips(id: 'm5',
       categories: [
         'c1',
         'c2'
       ],
       title: 'Minor lakes',
       imageurl: 'https://images.unsplash.com/photo-1545660190-750cfd47fdde?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1156&q=80',
       activites: [
         'Visiting archaeological sites',
         'Walking tour',
         'Visiting commercial centers for shopping',
         'Have lunch',
         'Enjoy the scenery'
       ],
       programs: [
         'Aliate, Set Do Usmood Tempor Uncaidediduntiot Laboure It Dollar Magna Aliquia',
         'Yesking Elite Set Do Usmod Tempor Uncaidediduntu Laborit At Dollar Magna Aliquia',
         'Lorem Ipsum Dollars at Dollars Magna Aliquia',
         'Lor de ausmod tempur uncaidedidiontiot laboure at dollar magna aliquia',
         'Lorem Ipsum Dollar Set Amit,Conceptor Adaiba Yesking Aliyete, Set Do Ayosmod Tempor Uncaidediduntu Laborit at Dollar Magna Aliqiwa',
         'Lorem Ipsum Dollar Set Amit , Tempur Uncaidediontuot Labori at Dollar Magna Aliqiwa'
       ],
       duration: 15,
       season: Season.winter,
       tripType: TripType.activities,
       isInSummer: true,
       isInWinter: true,
       isForFamily: false
   ),

   Trips(id: 'm6',
       categories: [
         'c2'
       ],
       title: 'Emerald Lake',
       imageurl: 'https://plus.unsplash.com/premium_photo-1674816304749-200d8d2b85a0?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1075&q=80',
       activites: [
         'Visiting archaeological sites',
         'Walking tour',
         'Visiting commercial centers for shopping',
         'Have lunch',
         'Enjoy the scenery'
       ],
       programs: [
         'Aliate, Set Do Usmood Tempor Uncaidediduntiot Laboure It Dollar Magna Aliquia',
         'Yesking Elite Set Do Usmod Tempor Uncaidediduntu Laborit At Dollar Magna Aliquia',
         'Lorem Ipsum Dollars at Dollars Magna Aliquia',
         'Lor de ausmod tempur uncaidedidiontiot laboure at dollar magna aliquia',
         'Lorem Ipsum Dollar Set Amit,Conceptor Adaiba Yesking Aliyete, Set Do Ayosmod Tempor Uncaidediduntu Laborit at Dollar Magna Aliqiwa',
         'Lorem Ipsum Dollar Set Amit , Tempur Uncaidediontuot Labori at Dollar Magna Aliqiwa'
       ],
       duration: 240,
       season: Season.summer,
       tripType: TripType.exploration,
       isInSummer: true,
       isInWinter: false,
       isForFamily: false
   ),

   Trips(
       id: 'm7',
       categories: [
         'c3'
       ],
       title: 'First beach',
       imageurl: 'https://images.unsplash.com/photo-1507525428034-b723cf961d3e?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1173&q=80',
       activites: [
         'Visiting archaeological sites',
         'Walking tour',
         'Visiting commercial centers for shopping',
         'Have lunch',
         'Enjoy the scenery'
       ],
       programs: [
         'Aliate, Set Do Usmood Tempor Uncaidediduntiot Laboure It Dollar Magna Aliquia',
         'Yesking Elite Set Do Usmod Tempor Uncaidediduntu Laborit At Dollar Magna Aliquia',
         'Lorem Ipsum Dollars at Dollars Magna Aliquia',
         'Lor de ausmod tempur uncaidedidiontiot laboure at dollar magna aliquia',
         'Lorem Ipsum Dollar Set Amit,Conceptor Adaiba Yesking Aliyete, Set Do Ayosmod Tempor Uncaidediduntu Laborit at Dollar Magna Aliqiwa',
         'Lorem Ipsum Dollar Set Amit , Tempur Uncaidediontuot Labori at Dollar Magna Aliqiwa'
       ],
       duration: 20,
       season: Season.winter,
       tripType: TripType.exploration,
       isInSummer: true,
       isInWinter: false,
       isForFamily: false
   ),

   Trips(
       id: 'm8',
       categories: [
         'c3'
       ],
       title: 'Big Beach',
       imageurl: 'https://images.unsplash.com/photo-1519046904884-53103b34b206?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1170&q=80',
       activites: [
         'Visiting archaeological sites',
         'Walking tour',
         'Visiting commercial centers for shopping',
         'Have lunch',
         'Enjoy the scenery'
       ],
       programs: [
         'Aliate, Set Do Usmood Tempor Uncaidediduntiot Laboure It Dollar Magna Aliquia',
         'Yesking Elite Set Do Usmod Tempor Uncaidediduntu Laborit At Dollar Magna Aliquia',
         'Lorem Ipsum Dollars at Dollars Magna Aliquia',
         'Lor de ausmod tempur uncaidedidiontiot laboure at dollar magna aliquia',
         'Lorem Ipsum Dollar Set Amit,Conceptor Adaiba Yesking Aliyete, Set Do Ayosmod Tempor Uncaidediduntu Laborit at Dollar Magna Aliqiwa',
         'Lorem Ipsum Dollar Set Amit , Tempur Uncaidediontuot Labori at Dollar Magna Aliqiwa'
       ],
       duration: 35,
       season: Season.spring,
       tripType: TripType.recovery,
       isInSummer: true,
       isInWinter: true,
       isForFamily: false
   ),

   Trips(
       id: 'm9',
       categories: [
         'c3'
       ],
       title: 'Little Beach',
       imageurl: 'https://images.unsplash.com/photo-1520942702018-0862200e6873?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1170&q=80',
       activites: [
         'Visiting archaeological sites',
         'Walking tour',
         'Visiting commercial centers for shopping',
         'Have lunch',
         'Enjoy the scenery'
       ],
       programs: [
         'Aliate, Set Do Usmood Tempor Uncaidediduntiot Laboure It Dollar Magna Aliquia',
         'Yesking Elite Set Do Usmod Tempor Uncaidediduntu Laborit At Dollar Magna Aliquia',
         'Lorem Ipsum Dollars at Dollars Magna Aliquia',
         'Lor de ausmod tempur uncaidedidiontiot laboure at dollar magna aliquia',
         'Lorem Ipsum Dollar Set Amit,Conceptor Adaiba Yesking Aliyete, Set Do Ayosmod Tempor Uncaidediduntu Laborit at Dollar Magna Aliqiwa',
         'Lorem Ipsum Dollar Set Amit , Tempur Uncaidediontuot Labori at Dollar Magna Aliqiwa'
       ],
       duration: 45,
       season: Season.summer,
       tripType: TripType.exploration,
       isInSummer: true,
       isInWinter: false,
       isForFamily: false
   ),

   Trips(
       id: 'm10',
       categories: [
         'c4'
       ],
       title: 'Sahara desert',
       imageurl: 'https://images.unsplash.com/photo-1509316785289-025f5b846b35?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1176&q=80',
       activites: [
         'Visiting archaeological sites',
         'Walking tour',
         'Visiting commercial centers for shopping',
         'Have lunch',
         'Enjoy the scenery'
       ],
       programs: [
         'Aliate, Set Do Usmood Tempor Uncaidediduntiot Laboure It Dollar Magna Aliquia',
         'Yesking Elite Set Do Usmod Tempor Uncaidediduntu Laborit At Dollar Magna Aliquia',
         'Lorem Ipsum Dollars at Dollars Magna Aliquia',
         'Lor de ausmod tempur uncaidedidiontiot laboure at dollar magna aliquia',
         'Lorem Ipsum Dollar Set Amit,Conceptor Adaiba Yesking Aliyete, Set Do Ayosmod Tempor Uncaidediduntu Laborit at Dollar Magna Aliqiwa',
         'Lorem Ipsum Dollar Set Amit , Tempur Uncaidediontuot Labori at Dollar Magna Aliqiwa'
       ],
       duration: 45,
       season: Season.winter,
       tripType: TripType.activities,
       isInSummer: true,
       isInWinter: true,
       isForFamily: true
   ),

   Trips(
       id: 'm11',
       categories: [
         'c4',
         'c1'
       ],
       title: 'Western Desert',
       imageurl: 'https://images.unsplash.com/photo-1547235001-d703406d3f17?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1174&q=80',
       activites: [
         'Visiting archaeological sites',
         'Walking tour',
         'Visiting commercial centers for shopping',
         'Have lunch',
         'Enjoy the scenery'
       ],
       programs: [
         'Aliate, Set Do Usmood Tempor Uncaidediduntiot Laboure It Dollar Magna Aliquia',
         'Yesking Elite Set Do Usmod Tempor Uncaidediduntu Laborit At Dollar Magna Aliquia',
         'Lorem Ipsum Dollars at Dollars Magna Aliquia',
         'Lor de ausmod tempur uncaidedidiontiot laboure at dollar magna aliquia',
         'Lorem Ipsum Dollar Set Amit,Conceptor Adaiba Yesking Aliyete, Set Do Ayosmod Tempor Uncaidediduntu Laborit at Dollar Magna Aliqiwa',
         'Lorem Ipsum Dollar Set Amit , Tempur Uncaidediontuot Labori at Dollar Magna Aliqiwa'
       ],
       duration: 30,
       season: Season.winter,
       tripType: TripType.activities,
       isInSummer: true,
       isInWinter: true,
       isForFamily: true
   ),

   Trips(
       id: 'm12',
       categories: [
         'c4',
       ],
       title: 'Sandy Desert',
       imageurl: 'https://plus.unsplash.com/premium_photo-1681149342564-8bebc9cc4d16?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1032&q=80',
       activites: [
         'Visiting archaeological sites',
         'Walking tour',
         'Visiting commercial centers for shopping',
         'Have lunch',
         'Enjoy the scenery'
       ],
       programs: [
         'Aliate, Set Do Usmood Tempor Uncaidediduntiot Laboure It Dollar Magna Aliquia',
         'Yesking Elite Set Do Usmod Tempor Uncaidediduntu Laborit At Dollar Magna Aliquia',
         'Lorem Ipsum Dollars at Dollars Magna Aliquia',
         'Lor de ausmod tempur uncaidedidiontiot laboure at dollar magna aliquia',
         'Lorem Ipsum Dollar Set Amit,Conceptor Adaiba Yesking Aliyete, Set Do Ayosmod Tempor Uncaidediduntu Laborit at Dollar Magna Aliqiwa',
         'Lorem Ipsum Dollar Set Amit , Tempur Uncaidediontuot Labori at Dollar Magna Aliqiwa'
       ],
       duration: 30,
       season: Season.winter,
       tripType: TripType.activities,
       isInSummer: true,
       isInWinter: true,
       isForFamily: true
   ),

   Trips(
       id: 'm13',
       categories: [
         'c5',
       ],
       title: 'The First City',
       imageurl: 'https://images.unsplash.com/photo-1612698093158-e07ac200d44e?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1170&q=80',
       activites: [
         'Visiting archaeological sites',
         'Walking tour',
         'Visiting commercial centers for shopping',
         'Have lunch',
         'Enjoy the scenery'
       ],
       programs: [
         'Aliate, Set Do Usmood Tempor Uncaidediduntiot Laboure It Dollar Magna Aliquia',
         'Yesking Elite Set Do Usmod Tempor Uncaidediduntu Laborit At Dollar Magna Aliquia',
         'Lorem Ipsum Dollars at Dollars Magna Aliquia',
         'Lor de ausmod tempur uncaidedidiontiot laboure at dollar magna aliquia',
         'Lorem Ipsum Dollar Set Amit,Conceptor Adaiba Yesking Aliyete, Set Do Ayosmod Tempor Uncaidediduntu Laborit at Dollar Magna Aliqiwa',
         'Lorem Ipsum Dollar Set Amit , Tempur Uncaidediontuot Labori at Dollar Magna Aliqiwa'
       ],
       duration: 30,
       season: Season.winter,
       tripType: TripType.activities,
       isInSummer: true,
       isInWinter: true,
       isForFamily: true
   ),

   Trips(
       id: 'm14',
       categories: [
         'c5',
       ],
       title: 'The Second City',
       imageurl: 'https://images.unsplash.com/photo-1495562569060-2eec283d3391?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1170&q=80',
       activites: [
         'Visiting archaeological sites',
         'Walking tour',
         'Visiting commercial centers for shopping',
         'Have lunch',
         'Enjoy the scenery'
       ],
       programs: [
         'Aliate, Set Do Usmood Tempor Uncaidediduntiot Laboure It Dollar Magna Aliquia',
         'Yesking Elite Set Do Usmod Tempor Uncaidediduntu Laborit At Dollar Magna Aliquia',
         'Lorem Ipsum Dollars at Dollars Magna Aliquia',
         'Lor de ausmod tempur uncaidedidiontiot laboure at dollar magna aliquia',
         'Lorem Ipsum Dollar Set Amit,Conceptor Adaiba Yesking Aliyete, Set Do Ayosmod Tempor Uncaidediduntu Laborit at Dollar Magna Aliqiwa',
         'Lorem Ipsum Dollar Set Amit , Tempur Uncaidediontuot Labori at Dollar Magna Aliqiwa'
       ],
       duration: 30,
       season: Season.winter,
       tripType: TripType.activities,
       isInSummer: true,
       isInWinter: true,
       isForFamily: true
   ),

   Trips(
       id: 'm15',
       categories: [
         'c5',
       ],
       title: 'old City',
       imageurl: 'https://images.unsplash.com/photo-1611146479742-12b6cdacfbab?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1112&q=80',
       activites: [
         'Visiting archaeological sites',
         'Walking tour',
         'Visiting commercial centers for shopping',
         'Have lunch',
         'Enjoy the scenery'
       ],
       programs: [
         'Aliate, Set Do Usmood Tempor Uncaidediduntiot Laboure It Dollar Magna Aliquia',
         'Yesking Elite Set Do Usmod Tempor Uncaidediduntu Laborit At Dollar Magna Aliquia',
         'Lorem Ipsum Dollars at Dollars Magna Aliquia',
         'Lor de ausmod tempur uncaidedidiontiot laboure at dollar magna aliquia',
         'Lorem Ipsum Dollar Set Amit,Conceptor Adaiba Yesking Aliyete, Set Do Ayosmod Tempor Uncaidediduntu Laborit at Dollar Magna Aliqiwa',
         'Lorem Ipsum Dollar Set Amit , Tempur Uncaidediontuot Labori at Dollar Magna Aliqiwa'
       ],
       duration: 30,
       season: Season.winter,
       tripType: TripType.activities,
       isInSummer: true,
       isInWinter: true,
       isForFamily: true
   ),

   Trips(
       id: 'm16',
       categories: [
         'c6',
       ],
       title: 'Snow sports',
       imageurl: 'https://images.unsplash.com/photo-1617939533073-6c94c709370c?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1172&q=80',
       activites: [
         'Visiting archaeological sites',
         'Walking tour',
         'Visiting commercial centers for shopping',
         'Have lunch',
         'Enjoy the scenery'
       ],
       programs: [
         'Aliate, Set Do Usmood Tempor Uncaidediduntiot Laboure It Dollar Magna Aliquia',
         'Yesking Elite Set Do Usmod Tempor Uncaidediduntu Laborit At Dollar Magna Aliquia',
         'Lorem Ipsum Dollars at Dollars Magna Aliquia',
         'Lor de ausmod tempur uncaidedidiontiot laboure at dollar magna aliquia',
         'Lorem Ipsum Dollar Set Amit,Conceptor Adaiba Yesking Aliyete, Set Do Ayosmod Tempor Uncaidediduntu Laborit at Dollar Magna Aliqiwa',
         'Lorem Ipsum Dollar Set Amit , Tempur Uncaidediontuot Labori at Dollar Magna Aliqiwa'
       ],
       duration: 30,
       season: Season.winter,
       tripType: TripType.activities,
       isInSummer: true,
       isInWinter: true,
       isForFamily: true
   ),

   Trips(
       id: 'm17',
       categories: [
         'c6',
         'c2'
       ],
       title: 'JetSki',
       imageurl: 'https://images.unsplash.com/photo-1583008585590-c4ed0010bed6?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1170&q=80',
       activites: [
         'Visiting archaeological sites',
         'Walking tour',
         'Visiting commercial centers for shopping',
         'Have lunch',
         'Enjoy the scenery'
       ],
       programs: [
         'Aliate, Set Do Usmood Tempor Uncaidediduntiot Laboure It Dollar Magna Aliquia',
         'Yesking Elite Set Do Usmod Tempor Uncaidediduntu Laborit At Dollar Magna Aliquia',
         'Lorem Ipsum Dollars at Dollars Magna Aliquia',
         'Lor de ausmod tempur uncaidedidiontiot laboure at dollar magna aliquia',
         'Lorem Ipsum Dollar Set Amit,Conceptor Adaiba Yesking Aliyete, Set Do Ayosmod Tempor Uncaidediduntu Laborit at Dollar Magna Aliqiwa',
         'Lorem Ipsum Dollar Set Amit , Tempur Uncaidediontuot Labori at Dollar Magna Aliqiwa'
       ],
       duration: 30,
       season: Season.winter,
       tripType: TripType.activities,
       isInSummer: true,
       isInWinter: true,
       isForFamily: true
   ),
];