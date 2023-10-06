import 'package:flutter/material.dart';
import 'package:travelin/place.dart';
import 'package:travelin/detail_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController _searchController = TextEditingController();
  bool _isSearching = false;
  List<Place> _searchResults = [];

  @override
  void initState() {
    super.initState();

    _searchController.addListener(() {
      if (_searchController.text.isEmpty) {
        setState(() {
          _isSearching = false;
          _searchResults.clear();
        });
      } else {
        setState(() {
          _isSearching = true;
          _searchResults = places
              .where((place) =>
                  place.place
                      .toLowerCase()
                      .contains(_searchController.text.toLowerCase()) ||
                  place.region
                      .toLowerCase()
                      .contains(_searchController.text.toLowerCase()))
              .toList();
        });
      }
    });
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).requestFocus(FocusNode());
      },
      child: Scaffold(
        body: ListView(
          padding: const EdgeInsets.all(16.0),
          children: [
            const Row(
              children: [
                Spacer(),
                CircleAvatar(
                  radius: 30,
                  backgroundImage: NetworkImage(
                      'https://media.discordapp.net/attachments/1088112941523542048/1153710831482179726/WMD5M52LJFBEBIHNEEABHVB6LA.png?width=1170&height=702'),
                ),
              ],
            ),
            const Text('Hai,', style: TextStyle(fontSize: 26)),
            const Text('Mau',
                style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold)),
            const Text('Liburan',
                style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold)),
            const Text('Kemana Nih?',
                style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold)),
            const SizedBox(height: 16.0),
            TextField(
              controller: _searchController,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50.0),
                ),
                labelText: 'Cari tempat...',
                prefixIcon: const Icon(Icons.search),
              ),
            ),
            const SizedBox(height: 16.0),
            _isSearching ? _buildSearchResults() : _buildDefaultView(),
          ],
        ),
      ),
    );
  }

  Widget _buildSearchResults() {
    return Column(
      children: _searchResults.map((place) {
        return _buildPlaceItem(place);
      }).toList(),
    );
  }

  Widget _buildDefaultView() {
    return Column(
      children: [
        const Align(
          alignment: Alignment.centerLeft,
          child: Text('Rekomendasi',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
        ),
        SizedBox(
          height: 220,
          child: _buildRecommendations(),
        ),
        const SizedBox(height: 16.0),
        const Align(
          alignment: Alignment.centerLeft,
          child: Text('Trending',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
        ),
        ...places.map((place) {
          return _buildPlaceItem(place);
        }).toList(),
      ],
    );
  }

  Widget _buildRecommendations() {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: places.where((place) => place.isRekomendasi).length,
      itemBuilder: (context, index) {
        final place =
            places.where((place) => place.isRekomendasi).toList()[index];
        return _buildHorizontalPlaceItem(place);
      },
    );
  }

  Widget _buildHorizontalPlaceItem(Place place) {
    return Padding(
      padding: const EdgeInsets.only(right: 16.0),
      child: GestureDetector(
        onTap: () {
          FocusScope.of(context).requestFocus(FocusNode());
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => DetailScreen(place: place),
            ),
          );
        },
        child: Stack(
          alignment: Alignment.bottomLeft,
          children: [
            SizedBox(
              width: 150,
              height: 200,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.network(
                  place.mainPhoto,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(place.place,
                      style: const TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold)),
                  Text(place.region,
                      style: const TextStyle(color: Colors.white)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildPlaceItem(Place place) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0, top: 5.0),
      child: GestureDetector(
        onTap: () {
          FocusScope.of(context).requestFocus(FocusNode());
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => DetailScreen(place: place),
            ),
          );
        },
        child: Stack(
          alignment: Alignment.bottomLeft,
          children: [
            SizedBox(
              width: double.infinity,
              height: 100,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.network(
                  place.mainPhoto,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(place.place,
                      style: const TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold)),
                  Text(place.region,
                      style: const TextStyle(color: Colors.white)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
