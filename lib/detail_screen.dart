import 'package:flutter/material.dart';
import 'package:travelin/place.dart';

class DetailScreen extends StatelessWidget {
  final Place place;

  const DetailScreen({Key? key, required this.place}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    width: 335,
                    height: 335,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(22),
                      color: const Color(0xffd9d9d9),
                    ),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20.0),
                    child: Image.network(
                      place.mainPhoto,
                      width: 536,
                      height: 392,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    top: 10,
                    left: 10,
                    child: FloatingActionButton(
                      backgroundColor: Colors.grey.withOpacity(0.5),
                      child: const Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                      ),
                      onPressed: () => Navigator.pop(context),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              const Text(
                "Tentang",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: Text(
                  place.about,
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                "Galeri",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: SizedBox(
                  height: 135,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: place.photos.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: EdgeInsets.only(
                            right: (index < place.photos.length - 1) ? 10 : 0),
                        child: GestureDetector(
                          onTap: () =>
                              _showImageDialog(context, place.photos[index]),
                          child: Container(
                            width: 125,
                            height: 125,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25),
                              image: DecorationImage(
                                image: NetworkImage(place.photos[index]),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

void _showImageDialog(BuildContext context, String imageUrl) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return GestureDetector(
        onTap: () {
          Navigator.of(context)
              .pop(); // Klik di luar atau di gambar untuk kembali
        },
        child: Dialog(
          insetPadding: EdgeInsets.all(10.0), // padding dari edge
          backgroundColor: Colors.transparent,
          child: Stack(
            children: <Widget>[
              Center(
                child: Image.network(
                    imageUrl), // Tampilkan gambar dalam ukuran penuh
              ),
              Positioned(
                top: 10,
                left: 10,
                child: FloatingActionButton(
                  backgroundColor: Colors.grey.withOpacity(0.5),
                  child: const Icon(
                    Icons.close,
                    color: Colors.white,
                  ),
                  onPressed: () => Navigator.of(context).pop(),
                ),
              )
            ],
          ),
        ),
      );
    },
  );
}
