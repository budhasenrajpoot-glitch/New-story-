class AppConstants {
  // App Info
  static const String appName = 'StoryVerse';
  static const String appVersion = '1.0.0';
  static const String appBuild = '1';

  // Firebase
  static const String firebaseProjectId = 'storyverse-app';
  static const String firebaseStorageBucket = 'storyverse-app.appspot.com';

  // API Endpoints
  static const String baseUrl = 'https://api.storyverse.com/v1';
  static const String imageBaseUrl = 'https://cdn.storyverse.com/images';

  // Animation Durations
  static const Duration defaultAnimationDuration = Duration(milliseconds: 300);
  static const Duration shortAnimationDuration = Duration(milliseconds: 150);
  static const Duration longAnimationDuration = Duration(milliseconds: 500);

  // Pagination
  static const int pageSize = 20;
  static const int initialPage = 1;

  // Cache
  static const Duration cacheDuration = Duration(hours: 24);
  static const Duration shortCacheDuration = Duration(hours: 1);

  // File Upload
  static const int maxImageSize = 10 * 1024 * 1024; // 10 MB
  static const int maxAudioSize = 100 * 1024 * 1024; // 100 MB
  static const int maxVideoSize = 500 * 1024 * 1024; // 500 MB

  // Validation
  static const int minPasswordLength = 6;
  static const int maxPasswordLength = 128;
  static const int minNameLength = 2;
  static const int maxNameLength = 50;
  static const int minBioLength = 0;
  static const int maxBioLength = 500;
  static const int minStoryTitleLength = 3;
  static const int maxStoryTitleLength = 200;
  static const int minStoryDescriptionLength = 10;
  static const int maxStoryDescriptionLength = 5000;

  // Reading
  static const Duration readingSessionTimeout = Duration(minutes: 30);
  static const int defaultFontSize = 16;
  static const int minFontSize = 12;
  static const int maxFontSize = 32;
  static const double minLineHeight = 1.2;
  static const double maxLineHeight = 2.0;
  static const double minBrightness = 0.3;
  static const double maxBrightness = 1.5;

  // Audio
  static const double minPlaybackSpeed = 0.5;
  static const double maxPlaybackSpeed = 2.0;
  static const List<double> playbackSpeeds = [0.5, 0.75, 1.0, 1.25, 1.5, 1.75, 2.0];

  // Rewards
  static const int dailyLoginReward = 10;
  static const int readingReward = 5;
  static const int referralBonus = 50;
  static const int watchAdReward = 20;

  // Premium Pricing
  static const double monthlyPrice = 4.99;
  static const double yearlyPrice = 39.99;
  static const double lifetimePrice = 99.99;

  // Rating
  static const double minRating = 1.0;
  static const double maxRating = 5.0;

  // Categories
  static const List<String> categories = [
    'Romance',
    'Love',
    'Horror',
    'Mystery',
    'Fantasy',
    'Adventure',
    'Action',
    'Comedy',
    'Thriller',
    'Historical',
    'Science Fiction',
    'Kids',
    'Motivation',
    'Crime',
    'Biography',
    'Poetry',
  ];

  // Age Ratings
  static const List<String> ageRatings = [
    'All Ages',
    '13+',
    '16+',
    '18+',
  ];

  // Languages
  static const List<String> languages = [
    'English',
    'Hindi',
    'Urdu',
    'Punjabi',
    'Gujarati',
    'Marathi',
    'Tamil',
    'Telugu',
    'Kannada',
    'Malayalam',
    'Bengali',
    'Odia',
  ];

  // Notification Types
  static const String notificationTypeLike = 'like';
  static const String notificationTypeComment = 'comment';
  static const String notificationTypeFollow = 'follow';
  static const String notificationTypeNewChapter = 'new_chapter';
  static const String notificationTypeSystem = 'system';

  // User Roles
  static const String roleUser = 'user';
  static const String roleAuthor = 'author';
  static const String roleAdmin = 'admin';
  static const String roleModerator = 'moderator';

  // Story Status
  static const String statusDraft = 'draft';
  static const String statusPublished = 'published';
  static const String statusArchived = 'archived';
  static const String statusRejected = 'rejected';

  // Payment Status
  static const String paymentStatusPending = 'pending';
  static const String paymentStatusCompleted = 'completed';
  static const String paymentStatusFailed = 'failed';
  static const String paymentStatusCancelled = 'cancelled';

  // Subscription Status
  static const String subscriptionStatusActive = 'active';
  static const String subscriptionStatusExpired = 'expired';
  static const String subscriptionStatusCancelled = 'cancelled';

  // Error Messages
  static const String errorNetwork = 'Network error. Please check your connection.';
  static const String errorUnauthorized = 'You are not authorized to perform this action.';
  static const String errorNotFound = 'The requested resource was not found.';
  static const String errorServerError = 'Server error. Please try again later.';
  static const String errorInvalidEmail = 'Please enter a valid email address.';
  static const String errorPasswordMismatch = 'Passwords do not match.';
  static const String errorWeakPassword = 'Password must be at least 6 characters.';
  static const String errorUserNotFound = 'User not found.';
  static const String errorUserExists = 'User already exists.';
  static const String errorInvalidCredentials = 'Invalid email or password.';
  static const String errorSessionExpired = 'Your session has expired. Please login again.';
  static const String errorPermissionDenied = 'Permission denied.';
  static const String errorFileTooBig = 'File size is too large.';
  static const String errorInvalidFile = 'Invalid file format.';
  static const String errorUploadFailed = 'Upload failed. Please try again.';
  static const String errorDownloadFailed = 'Download failed. Please try again.';

  // Success Messages
  static const String successLoginSuccess = 'Login successful!';
  static const String successRegistrationSuccess = 'Registration successful!';
  static const String successPasswordReset = 'Password reset successful!';
  static const String successEmailVerified = 'Email verified successfully!';
  static const String successProfileUpdated = 'Profile updated successfully!';
  static const String successStoryPublished = 'Story published successfully!';
  static const String successChapterAdded = 'Chapter added successfully!';
  static const String successCommentAdded = 'Comment added successfully!';
  static const String successBookmarkAdded = 'Story bookmarked!';
  static const String successDownloadStarted = 'Download started!';
}

// Enum for reading themes
enum ReadingTheme {
  light,
  dark,
  sepia,
}

// Enum for font families
enum FontFamily {
  poppins,
  roboto,
  openSans,
}

// Enum for sort options
enum SortOption {
  trending,
  popular,
  latest,
  rating,
  mostRead,
}
