// 🌎 Project imports:
import 'package:sujud/abstracts/repos/base.repo.abstract.dart';
import 'package:sujud/models/models.dart';

abstract class AdminAnnouncementRepoAbstract
    implements
        BaseRepoAbstract<Announcement>,
        QueryRepoAbstract<Announcement>,
        CreateRepoAbstract<Announcement>,
        UpdateRepoAbstract<Announcement>,
        DeleteRepoAbstract<Announcement>,
        SubscriptionRepoAbstract<Announcement> {}
