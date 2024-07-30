class ProjectUtils {
  final String image;
  final String title;
  final String subtitle;
  final String? androidLink;

  ProjectUtils({
    required this.image,
    required this.title,
    required this.subtitle,
    this.androidLink,
  });
}

// // ###############
// // HOBBY PROJECTS
// List<ProjectUtils> hobbyProjectUtils = [
//   ProjectUtils(
//     image: 'assets/images/admin_event_pro_img.jpg',
//     title: 'Admin Event Pro',
//     subtitle:
//         'App is an event management platform for entrepreneurs to showcase their services and vendors to clients.',
//     androidLink: 'https://www.amazon.com/dp/B0CTXVT897/ref=apps_sf_sta',
//   ),
//   ProjectUtils(
//     image: 'assets/projects/02.png',
//     title: 'English Dictionary App',
//     subtitle:
//         'This is a dictionary application for English learners to easily look up word definitions.',
//     androidLink:
//         'https://play.google.com/store/apps/details?id=com.shohatech.eduza_eng_dictionary',
//   ),
//   ProjectUtils(
//     image: 'assets/projects/03.png',
//     title: 'Pocket Dictionary',
//     subtitle:
//         'This is a word memorising app to save and play your own words as quizes',
//     androidLink:
//         'https://play.google.com/store/apps/details?id=com.shohruhak.eng_pocket_dictionary',
//   ),
//   ProjectUtils(
//     image: 'assets/projects/04.png',
//     title: 'Tasbeeh Counter',
//     subtitle:
//         'This is a simple dzikr counter app for muslims with persistent storage',
//     androidLink:
//         'https://play.google.com/store/apps/details?id=com.shohatech.tasbeeh',
//   ),
// ];

// ###############
// WORK PROJECTS
List<ProjectUtils> workProjectUtils = [
  ProjectUtils(
    image: 'assets/images/admin_event_pro_img.jpg',
    title: 'Admin Event Pro',
    subtitle:
        'App is an event management platform for entrepreneurs to showcase their services and vendors to clients.',
    androidLink: 'https://www.amazon.com/dp/B0CTXVT897/ref=apps_sf_sta',
  ),
  ProjectUtils(
    image: 'assets/images/event_master.jpg',
    title: 'Event Master App',
    subtitle:
        'This app allows users to book events based on their favorite management company.',
    androidLink: 'https://www.amazon.com/dp/B0CTXVT897/ref=apps_sf_sta',
  ),
  ProjectUtils(
    image: 'assets/images/fittrack.jpg',
    title: 'Fittrack App',
    subtitle:
        'This is a fitness application for trainers to manage their clients and workout plans efficiently.',
    androidLink: 'https://www.amazon.com/dp/B0CTXVT897/ref=apps_sf_sta',
  ),
];
