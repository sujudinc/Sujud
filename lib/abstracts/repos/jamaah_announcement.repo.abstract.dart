// 🌎 Project imports:
import 'package:sujud/abstracts/repos/base.repo.abstract.dart';
import 'package:sujud/models/models.dart';

abstract class JamaahAnnouncementRepoAbstract
    implements
        BaseRepoAbstract<Announcement>,
        QueryRepoAbstract<Announcement>,
        SubscriptionRepoAbstract<Announcement> {}
