class NewsObj {
  final String category;
  final String title;
  final String description;

  NewsObj({
    required this.category,
    required this.title,
    required this.description
  });
}

final List newsData = [
  NewsObj(category: 'Sport', title: 'Aliquam scelerisque dapibus', description: 'Donec hendrerit mauris purus, ut pulvinar sapien aliquam ac'),
  NewsObj(category: 'Economy', title: 'Pellentesque pellentesque', description: 'Donec hendrerit mauris purus, ut pulvinar sapien aliquam ac'),
  NewsObj(category: 'Sport', title: 'Curabitur at velit', description: 'Donec hendrerit mauris purus, ut pulvinar sapien aliquam ac'),
  NewsObj(category: 'Politics', title: 'Pellentesque scelerisque', description: 'Donec hendrerit mauris purus, ut pulvinar sapien aliquam ac'),
  NewsObj(category: 'Gaming', title: 'Curabitur eu elementum orci', description: 'Donec hendrerit mauris purus, ut pulvinar sapien aliquam ac'),
  NewsObj(category: 'Gaming', title: 'Donec blandit turpis ', description: 'Donec hendrerit mauris purus, ut pulvinar sapien aliquam ac'),
  NewsObj(category: 'Sport', title: 'Quisque placerat vitae', description: 'Donec hendrerit mauris purus, ut pulvinar sapien aliquam ac'),
];