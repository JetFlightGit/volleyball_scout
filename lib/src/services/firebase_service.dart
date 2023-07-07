// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:volleyball_scout/src/features/players/data/player.dart';

// class FirebaseService {
//   final CollectionReference playersCollection =
//       FirebaseFirestore.instance.collection('players');

//   Future<void> createPlayer(Player player) async {
//     try {
//       await playersCollection.add({
//         'name': player.name,
//         'position': player.position,
//         'games': player.games,
//       });
//     } catch (error) {
//       print('Error creating player document: $error');
//     }
//   }

//   // Add more Firestore operations as needed (e.g., updatePlayer, deletePlayer)
// }
