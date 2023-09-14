// 🌎 Project imports:
import 'package:sujud/abstracts/repos/base.repo.abstract.dart';
import 'package:sujud/models/models.dart';

abstract class MosqueRepoAbstract implements BaseRepoAbstract<Mosque> {
  Mosque? get selectedMosque;

  set selectedMosque(Mosque? value);
}
