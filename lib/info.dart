import 'package:flutter/material.dart';

const info = [
  {
    'name': 'Rabbil Hasan',
    'message': 'Bye! 👋',
    'time': '3:53 pm',
    'profilePic':
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQU8ViFfeNbJGt1W3D3966tkH0CqxNxIvoWcw&s',
  },
  {
    'name': 'Hasin Hayder',
    'message': 'Hello, whats up',
    'time': '6/17/24',
    'profilePic':
    'https://scontent.fcgp36-1.fna.fbcdn.net/v/t39.30808-1/440030150_10160445493824633_9209251469881098861_n.jpg?stp=c0.0.200.200a_dst-jpg_p200x200&_nc_cat=106&ccb=1-7&_nc_sid=5f2048&_nc_eui2=AeE-rLangkLIZwUxT4ZJ-YwXlDan5xFV6D2UNqfnEVXoPfg8b1afIo7WkejfVlMMpE5DaR6iiMnCTRqkbGkb87mJ&_nc_ohc=z9Y6QBvWNdIQ7kNvgF2WcMB&_nc_ht=scontent.fcgp36-1.fna&oh=00_AYDUGfH-WfPK-TiLJ2MDB3D839u53lcqXwepgI1VwP0OxQ&oe=667B26DD'  },
  {
    'name': 'Ayan Hossain',
    'time': '6/17/24',
    'message': 'Okk Bye.',
    'profilePic': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRyHC9h4miHDT7SeZIs03UdztEnbNELc9GkxQ&s'
  },
  {
    'name': 'Rafat J.M.',
    'message': 'Hello, I want to sleep.',
    'time': '6/16/24',
    'profilePic':
        'https://media.licdn.com/dms/image/C5603AQEn4-ImoYVGoQ/profile-displayphoto-shrink_800_800/0/1625048455523?e=1723680000&v=beta&t=ogjlmKCEmTgIPvjVSmD4zjcDaFp4B0At1OT-9m7mPyc',
  },
  {
    'name': 'Sumit Saha',
    'message': 'Call me, have some work',
    'time': '6/14/24',
    'profilePic':
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ6MQh7douD48jrmi5LS9OPdnXPA9LJYMtFhw&s'
  },
  {
    'name': 'Jhankar Mahbub',
    'message': 'Hey Nadim! What are you...',
    'time': '6/14/24',
    'profilePic':
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSD-_MILXn5-tMGuL53zC9yiswl3WtRwE-koQ&s'
  },
  {
    'name': 'Abbu',
    'time': '6/13/24',
    'message': 'https://www.youtube...',
    'profilePic':
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTM49M1hAcFgjIDgiu-obvuKex9QN7GEhJns2IRUK66M2ymxNM8DS_BfGrd6NQBENLM-EU&usqp=CAU'
  },
  {
    'name': 'Abdur Rakib',
    'message': 'Yo!!!!! Long time, no see!?',
    'time': '6/13/24',
    'profilePic':
        'https://media.licdn.com/dms/image/D5603AQE-wWsjuSc4bA/profile-displayphoto-shrink_200_200/0/1703761380159?e=2147483647&v=beta&t=-P7aXupzYIYOAcTeRVkhzOjGOjbM_liwlEq08siPtR8',
  },
  {
    'name': 'Zaheed Sabur',
    'message': 'Thanks!',
    'time': '6/13/24',
    'profilePic':
        'https://media.licdn.com/dms/image/D4E03AQFcu1aYRRKKyA/profile-displayphoto-shrink_200_200/0/1674996319635?e=2147483647&v=beta&t=V9Al-orW-dkk58owCFbPmNu-67em9p9FR7ycMTz2Ft4',
  },
  {
    'name': 'Abdullah Al Mamun',
    'message': 'I am from International Olym...',
    'time': '6/13/24',
    'profilePic': 'https://avatars.githubusercontent.com/u/5027395?v=4',
  },
  {
    'name': 'Ammu',
    'time': '6/11/24',
    'message': 'Voice call',
    'profilePic':
    'https://static.vecteezy.com/system/resources/previews/009/749/653/original/mother-woman-profile-mascot-illustration-female-avatar-icon-cartoon-girl-head-face-business-user-logo-free-vector.jpg',
  },
  {
    'name': 'Yamin Faruq',
    'message': 'Great work',
    'time': '6/11 /24',
    'profilePic':
    'https://img.freepik.com/free-photo/portrait-young-man-talking-phone-walking-street_231208-2764.jpg',
  },
];

const user = [
  { "Name" : "Nadim",
    "profilePic":
    "https://media.licdn.com/dms/image/D4D03AQEvVkH1qtK-xA/profile-displayphoto-shrink_800_800/0/1718945039811?e=1724284800&v=beta&t=Il87PW4PG-W4MHIZlbojMSWVTp-EsLF_791auDEheUM"
  }
];

const messages = [
  {
    "isMe": false,
    "text": "Hey, how's your programming going?",
    "time": "10:00 am"
  },
  {
    "isMe": true,
    "text": "It's going well. Just finished a new project. You?",
    "time": "11:00 am"
  },
  {"isMe": false, "text": "I'm good too!", "time": "11:01 am"},
  {
    "isMe": false,
    "text":
        "Just wanted to catch up, it's been a while since we discussed code.",
    "time": "11:01 am"
  },
  {
    "isMe": true,
    "text": "Absolutely, let's chat about it!",
    "time": "11:03 am"
  },
  {
    "isMe": false,
    "text": "Guess what? I tried a new framework today!",
    "time": "11:04 am"
  },
  {"isMe": true, "text": "Really? Which framework?", "time": "11:05 am"},
  {
    "isMe": false,
    "text": "I tried out Flutter for mobile development.",
    "time": "11:06 am"
  },
  {"isMe": true, "text": "That sounds awesome!", "time": "11:15 am"},
  {"isMe": false, "text": "Thanks!", "time": "11:17 am"},
  {
    "isMe": false,
    "text": "Did you check out the GitHub repo I shared?",
    "time": "11:16 am"
  },
  {
    "isMe": true,
    "text": "Yes, your code looks really clean!",
    "time": "11:17 am"
  },
  {
    "isMe": false,
    "text": "Cool, did you like the implementation?",
    "time": "11:18 am"
  },
  {"isMe": true, "text": "I loved it, man!", "time": "11:19 am"},
  {"isMe": false, "text": "Wow! Thanks a lot!", "time": "11:20 am"},
  {
    "isMe": false,
    "text": "Next time, we should pair program.",
    "time": "11:21 am"
  },
  {
    "isMe": true,
    "text": "For sure! Let's schedule something.",
    "time": "11:22 am"
  },
  {"isMe": false, "text": "How about this weekend?", "time": "11:23 am"},
  {"isMe": true, "text": "Sounds perfect. I'll be there!", "time": "11:24 am"},
  {
    "isMe": false,
    "text": "Awesome, looking forward to it!",
    "time": "11:25 am"
  },
  {"isMe": true, "text": "Me too! It's been too long.", "time": "11:26 am"},
  {
    "isMe": false,
    "text": "Yeah, we need to catch up on our projects.",
    "time": "11:27 am"
  },
  {"isMe": true, "text": "Absolutely! See you then!", "time": "11:28 am"},
  {"isMe": false, "text": "Bye for now!", "time": "11:29 am"},
  {"isMe": true, "text": "Bye! 👋", "time": "11:30 am"}
];

final List<Map<String, String>> channels = [
  {'name': 'Manchester City', 'profilePic': 'https://rb.gy/svhcv4'},
  {
    'name': 'WhatsApp',
    'profilePic':
        'https://img.freepik.com/premium-vector/whatsapp-icon-design_23-2147918673.jpg',
  },
  {'name': 'Meta', 'profilePic': 'https://rb.gy/6js7fi'},
  {
    'name': 'Shakira',
    'profilePic':
        'https://rb.gy/cwkyo5',
  },
  {
    'name': 'Prothom Alo',
    'profilePic':
        'https://rb.gy/a1r9r3',
  },
  {
    'name': 'National Geographic',
    'profilePic':
        'https://shorturl.at/wry1d',
  },
  {
    'name': 'CNN',
    'profilePic':
        'https://shorturl.at/HaC4f',
  },
  {
    'name': 'BBC News',
    'profilePic':
        'https://shorturl.at/k1VBC',
  },
  {
    'name': 'The New York Times',
    'profilePic':
        'https://shorturl.at/IOM7e',
  },
  {
    'name': 'Spotify',
    'profilePic':
        'https://developer.spotify.com/images/guidelines/design/icon3@2x.png',
  },
  {
    'name': 'Amazon',
    'profilePic':
        'https://i.pinimg.com/736x/0a/06/60/0a06600cc3cedeb49280b54114c88ce6.jpg',
  },
  {
    'name': 'Google',
    'profilePic':
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTFFUTi1RsVDFSupmzDUJ5I3ZHBtwz043rbHQ&s',
  },
  {
    'name': 'Microsoft',
    'profilePic':
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTBN37lH-lwbT69XZxcEG_S6ZN4bj5XSN7ylQ37bU9ET8fPXJYRjgXCqyizU2i8Jqf9-v8&usqp=CAU',
  },
  {
    'name': 'Apple',
    'profilePic':
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTCeSTT3Dtrm4FT_mecUmW0ks0Uml6MDDtqiA&s',
  },
  {
    'name': 'Tesla',
    'profilePic':
        'https://cdn.logojoy.com/wp-content/uploads/20240110153809/Black-tesla-logo-600x600.png',
  },
  {
    'name': 'Facebook',
    'profilePic':
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcREhIStQW6CVwkxfySAEk7m-ixijfzEEnZs-w&s',
  },
  {
    'name': 'Instagram',
    'profilePic':
        'https://img.freepik.com/free-vector/instagram-background-gradient-colors_23-2147823814.jpg?t=st=1718376750~exp=1718380350~hmac=1018bc9cf67cd6d9f50632313b9c7dc101f2d3bc50e6276ae516b9bef8b79e2c',
  },
  {
    'name': 'LinkedIn',
    'profilePic':
        'https://upload.wikimedia.org/wikipedia/commons/thumb/c/ca/LinkedIn_logo_initials.png/480px-LinkedIn_logo_initials.png',
  },
  {
    'name': 'Twitter',
    'profilePic':
        'https://upload.wikimedia.org/wikipedia/commons/thumb/b/b7/X_logo.jpg/1200px-X_logo.jpg',
  },
];


const calls = [
  {
    'name': 'Ammu',
    'date': 'Today, 10:01 AM',
    'icon': Icons.arrow_upward,
    'profilePic':
    'https://static.vecteezy.com/system/resources/previews/009/749/653/original/mother-woman-profile-mascot-illustration-female-avatar-icon-cartoon-girl-head-face-business-user-logo-free-vector.jpg',
  },
  {
    'name': 'Hasin Hayder',
    'date': 'June 17, 4:38 PM',
    'icon': Icons.arrow_downward,
    'profilePic':
    'https://scontent.fcgp36-1.fna.fbcdn.net/v/t39.30808-1/440030150_10160445493824633_9209251469881098861_n.jpg?stp=c0.0.200.200a_dst-jpg_p200x200&_nc_cat=106&ccb=1-7&_nc_sid=5f2048&_nc_eui2=AeE-rLangkLIZwUxT4ZJ-YwXlDan5xFV6D2UNqfnEVXoPfg8b1afIo7WkejfVlMMpE5DaR6iiMnCTRqkbGkb87mJ&_nc_ohc=z9Y6QBvWNdIQ7kNvgF2WcMB&_nc_ht=scontent.fcgp36-1.fna&oh=00_AYDUGfH-WfPK-TiLJ2MDB3D839u53lcqXwepgI1VwP0OxQ&oe=667B26DD'
  },
  {
    'name': 'Ayan Hossain',
    'date': 'June 17, 11:08 AM',
    'icon': Icons.arrow_upward,
    'profilePic': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRyHC9h4miHDT7SeZIs03UdztEnbNELc9GkxQ&s'
  },
  {
    'name': 'Abbu',
    'date': 'June 16, 8:05 AM',
    'icon': Icons.arrow_downward,
    'profilePic':
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTM49M1hAcFgjIDgiu-obvuKex9QN7GEhJns2IRUK66M2ymxNM8DS_BfGrd6NQBENLM-EU&usqp=CAU'
  },
  {
    'name': 'Rabbil Hasan',
    'date': 'June 15, 10:01 PM',
    'icon': Icons.arrow_upward,
    'profilePic':
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQU8ViFfeNbJGt1W3D3966tkH0CqxNxIvoWcw&s',
  },
  {
    'name': 'Rabbil Hasan',
    'date': 'June 15, 9:58 PM',
    'icon': Icons.arrow_downward,
    'profilePic':
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQU8ViFfeNbJGt1W3D3966tkH0CqxNxIvoWcw&s',
  },
  {
    'name': 'Rabbil Hasan',
    'date': 'June 15, 9:50 PM',
    'icon': Icons.arrow_downward,
    'profilePic':
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQU8ViFfeNbJGt1W3D3966tkH0CqxNxIvoWcw&s',
  },
  {
    'name': 'Yamin Faruq',
    'date': 'June 15, 11:17 AM',
    'icon': Icons.arrow_downward,
    'profilePic':
    'https://img.freepik.com/free-photo/portrait-young-man-talking-phone-walking-street_231208-2764.jpg',
  },
  {
    'name': 'Ammu',
    'date': 'June 13, 3:45 PM',
    'icon': Icons.arrow_upward,
    'profilePic':
    'https://static.vecteezy.com/system/resources/previews/009/749/653/original/mother-woman-profile-mascot-illustration-female-avatar-icon-cartoon-girl-head-face-business-user-logo-free-vector.jpg',
  },
  {
    'name': 'Rafat J.M.',
    'date': 'June 10, 8:33 AM',
    'icon': Icons.arrow_upward,
    'profilePic':
    'https://media.licdn.com/dms/image/C5603AQEn4-ImoYVGoQ/profile-displayphoto-shrink_800_800/0/1625048455523?e=1723680000&v=beta&t=ogjlmKCEmTgIPvjVSmD4zjcDaFp4B0At1OT-9m7mPyc',
  },
  {
    'name': 'Yamin Faruq',
    'date': 'June 07, 6:55 PM',
    'icon': Icons.arrow_downward,
    'profilePic':
    'https://img.freepik.com/free-photo/portrait-young-man-talking-phone-walking-street_231208-2764.jpg',
  },
];