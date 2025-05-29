import 'package:get_it/get_it.dart';
import 'package:spotify_with_flutter/data/repository/auth/auth_repository_impl.dart';
import 'package:spotify_with_flutter/data/repository/song/song_repository_impl.dart';
import 'package:spotify_with_flutter/data/sources/auth/auth_firebase_service.dart';
import 'package:spotify_with_flutter/data/sources/song/song_firebase_service.dart';
import 'package:spotify_with_flutter/domain/repository/auth/auth.dart';
import 'package:spotify_with_flutter/domain/repository/song/song.dart';
import 'package:spotify_with_flutter/domain/usecase/auth/get_user.dart';
import 'package:spotify_with_flutter/domain/usecase/auth/signin.dart';
import 'package:spotify_with_flutter/domain/usecase/auth/signup.dart';
import 'package:spotify_with_flutter/domain/usecase/song/add_or_remove_favorite_song.dart';
import 'package:spotify_with_flutter/domain/usecase/song/get_favorite_songs.dart';
import 'package:spotify_with_flutter/domain/usecase/song/get_news_songs.dart';
import 'package:spotify_with_flutter/domain/usecase/song/get_play_list.dart';
import 'package:spotify_with_flutter/domain/usecase/song/is_favorite_song.dart';

final sl = GetIt.instance;

Future<void> initializeDependencies() async {
  sl.registerSingleton<AuthFirebaseService>(
    AuthFirebaseServiceImpl(),
  );

  sl.registerSingleton<SongFirebaseService>(
    SongFirebaseServiceImpl(),
  );

  sl.registerSingleton<AuthRepository>(
    AuthRepositoryImpl(),
  );

  sl.registerSingleton<SongsRepository>(
    SongRepositoryImpl(),
  );

  sl.registerSingleton<SignupUseCase>(
    SignupUseCase(),
  );

  sl.registerSingleton<SigninUseCase>(
    SigninUseCase(),
  );

  sl.registerSingleton<GetUserUseCase>(
    GetUserUseCase(),
  );

  sl.registerSingleton<GetNewsSongsUseCase>(
    GetNewsSongsUseCase(),
  );

  sl.registerSingleton<GetPlayListUseCase>(
    GetPlayListUseCase(),
  );

  sl.registerSingleton<AddOrRemoveFavoriteSongUseCase>(
    AddOrRemoveFavoriteSongUseCase(),
  );

  sl.registerSingleton<IsFavoriteSongUseCase>(
    IsFavoriteSongUseCase(),
  );

  sl.registerSingleton<GetFavoriteSongsUseCase>(
    GetFavoriteSongsUseCase(),
  );
}
