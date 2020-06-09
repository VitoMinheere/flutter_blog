import 'package:blog/models/project_model.dart';
import 'package:blog/config/assets.dart';

final List<Project> projects = [
  Project(
      name: 'Linux dotfiles',
      image: Assets.github,
      description:
          'My Arch Linux dotfiles, with this i can recreate my current setup whenever i need to reinstall Linux.',
      link: 'https://github.com/VitoMinheere/voidrice'),
  Project(
      name: 'OSX dotfiles',
      image: Assets.github,
      description:
          'Started using OSX for Flutter and Game Development. Recreated my Linux dotfiles in OSX, including an install script',
      link: 'https://github.com/VitoMinheere/osx_dotfiles'),
  Project(
      name: 'This blog',
      image: Assets.github,
      description: 'The code to this blog is also on my github page',
      link: 'https://github.com/VitoMinheere/flutter_blog'),
  Project(
      name: 'Grip Strength Trainer',
      image: Assets.github,
      description:
          'Flutter app to train your grip strength. Features a timer and stores your progression for different exercises',
      link: 'https://github.com/VitoMinheere/flutter_grip_trainer'),
];
