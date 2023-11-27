import 'package:go_router/go_router.dart';

import '../ui/screens/home_screen.dart';
import '../ui/screens/new_note_screen.dart';
import '../ui/screens/note_view.dart';

GoRouter appRouter = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      redirect: (_, __) => '/HomeScreen',
    ),
    GoRoute(
      path: '/HomeScreen',
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      path: '/NewNote',
      builder: (context, state) => const NewNoteScreen(),
    ),
    GoRoute(
      path: '/NoteView',
      builder: (context, state) => const NoteView(),
    ),
  ],
);
