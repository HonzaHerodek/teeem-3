import 'package:flutter/material.dart';
import '../../../data/models/post_model.dart';
import '../../../data/models/trait_model.dart';
import '../../widgets/post_card.dart';

class TraitsTestScreen extends StatelessWidget {
  const TraitsTestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final testPost = PostModel(
      id: 'test_post',
      userId: 'test_user',
      username: 'Test User',
      userProfileImage: 'https://i.pravatar.cc/150?u=test_user',
      title: 'Test Post',
      description: 'This is a test post to verify traits implementation',
      userTraits: [
        TraitModel(
          id: 'exp',
          name: 'Experience',
          iconData: '0xe25a',
          value: '10+ years',
        ),
        TraitModel(
          id: 'spec',
          name: 'Specialty',
          iconData: '0xe4c6',
          value: 'Flutter Dev',
        ),
        TraitModel(
          id: 'cert',
          name: 'Certification',
          iconData: '0xe8e8',
          value: 'Google Dev',
        ),
        TraitModel(
          id: 'focus',
          name: 'Focus',
          iconData: '0xe3e7',
          value: 'Mobile Apps',
        ),
      ],
    );

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text('Traits Test'),
        backgroundColor: Colors.transparent,
      ),
      body: Center(
        child: PostCard(
          post: testPost,
          currentUserId: 'test_user',
          onLike: () {},
          onComment: () {},
          onShare: () {},
          onRate: (_) {},
        ),
      ),
    );
  }
}