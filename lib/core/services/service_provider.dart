import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';
import '../repositories/repositories.dart';
import 'services.dart';

class ServiceProvider extends StatelessWidget {
  final Widget child;

  const ServiceProvider({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        // Repositories
        Provider(
          create: (context) => UserRepository(FirebaseFirestore.instance),
        ),
        Provider(
          create: (context) => CatchRepository(FirebaseFirestore.instance),
        ),
        Provider(
          create: (context) => TournamentRepository(FirebaseFirestore.instance),
        ),
        Provider(
          create: (context) => SpeciesRepository(FirebaseFirestore.instance),
        ),
        Provider(
          create: (context) => GearRepository(FirebaseFirestore.instance),
        ),

        // Services
        ProxyProvider<UserRepository, UserService>(
          update: (context, repository, _) => UserService(repository),
        ),
        ProxyProvider2<CatchRepository, SpeciesRepository, CatchService>(
          update: (context, catchRepo, speciesRepo, _) =>
              CatchService(catchRepo, speciesRepo),
        ),
        ProxyProvider2<TournamentRepository, CatchRepository, TournamentService>(
          update: (context, tournamentRepo, catchRepo, _) =>
              TournamentService(tournamentRepo, catchRepo),
        ),
        ProxyProvider<SpeciesRepository, SpeciesService>(
          update: (context, repository, _) => SpeciesService(repository),
        ),
        ProxyProvider<GearRepository, GearService>(
          update: (context, repository, _) => GearService(repository),
        ),
      ],
      child: child,
    );
  }
}
