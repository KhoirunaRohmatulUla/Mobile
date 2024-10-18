import 'package:flutter/material.dart';

class Detail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    final String destination = ModalRoute.of(context)!.settings.arguments as String;

    final Map<String, String> destinationImages = {
      'Bali': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSmLSYkCHs5BQb8yLa1p3fp44VmkD3wxfV_3w&s',
      'Singapura': 'https://awsimages.detik.net.id/community/media/visual/2019/10/28/c87df998-b8b6-4b29-a77f-7f169826c1dd_169.jpeg?w=600&q=90',
      'Paris': 'https://images.tokopedia.net/blog-tokopedia-com/uploads/2018/11/perancis-8-Fanpop.jpg',
    };

    final String imageUrl = destinationImages[destination] ?? 'https://awsimages.detik.net.id/community/media/visual/2019/10/28/c87df998-b8b6-4b29-a77f-7f169826c1dd_169.jpeg?w=600&q=90';

    return Scaffold(
      appBar: AppBar(
        title: Text(destination),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 250,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                ),
                image: DecorationImage(
                  image: NetworkImage(imageUrl),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                destination,
                style: Theme.of(context).textTheme.bodyLarge,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                'Jelajahi keindahan $destination. Tempat yang menarik untuk petualangan dan relaksasi.',
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 200, 238, 250),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                onPressed: () {},
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 20.0),
                  child: Text('Book Now', style: TextStyle(fontSize: 18)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
