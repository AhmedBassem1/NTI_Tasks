import 'package:flutter/material.dart';
import '../../models/data.dart';
import '../../models/model.dart';
import '../widgets/RMCharacterCard.dart';

class RMCharactersScreen extends StatefulWidget {
  const RMCharactersScreen({super.key});

  @override
  State<RMCharactersScreen> createState() => _RMCharactersScreenState();
}

class _RMCharactersScreenState extends State<RMCharactersScreen> {
  List<RMCharacter> _characters = [];
  bool _loading = true;
  int _page = 1;

  @override
  void initState() {
    super.initState();
    _loadCharacters();
  }

  Future<void> _loadCharacters() async {
    setState(() => _loading = true);
    try {
      final chars = await fetchCharacters(page: _page);
      setState(() => _characters = chars);
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Error: $e')),
        );
      }
    } finally {
      if (mounted) setState(() => _loading = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        backgroundColor: Colors.blueGrey.shade900,
        title: const Text(
          'Rick & Morty Characters',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold ,color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: _loading
              ? const Center(child: CircularProgressIndicator())
              : GridView.builder(
            physics: const BouncingScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 14,
              mainAxisSpacing: 14,
              childAspectRatio: 0.72,
            ),
            itemCount: _characters.length,
            itemBuilder: (context, index) {
              return RMCharacterCard(character: _characters[index]);
            },
          ),
        ),
      ),
    );
  }
}
