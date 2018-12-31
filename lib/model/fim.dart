class Fim {
    int type;
    String fimId;
    String fimName;
    int seriId;
    String seriName;
    //DateTime releasedTS;
    String releasedTS;
    bool watched;
    String watchedService;
    //DateTime watchedTS;
    String watchedTS;

    Fim.fromJson(Map data) {
        fimId = '';
        fimName = data['film'];
        seriName = data['series'];
        watchedService = data['service'];
        releasedTS = data['released'];
        watchedTS = data['last_watched'];
    }
 }
