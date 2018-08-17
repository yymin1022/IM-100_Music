.class public Lcom/pantech/app/music/list/listener/MusicListCallbackRegister;
.super Ljava/lang/Object;
.source "MusicListCallbackRegister.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/app/music/list/listener/MusicListCallbackRegister$5;
    }
.end annotation


# static fields
.field public static final BROADCAST_CLEAR_SELECTION:I = 0x20

.field public static final BROADCAST_CONTENT_OBSERVER:I = 0x8

.field public static final BROADCAST_DUMMY_5:I = 0x4000

.field public static final BROADCAST_DURATION_CHANGE:I = 0x1000

.field public static final BROADCAST_MEDIASCANNER:I = 0x400

.field public static final BROADCAST_MEDIA_EJECT:I = 0x40

.field public static final BROADCAST_MEDIA_MOUNTED:I = 0x2000

.field public static final BROADCAST_MTP_TRANSFER:I = 0x4

.field public static final BROADCAST_PLAYSTATUS:I = 0x1

.field public static final BROADCAST_REQUEST_FINISH_ALL_LIST:I = 0x80

.field public static final BROADCAST_REQUEST_FINISH_SEARCH_IN_SEARCH:I = 0x100

.field public static final BROADCAST_USER_PRESENT:I = 0x10


# instance fields
.field private mBroadcastMask:J

.field private mContext:Landroid/content/Context;

.field private mInterface:Lcom/pantech/app/music/list/listener/IBroadcastCallback;

.field private mLisenerRegistered:Z

.field mObserver:Landroid/database/ContentObserver;

.field private mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

.field mReceiver:Landroid/content/BroadcastReceiver;

.field mReceiverEject:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/pantech/app/music/list/PageInfoType;Lcom/pantech/app/music/list/listener/IBroadcastCallback;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "broadcastMask"    # I
    .param p3, "pageInfo"    # Lcom/pantech/app/music/list/PageInfoType;
    .param p4, "iface"    # Lcom/pantech/app/music/list/listener/IBroadcastCallback;

    .prologue
    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Lcom/pantech/app/music/list/listener/MusicListCallbackRegister$1;

    invoke-direct {v0, p0}, Lcom/pantech/app/music/list/listener/MusicListCallbackRegister$1;-><init>(Lcom/pantech/app/music/list/listener/MusicListCallbackRegister;)V

    iput-object v0, p0, Lcom/pantech/app/music/list/listener/MusicListCallbackRegister;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 108
    new-instance v0, Lcom/pantech/app/music/list/listener/MusicListCallbackRegister$2;

    invoke-direct {v0, p0}, Lcom/pantech/app/music/list/listener/MusicListCallbackRegister$2;-><init>(Lcom/pantech/app/music/list/listener/MusicListCallbackRegister;)V

    iput-object v0, p0, Lcom/pantech/app/music/list/listener/MusicListCallbackRegister;->mReceiverEject:Landroid/content/BroadcastReceiver;

    .line 132
    new-instance v0, Lcom/pantech/app/music/list/listener/MusicListCallbackRegister$3;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/pantech/app/music/list/listener/MusicListCallbackRegister$3;-><init>(Lcom/pantech/app/music/list/listener/MusicListCallbackRegister;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/pantech/app/music/list/listener/MusicListCallbackRegister;->mObserver:Landroid/database/ContentObserver;

    .line 157
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/pantech/app/music/list/listener/MusicListCallbackRegister;->mBroadcastMask:J

    .line 166
    iput-object p1, p0, Lcom/pantech/app/music/list/listener/MusicListCallbackRegister;->mContext:Landroid/content/Context;

    .line 168
    iput-object p4, p0, Lcom/pantech/app/music/list/listener/MusicListCallbackRegister;->mInterface:Lcom/pantech/app/music/list/listener/IBroadcastCallback;

    .line 170
    iput-object p3, p0, Lcom/pantech/app/music/list/listener/MusicListCallbackRegister;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    .line 172
    iget-wide v0, p0, Lcom/pantech/app/music/list/listener/MusicListCallbackRegister;->mBroadcastMask:J

    int-to-long v2, p2

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/pantech/app/music/list/listener/MusicListCallbackRegister;->mBroadcastMask:J

    .line 173
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/pantech/app/music/list/listener/IBroadcastCallback;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "broadcastMask"    # I
    .param p3, "iface"    # Lcom/pantech/app/music/list/listener/IBroadcastCallback;

    .prologue
    .line 162
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/pantech/app/music/list/listener/MusicListCallbackRegister;-><init>(Landroid/content/Context;ILcom/pantech/app/music/list/PageInfoType;Lcom/pantech/app/music/list/listener/IBroadcastCallback;)V

    .line 163
    return-void
.end method

.method static synthetic access$000(Lcom/pantech/app/music/list/listener/MusicListCallbackRegister;)Lcom/pantech/app/music/list/listener/IBroadcastCallback;
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/list/listener/MusicListCallbackRegister;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/pantech/app/music/list/listener/MusicListCallbackRegister;->mInterface:Lcom/pantech/app/music/list/listener/IBroadcastCallback;

    return-object v0
.end method

.method private registerBroadcast()V
    .registers 9

    .prologue
    const-wide/16 v6, 0x0

    .line 189
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 191
    .local v0, "filter":Landroid/content/IntentFilter;
    iget-wide v2, p0, Lcom/pantech/app/music/list/listener/MusicListCallbackRegister;->mBroadcastMask:J

    const-wide/16 v4, 0x1

    and-long/2addr v2, v4

    cmp-long v2, v2, v6

    if-lez v2, :cond_29

    .line 193
    const-string v2, "com.pantech.app.music.playstatechanged"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 194
    const-string v2, "com.pantech.app.music.metachanged"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 195
    const-string v2, "com.pantech.app.music.safebox.metachanged"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 196
    const-string v2, "com.pantech.app.music.playbackallremoved"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 197
    const-string v2, "com.pantech.app.music.queuechanged"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 200
    :cond_29
    iget-wide v2, p0, Lcom/pantech/app/music/list/listener/MusicListCallbackRegister;->mBroadcastMask:J

    const-wide/16 v4, 0x4

    and-long/2addr v2, v4

    cmp-long v2, v2, v6

    if-lez v2, :cond_4b

    .line 202
    const-string v2, "android.mtp.action.MTP_DELETE_FILE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 203
    const-string v2, "android.mtp.action.MTP_INSERT_FILE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 204
    const-string v2, "android.mtp.action.MTP_UPDATE_FILE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 205
    const-string v2, "com.pantech.app.music.action.MTP_CONNECTED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 206
    const-string v2, "com.pantech.app.music.action.MTP_DISCONNECTED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 209
    :cond_4b
    iget-wide v2, p0, Lcom/pantech/app/music/list/listener/MusicListCallbackRegister;->mBroadcastMask:J

    const-wide/16 v4, 0x10

    and-long/2addr v2, v4

    cmp-long v2, v2, v6

    if-lez v2, :cond_59

    .line 211
    const-string v2, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 214
    :cond_59
    iget-wide v2, p0, Lcom/pantech/app/music/list/listener/MusicListCallbackRegister;->mBroadcastMask:J

    const-wide/16 v4, 0x20

    and-long/2addr v2, v4

    cmp-long v2, v2, v6

    if-lez v2, :cond_67

    .line 216
    const-string v2, "com.pantech.app.music.action.CLEAR_SELECTION"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 219
    :cond_67
    iget-wide v2, p0, Lcom/pantech/app/music/list/listener/MusicListCallbackRegister;->mBroadcastMask:J

    const-wide/16 v4, 0x80

    and-long/2addr v2, v4

    cmp-long v2, v2, v6

    if-lez v2, :cond_75

    .line 221
    const-string v2, "com.pantech.app.music.action.FINISH_LIST_ALL"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 224
    :cond_75
    iget-wide v2, p0, Lcom/pantech/app/music/list/listener/MusicListCallbackRegister;->mBroadcastMask:J

    const-wide/16 v4, 0x100

    and-long/2addr v2, v4

    cmp-long v2, v2, v6

    if-lez v2, :cond_83

    .line 226
    const-string v2, "com.pantech.app.music.action.FINISH_LIST_SEARCH_RESULT"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 229
    :cond_83
    iget-wide v2, p0, Lcom/pantech/app/music/list/listener/MusicListCallbackRegister;->mBroadcastMask:J

    const-wide/16 v4, 0x400

    and-long/2addr v2, v4

    cmp-long v2, v2, v6

    if-lez v2, :cond_96

    .line 231
    const-string v2, "com.pantech.app.music.action.MEDIASCAN_STARTED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 232
    const-string v2, "com.pantech.app.music.action.MEDIASCAN_FINISHED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 235
    :cond_96
    iget-object v2, p0, Lcom/pantech/app/music/list/listener/MusicListCallbackRegister;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/pantech/app/music/list/listener/MusicListCallbackRegister;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 237
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 239
    .local v1, "filter_eject":Landroid/content/IntentFilter;
    iget-wide v2, p0, Lcom/pantech/app/music/list/listener/MusicListCallbackRegister;->mBroadcastMask:J

    const-wide/16 v4, 0x2040

    and-long/2addr v2, v4

    cmp-long v2, v2, v6

    if-lez v2, :cond_d3

    .line 241
    iget-wide v2, p0, Lcom/pantech/app/music/list/listener/MusicListCallbackRegister;->mBroadcastMask:J

    const-wide/16 v4, 0x40

    and-long/2addr v2, v4

    cmp-long v2, v2, v6

    if-lez v2, :cond_b9

    .line 242
    const-string v2, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 244
    :cond_b9
    iget-wide v2, p0, Lcom/pantech/app/music/list/listener/MusicListCallbackRegister;->mBroadcastMask:J

    const-wide/16 v4, 0x2000

    and-long/2addr v2, v4

    cmp-long v2, v2, v6

    if-lez v2, :cond_c7

    .line 245
    const-string v2, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 247
    :cond_c7
    const-string v2, "file"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 249
    iget-object v2, p0, Lcom/pantech/app/music/list/listener/MusicListCallbackRegister;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/pantech/app/music/list/listener/MusicListCallbackRegister;->mReceiverEject:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 251
    :cond_d3
    return-void
.end method

.method private registerObserver()V
    .registers 8

    .prologue
    const/4 v6, 0x1

    .line 255
    iget-wide v2, p0, Lcom/pantech/app/music/list/listener/MusicListCallbackRegister;->mBroadcastMask:J

    const-wide/16 v4, 0x8

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_1d

    .line 257
    iget-object v1, p0, Lcom/pantech/app/music/list/listener/MusicListCallbackRegister;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v1}, Lcom/pantech/app/music/list/PageInfoType;->getCategoryType()Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    move-result-object v0

    .line 259
    .local v0, "category":Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;
    sget-object v1, Lcom/pantech/app/music/list/listener/MusicListCallbackRegister$5;->$SwitchMap$com$pantech$app$music$utils$LibraryUtils$CategoryType:[I

    invoke-virtual {v0}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_4e

    .line 270
    .end local v0    # "category":Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;
    :cond_1d
    :goto_1d
    return-void

    .line 262
    .restart local v0    # "category":Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;
    :pswitch_1e
    iget-object v1, p0, Lcom/pantech/app/music/list/listener/MusicListCallbackRegister;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/pantech/app/music/list/module/QuerySimilartySort;->SimilarityUri:Landroid/net/Uri;

    iget-object v3, p0, Lcom/pantech/app/music/list/listener/MusicListCallbackRegister;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v6, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_1d

    .line 266
    :pswitch_2c
    iget-object v1, p0, Lcom/pantech/app/music/list/listener/MusicListCallbackRegister;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "external"

    iget-object v3, p0, Lcom/pantech/app/music/list/listener/MusicListCallbackRegister;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v3}, Lcom/pantech/app/music/list/PageInfoType;->getExtraValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v4, v3

    invoke-static {v2, v4, v5}, Landroid/provider/MediaStore$Audio$Playlists$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/pantech/app/music/list/listener/MusicListCallbackRegister;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v6, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_1d

    .line 259
    nop

    :pswitch_data_4e
    .packed-switch 0x1
        :pswitch_1e
        :pswitch_2c
    .end packed-switch
.end method

.method private unregisterBroadcast()V
    .registers 5

    .prologue
    .line 313
    iget-object v0, p0, Lcom/pantech/app/music/list/listener/MusicListCallbackRegister;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/pantech/app/music/list/listener/MusicListCallbackRegister;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 315
    iget-wide v0, p0, Lcom/pantech/app/music/list/listener/MusicListCallbackRegister;->mBroadcastMask:J

    const-wide/16 v2, 0x40

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_19

    .line 317
    iget-object v0, p0, Lcom/pantech/app/music/list/listener/MusicListCallbackRegister;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/pantech/app/music/list/listener/MusicListCallbackRegister;->mReceiverEject:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 319
    :cond_19
    return-void
.end method

.method private unregisterObserver()V
    .registers 7

    .prologue
    .line 323
    iget-wide v2, p0, Lcom/pantech/app/music/list/listener/MusicListCallbackRegister;->mBroadcastMask:J

    const-wide/16 v4, 0x8

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_1c

    .line 325
    iget-object v1, p0, Lcom/pantech/app/music/list/listener/MusicListCallbackRegister;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v1}, Lcom/pantech/app/music/list/PageInfoType;->getCategoryType()Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    move-result-object v0

    .line 327
    .local v0, "category":Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;
    sget-object v1, Lcom/pantech/app/music/list/listener/MusicListCallbackRegister$5;->$SwitchMap$com$pantech$app$music$utils$LibraryUtils$CategoryType:[I

    invoke-virtual {v0}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_2a

    .line 334
    .end local v0    # "category":Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;
    :cond_1c
    :goto_1c
    return-void

    .line 330
    .restart local v0    # "category":Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;
    :pswitch_1d
    iget-object v1, p0, Lcom/pantech/app/music/list/listener/MusicListCallbackRegister;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/music/list/listener/MusicListCallbackRegister;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    goto :goto_1c

    .line 327
    nop

    :pswitch_data_2a
    .packed-switch 0x1
        :pswitch_1d
        :pswitch_1d
    .end packed-switch
.end method


# virtual methods
.method protected finalize()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 341
    invoke-virtual {p0}, Lcom/pantech/app/music/list/listener/MusicListCallbackRegister;->unregister()V

    .line 343
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 344
    return-void
.end method

.method public register()V
    .registers 2

    .prologue
    .line 177
    iget-boolean v0, p0, Lcom/pantech/app/music/list/listener/MusicListCallbackRegister;->mLisenerRegistered:Z

    if-nez v0, :cond_d

    .line 179
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pantech/app/music/list/listener/MusicListCallbackRegister;->mLisenerRegistered:Z

    .line 181
    invoke-direct {p0}, Lcom/pantech/app/music/list/listener/MusicListCallbackRegister;->registerBroadcast()V

    .line 183
    invoke-direct {p0}, Lcom/pantech/app/music/list/listener/MusicListCallbackRegister;->registerObserver()V

    .line 185
    :cond_d
    return-void
.end method

.method public registerViewHierachyChangeListener(Landroid/widget/AbsListView;)V
    .registers 3
    .param p1, "listview"    # Landroid/widget/AbsListView;

    .prologue
    .line 274
    new-instance v0, Lcom/pantech/app/music/list/listener/MusicListCallbackRegister$4;

    invoke-direct {v0, p0}, Lcom/pantech/app/music/list/listener/MusicListCallbackRegister$4;-><init>(Lcom/pantech/app/music/list/listener/MusicListCallbackRegister;)V

    invoke-virtual {p1, v0}, Landroid/widget/AbsListView;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    .line 290
    return-void
.end method

.method public unregister()V
    .registers 2

    .prologue
    .line 299
    iget-boolean v0, p0, Lcom/pantech/app/music/list/listener/MusicListCallbackRegister;->mLisenerRegistered:Z

    if-eqz v0, :cond_d

    .line 302
    invoke-direct {p0}, Lcom/pantech/app/music/list/listener/MusicListCallbackRegister;->unregisterBroadcast()V

    .line 304
    invoke-direct {p0}, Lcom/pantech/app/music/list/listener/MusicListCallbackRegister;->unregisterObserver()V

    .line 306
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pantech/app/music/list/listener/MusicListCallbackRegister;->mLisenerRegistered:Z

    .line 308
    :cond_d
    return-void
.end method

.method public unregisterViewHierachyChangeListener(Landroid/widget/ListView;)V
    .registers 3
    .param p1, "listview"    # Landroid/widget/ListView;

    .prologue
    .line 294
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    .line 295
    return-void
.end method
