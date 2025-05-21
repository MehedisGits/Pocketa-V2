import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pocketa_v2/core/local_storage/shared_pref_service.dart';

final onboardingCompletedProvider = StateProvider<bool>(
  (ref) => SharedPrefServices.getOnboardingCompleted(),
);
