class Choice {
  const Choice({required this.title, required this.icon});
  final String title;
  final String icon;
}

const List<Choice> choices = <Choice>[
  Choice(title: 'Bright Hitd', icon: 'assets/images/one.png'),
  Choice(title: 'Millions', icon: 'assets/images/two.jpg'),
  Choice(title: 'Family', icon: 'assets/images/three.jpg'),
  Choice(title: 'Millions', icon: 'assets/images/one.png'),
  Choice(title: 'Hindi', icon: 'assets/images/two.jpg'),
  Choice(title: 'Marathi', icon: 'assets/images/three.jpg'),
];

class Page1data {
  const Page1data(
      {required this.title, required this.subtitle, required this.music});
  final String title;
  final String subtitle;
  final String music;
}

const List<Page1data> page1 = <Page1data>[
  Page1data(
      title: "I'am Good(Blue)",
      subtitle: 'David Guetta & Bebe Rexis',
      music: 'assets/music/music1.mp3'),
  Page1data(
      title: 'Under the Influnce',
      subtitle: 'Charis Brown',
      music: 'assets/music/music2.mp3'),
  Page1data(
      title: 'Forgot me',
      subtitle: 'Lawis Capaid',
      music: 'assets/music/music3.mp3'),
];
