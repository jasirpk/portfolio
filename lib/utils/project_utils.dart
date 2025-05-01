class ProjectUtils {
  final String image;
  final String title;
  final String subtitle;
  final String? androidLink;
  final String? gitHubLink;

  ProjectUtils({
    required this.image,
    required this.title,
    required this.subtitle,
    this.androidLink,
    this.gitHubLink
  });
}

// WORK PROJECTS
List<ProjectUtils> workProjectUtils = [
  ProjectUtils(
    image: 'assets/images/admin_event_pro_img.jpg',
    title: 'Admin Event Pro',
    subtitle:'App is an event management platform for entrepreneurs to showcase their services and vendors to clients.',
    androidLink: 'https://www.amazon.com/gp/product/B0DC3KH2M8',
    gitHubLink: 'https://github.com/jasirpk/Admin-Event-Pro',
  
  ),
  ProjectUtils(
    image: 'assets/images/event_master.jpg',
    title: 'Event Master',
    subtitle:
        'This app allows users to book events based on their favorite management company.',
    androidLink: 'https://www.amazon.com/gp/product/B0DC59TJDZ',
    gitHubLink: 'https://github.com/jasirpk/Event-Master'
  ),
  ProjectUtils(
    image: 'assets/images/fittrack.jpg',
    title: 'Fittrack App',
    subtitle:
        'This is a fitness application for trainers to manage their clients and workout plans efficiently.',
    androidLink: 'https://www.amazon.com/dp/B0CTXVT897/ref=apps_sf_sta',
    gitHubLink: 'http://github.com/jasirpk/fittrack'
  ),
    ProjectUtils(
    image: 'assets/images/awafi_mill.jpg',
    title: 'Awafi Mill',
    subtitle:
        'Awafil Mill is an eCommerce mobile app developed for Awafi Mill Company to sell premium Gulf products.',
        androidLink: '',
    gitHubLink: 'https://github.com/jasirpk/awafi-mill-app'
  ),
    ProjectUtils(
    image: 'assets/images/fittrack.jpg',
    title: 'Awafi Mill',
    subtitle:
        'This is a fitness application for trainers to manage their clients and workout plans efficiently.',
    androidLink: 'https://www.amazon.com/dp/B0CTXVT897/ref=apps_sf_sta',
    gitHubLink: 'http://github.com/jasirpk/fittrack'
  ),
];
