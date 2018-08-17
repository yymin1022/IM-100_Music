.class public Lcom/pantech/app/music/lyrics/LyricsParser;
.super Ljava/lang/Object;
.source "LyricsParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/app/music/lyrics/LyricsParser$1;,
        Lcom/pantech/app/music/lyrics/LyricsParser$LyricsParam;,
        Lcom/pantech/app/music/lyrics/LyricsParser$LyricsParserHandler;
    }
.end annotation


# static fields
.field public static final NO_LYRICS:Ljava/lang/String;

.field private static mCacheMap:Lcom/pantech/app/music/lyrics/LyricsCacheMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/pantech/app/music/lyrics/LyricsCacheMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mHandler:Lcom/pantech/app/music/lyrics/LyricsParser$LyricsParserHandler;

.field private static volatile mInstanceMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/Context;",
            "Lcom/pantech/app/music/lyrics/LyricsParser;",
            ">;"
        }
    .end annotation
.end field

.field private static mListenerMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/Context;",
            "Lcom/pantech/app/music/lyrics/ILyricsParserListener;",
            ">;"
        }
    .end annotation
.end field

.field private static mWorker:Lcom/pantech/app/music/common/MusicWorker;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NO LYRICS IN FILE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/pantech/app/music/common/ModelInfo;->getModelID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/pantech/app/music/lyrics/LyricsParser;->NO_LYRICS:Ljava/lang/String;

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/pantech/app/music/lyrics/LyricsParser;->mInstanceMap:Ljava/util/HashMap;

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/pantech/app/music/lyrics/LyricsParser;->mListenerMap:Ljava/util/HashMap;

    .line 48
    new-instance v0, Lcom/pantech/app/music/lyrics/LyricsCacheMap;

    const/16 v1, 0x64

    const/high16 v2, 0x3f400000    # 0.75f

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/pantech/app/music/lyrics/LyricsCacheMap;-><init>(IFZ)V

    sput-object v0, Lcom/pantech/app/music/lyrics/LyricsParser;->mCacheMap:Lcom/pantech/app/music/lyrics/LyricsCacheMap;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 191
    return-void
.end method

.method static synthetic access$100()Lcom/pantech/app/music/lyrics/LyricsCacheMap;
    .registers 1

    .prologue
    .line 15
    sget-object v0, Lcom/pantech/app/music/lyrics/LyricsParser;->mCacheMap:Lcom/pantech/app/music/lyrics/LyricsCacheMap;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/pantech/app/music/lyrics/LyricsParser;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 56
    const-string v1, "VMusicLyrics"

    const-string v2, "getInstance()"

    invoke-static {v1, v2}, Lcom/pantech/app/music/utils/MLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    sget-object v1, Lcom/pantech/app/music/lyrics/LyricsParser;->mInstanceMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 60
    const-string v1, "VMusicLyrics"

    const-string v2, "getInstance() make thread"

    invoke-static {v1, v2}, Lcom/pantech/app/music/utils/MLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    new-instance v1, Lcom/pantech/app/music/common/MusicWorker;

    const-string v2, "Lyrics worker"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/pantech/app/music/common/MusicWorker;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/pantech/app/music/lyrics/LyricsParser;->mWorker:Lcom/pantech/app/music/common/MusicWorker;

    .line 63
    new-instance v1, Lcom/pantech/app/music/lyrics/LyricsParser$LyricsParserHandler;

    sget-object v2, Lcom/pantech/app/music/lyrics/LyricsParser;->mWorker:Lcom/pantech/app/music/common/MusicWorker;

    invoke-virtual {v2}, Lcom/pantech/app/music/common/MusicWorker;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/pantech/app/music/lyrics/LyricsParser$LyricsParserHandler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lcom/pantech/app/music/lyrics/LyricsParser;->mHandler:Lcom/pantech/app/music/lyrics/LyricsParser$LyricsParserHandler;

    .line 66
    :cond_2d
    sget-object v1, Lcom/pantech/app/music/lyrics/LyricsParser;->mInstanceMap:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_46

    .line 68
    const-string v1, "VMusicLyrics"

    const-string v2, "getInstance() set new Instance"

    invoke-static {v1, v2}, Lcom/pantech/app/music/utils/MLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    new-instance v0, Lcom/pantech/app/music/lyrics/LyricsParser;

    invoke-direct {v0}, Lcom/pantech/app/music/lyrics/LyricsParser;-><init>()V

    .line 71
    .local v0, "instance":Lcom/pantech/app/music/lyrics/LyricsParser;
    sget-object v1, Lcom/pantech/app/music/lyrics/LyricsParser;->mInstanceMap:Ljava/util/HashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    .end local v0    # "instance":Lcom/pantech/app/music/lyrics/LyricsParser;
    :cond_46
    sget-object v1, Lcom/pantech/app/music/lyrics/LyricsParser;->mInstanceMap:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pantech/app/music/lyrics/LyricsParser;

    return-object v1
.end method

.method private getListener(Landroid/content/Context;)Lcom/pantech/app/music/lyrics/ILyricsParserListener;
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 105
    sget-object v0, Lcom/pantech/app/music/lyrics/LyricsParser;->mListenerMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/music/lyrics/ILyricsParserListener;

    return-object v0
.end method

.method public static releaseInstance(Landroid/content/Context;)V
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 80
    const-class v1, Lcom/pantech/app/music/lyrics/LyricsParser;

    monitor-enter v1

    .line 82
    :try_start_3
    const-string v0, "VMusicLyrics"

    const-string v2, "releaseInstance()"

    invoke-static {v0, v2}, Lcom/pantech/app/music/utils/MLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    sget-object v0, Lcom/pantech/app/music/lyrics/LyricsParser;->mInstanceMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    sget-object v0, Lcom/pantech/app/music/lyrics/LyricsParser;->mInstanceMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 88
    const-string v0, "VMusicLyrics"

    const-string v2, "releaseInstance() exit thread and clear cache"

    invoke-static {v0, v2}, Lcom/pantech/app/music/utils/MLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    sget-object v0, Lcom/pantech/app/music/lyrics/LyricsParser;->mHandler:Lcom/pantech/app/music/lyrics/LyricsParser$LyricsParserHandler;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/pantech/app/music/lyrics/LyricsParser$LyricsParserHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 90
    sget-object v0, Lcom/pantech/app/music/lyrics/LyricsParser;->mWorker:Lcom/pantech/app/music/common/MusicWorker;

    invoke-virtual {v0}, Lcom/pantech/app/music/common/MusicWorker;->stopWorkerNoSync()V

    .line 91
    sget-object v0, Lcom/pantech/app/music/lyrics/LyricsParser;->mCacheMap:Lcom/pantech/app/music/lyrics/LyricsCacheMap;

    invoke-virtual {v0}, Lcom/pantech/app/music/lyrics/LyricsCacheMap;->clear()V

    .line 93
    :cond_2e
    monitor-exit v1

    .line 94
    return-void

    .line 93
    :catchall_30
    move-exception v0

    monitor-exit v1
    :try_end_32
    .catchall {:try_start_3 .. :try_end_32} :catchall_30

    throw v0
.end method


# virtual methods
.method public setListener(Landroid/content/Context;Lcom/pantech/app/music/lyrics/ILyricsParserListener;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/pantech/app/music/lyrics/ILyricsParserListener;

    .prologue
    .line 99
    sget-object v0, Lcom/pantech/app/music/lyrics/LyricsParser;->mListenerMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    return-void
.end method

.method public startGetLyrics(Landroid/content/Context;Ljava/lang/String;)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 111
    const-string v4, "VMusicLyrics"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "startGetLyrics()  context: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", path: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/pantech/app/music/utils/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    sget-object v4, Lcom/pantech/app/music/lyrics/LyricsParser;->mCacheMap:Lcom/pantech/app/music/lyrics/LyricsCacheMap;

    invoke-virtual {v4, p2}, Lcom/pantech/app/music/lyrics/LyricsCacheMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 113
    .local v3, "resultData":Ljava/lang/String;
    const-string v4, "VMusicLyrics"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "resultData: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/pantech/app/music/utils/MLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    invoke-direct {p0, p1}, Lcom/pantech/app/music/lyrics/LyricsParser;->getListener(Landroid/content/Context;)Lcom/pantech/app/music/lyrics/ILyricsParserListener;

    move-result-object v0

    .line 117
    .local v0, "listener":Lcom/pantech/app/music/lyrics/ILyricsParserListener;
    if-eqz p2, :cond_53

    if-eqz v3, :cond_5e

    sget-object v4, Lcom/pantech/app/music/lyrics/LyricsParser;->NO_LYRICS:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5e

    .line 119
    :cond_53
    const-string v4, "VMusicLyrics"

    const-string v5, "NO LYRICS"

    invoke-static {v4, v5}, Lcom/pantech/app/music/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    invoke-interface {v0, v7}, Lcom/pantech/app/music/lyrics/ILyricsParserListener;->onLyricsParseEnd(Ljava/lang/String;)V

    .line 143
    :goto_5d
    return-void

    .line 123
    :cond_5e
    if-eqz v3, :cond_73

    sget-object v4, Lcom/pantech/app/music/lyrics/LyricsParser;->NO_LYRICS:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_73

    .line 125
    const-string v4, "VMusicLyrics"

    const-string v5, "LYRICS IN CACHE"

    invoke-static {v4, v5}, Lcom/pantech/app/music/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    invoke-interface {v0, v3}, Lcom/pantech/app/music/lyrics/ILyricsParserListener;->onLyricsParseEnd(Ljava/lang/String;)V

    goto :goto_5d

    .line 129
    :cond_73
    if-nez v3, :cond_94

    .line 131
    const-string v4, "VMusicLyrics"

    const-string v5, "NO PARSING. REQUEST"

    invoke-static {v4, v5}, Lcom/pantech/app/music/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    new-instance v2, Lcom/pantech/app/music/lyrics/LyricsParser$LyricsParam;

    invoke-direct {v2, p0, v7}, Lcom/pantech/app/music/lyrics/LyricsParser$LyricsParam;-><init>(Lcom/pantech/app/music/lyrics/LyricsParser;Lcom/pantech/app/music/lyrics/LyricsParser$1;)V

    .line 133
    .local v2, "param":Lcom/pantech/app/music/lyrics/LyricsParser$LyricsParam;
    iput-object v0, v2, Lcom/pantech/app/music/lyrics/LyricsParser$LyricsParam;->listener:Lcom/pantech/app/music/lyrics/ILyricsParserListener;

    .line 134
    iput-object p2, v2, Lcom/pantech/app/music/lyrics/LyricsParser$LyricsParam;->path:Ljava/lang/String;

    .line 136
    sget-object v4, Lcom/pantech/app/music/lyrics/LyricsParser;->mHandler:Lcom/pantech/app/music/lyrics/LyricsParser$LyricsParserHandler;

    const/4 v5, 0x1

    invoke-virtual {v4, v5, v2}, Lcom/pantech/app/music/lyrics/LyricsParser$LyricsParserHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 137
    .local v1, "msg":Landroid/os/Message;
    sget-object v4, Lcom/pantech/app/music/lyrics/LyricsParser;->mHandler:Lcom/pantech/app/music/lyrics/LyricsParser$LyricsParserHandler;

    const-wide/16 v6, 0x32

    invoke-virtual {v4, v1, v6, v7}, Lcom/pantech/app/music/lyrics/LyricsParser$LyricsParserHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_5d

    .line 141
    .end local v1    # "msg":Landroid/os/Message;
    .end local v2    # "param":Lcom/pantech/app/music/lyrics/LyricsParser$LyricsParam;
    :cond_94
    const-string v4, "VMusicLyrics"

    const-string v5, "else  "

    invoke-static {v4, v5}, Lcom/pantech/app/music/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5d
.end method
