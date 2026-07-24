import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../../screens/auth/splash_screen.dart';
import '../../screens/auth/onboarding_screen.dart';
import '../../screens/auth/login_screen.dart';
import '../../screens/auth/register_screen.dart';
import '../../screens/auth/forgot_password_screen.dart';
import '../../screens/auth/reset_password_screen.dart';
import '../../screens/auth/verify_email_screen.dart';
import '../../screens/home/home_screen.dart';
import '../../screens/story/story_details_screen.dart';
import '../../screens/reader/reading_screen.dart';
import '../../screens/search/search_screen.dart';
import '../../screens/profile/user_profile_screen.dart';
import '../../screens/profile/author_profile_screen.dart';
import '../../screens/categories/categories_screen.dart';
import '../../screens/library/library_screen.dart';
import '../../screens/author/author_dashboard_screen.dart';
import '../../screens/author/upload_story_screen.dart';
import '../../screens/author/chapter_editor_screen.dart';
import '../../screens/premium/premium_screen.dart';
import '../../screens/wallet/wallet_screen.dart';
import '../../screens/settings/settings_screen.dart';
import '../../screens/community/community_screen.dart';

final appRouterProvider = Provider<GoRouter>((ref) {
  return GoRouter(
    initialLocation: '/splash',
    routes: [
      // Auth Routes
      GoRoute(
        path: '/splash',
        name: 'splash',
        builder: (context, state) => const SplashScreen(),
      ),
      GoRoute(
        path: '/onboarding',
        name: 'onboarding',
        builder: (context, state) => const OnboardingScreen(),
      ),
      GoRoute(
        path: '/login',
        name: 'login',
        builder: (context, state) => const LoginScreen(),
      ),
      GoRoute(
        path: '/register',
        name: 'register',
        builder: (context, state) => const RegisterScreen(),
      ),
      GoRoute(
        path: '/forgot-password',
        name: 'forgot_password',
        builder: (context, state) => const ForgotPasswordScreen(),
      ),
      GoRoute(
        path: '/reset-password/:token',
        name: 'reset_password',
        builder: (context, state) => ResetPasswordScreen(
          token: state.pathParameters['token'] ?? '',
        ),
      ),
      GoRoute(
        path: '/verify-email',
        name: 'verify_email',
        builder: (context, state) => const VerifyEmailScreen(),
      ),

      // Main Routes
      GoRoute(
        path: '/home',
        name: 'home',
        builder: (context, state) => const HomeScreen(),
      ),
      GoRoute(
        path: '/search',
        name: 'search',
        builder: (context, state) => const SearchScreen(),
      ),
      GoRoute(
        path: '/categories',
        name: 'categories',
        builder: (context, state) => const CategoriesScreen(),
      ),
      GoRoute(
        path: '/library',
        name: 'library',
        builder: (context, state) => const LibraryScreen(),
      ),

      // Story Routes
      GoRoute(
        path: '/story/:id',
        name: 'story_details',
        builder: (context, state) => StoryDetailsScreen(
          storyId: state.pathParameters['id'] ?? '',
        ),
      ),
      GoRoute(
        path: '/read/:id',
        name: 'reading',
        builder: (context, state) => ReadingScreen(
          storyId: state.pathParameters['id'] ?? '',
        ),
      ),

      // Profile Routes
      GoRoute(
        path: '/profile/:userId',
        name: 'user_profile',
        builder: (context, state) => UserProfileScreen(
          userId: state.pathParameters['userId'] ?? '',
        ),
      ),
      GoRoute(
        path: '/author/:authorId',
        name: 'author_profile',
        builder: (context, state) => AuthorProfileScreen(
          authorId: state.pathParameters['authorId'] ?? '',
        ),
      ),

      // Author Routes
      GoRoute(
        path: '/author-dashboard',
        name: 'author_dashboard',
        builder: (context, state) => const AuthorDashboardScreen(),
      ),
      GoRoute(
        path: '/upload-story',
        name: 'upload_story',
        builder: (context, state) => const UploadStoryScreen(),
      ),
      GoRoute(
        path: '/chapter-editor/:storyId',
        name: 'chapter_editor',
        builder: (context, state) => ChapterEditorScreen(
          storyId: state.pathParameters['storyId'] ?? '',
        ),
      ),

      // Premium Routes
      GoRoute(
        path: '/premium',
        name: 'premium',
        builder: (context, state) => const PremiumScreen(),
      ),

      // Wallet Routes
      GoRoute(
        path: '/wallet',
        name: 'wallet',
        builder: (context, state) => const WalletScreen(),
      ),

      // Settings Routes
      GoRoute(
        path: '/settings',
        name: 'settings',
        builder: (context, state) => const SettingsScreen(),
      ),

      // Community Routes
      GoRoute(
        path: '/community/:storyId',
        name: 'community',
        builder: (context, state) => CommunityScreen(
          storyId: state.pathParameters['storyId'] ?? '',
        ),
      ),
    ],
    errorBuilder: (context, state) => Scaffold(
      body: Center(
        child: Text('Error: ${state.error}'),
      ),
    ),
  );
});
