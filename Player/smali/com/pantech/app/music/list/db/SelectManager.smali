.class public Lcom/pantech/app/music/list/db/SelectManager;
.super Ljava/lang/Object;
.source "SelectManager.java"

# interfaces
.implements Lcom/pantech/app/music/utils/LibraryUtils;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/app/music/list/db/SelectManager$ContentSelectInfo;,
        Lcom/pantech/app/music/list/db/SelectManager$GroupSelectInfo;,
        Lcom/pantech/app/music/list/db/SelectManager$SelectInfo;,
        Lcom/pantech/app/music/list/db/SelectManager$CheckDrmListListener;,
        Lcom/pantech/app/music/list/db/SelectManager$MakeSelectListTemplate;,
        Lcom/pantech/app/music/list/db/SelectManager$ContentsSelectCountInfo;,
        Lcom/pantech/app/music/list/db/SelectManager$SelectChild;,
        Lcom/pantech/app/music/list/db/SelectManager$SelectAll;,
        Lcom/pantech/app/music/list/db/SelectManager$AsyncSelectDoneListener;
    }
.end annotation


# static fields
.field public static final CHECK_STATE_ALL:I = 0x2

.field public static final CHECK_STATE_NONE:I = 0x0

.field public static final CHECK_STATE_NOTHING:I = 0x3

.field public static final CHECK_STATE_SOME:I = 0x1

.field static final Loggable:Z = true

.field public static final SELECTION_TYPE_MAX:I = 0x1

.field public static final SELECTION_TYPE_NORMAL:I

.field private static mDrmContentsCount:I

.field private static mSelectionManager:[Lcom/pantech/app/music/list/db/SelectManager;


# instance fields
.field private mCategorySelectionTable:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;",
            "Lcom/pantech/app/music/list/component/ArrayListMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/pantech/app/music/list/db/SelectManager$SelectInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private mContextRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private mSyncLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field private mType:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 42
    const/4 v0, 0x0

    sput-object v0, Lcom/pantech/app/music/list/db/SelectManager;->mSelectionManager:[Lcom/pantech/app/music/list/db/SelectManager;

    .line 1210
    const/4 v0, 0x0

    sput v0, Lcom/pantech/app/music/list/db/SelectManager;->mDrmContentsCount:I

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;I)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "type"    # I

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/pantech/app/music/list/db/SelectManager;->mCategorySelectionTable:Ljava/util/concurrent/ConcurrentHashMap;

    .line 70
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/pantech/app/music/list/db/SelectManager;->mContextRef:Ljava/lang/ref/WeakReference;

    .line 72
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lcom/pantech/app/music/list/db/SelectManager;->mSyncLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 74
    iput p2, p0, Lcom/pantech/app/music/list/db/SelectManager;->mType:I

    .line 75
    return-void
.end method

.method static synthetic access$008()I
    .registers 2

    .prologue
    .line 30
    sget v0, Lcom/pantech/app/music/list/db/SelectManager;->mDrmContentsCount:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/pantech/app/music/list/db/SelectManager;->mDrmContentsCount:I

    return v0
.end method

.method public static getInstance(Landroid/content/Context;I)Lcom/pantech/app/music/list/db/SelectManager;
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Selection Manager GetInstance Type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/pantech/app/music/utils/MLog;->w(Ljava/lang/String;)V

    .line 48
    sget-object v0, Lcom/pantech/app/music/list/db/SelectManager;->mSelectionManager:[Lcom/pantech/app/music/list/db/SelectManager;

    if-nez v0, :cond_2d

    .line 50
    new-array v0, v4, [Lcom/pantech/app/music/list/db/SelectManager;

    sput-object v0, Lcom/pantech/app/music/list/db/SelectManager;->mSelectionManager:[Lcom/pantech/app/music/list/db/SelectManager;

    .line 51
    sget-object v0, Lcom/pantech/app/music/list/db/SelectManager;->mSelectionManager:[Lcom/pantech/app/music/list/db/SelectManager;

    new-instance v1, Lcom/pantech/app/music/list/db/SelectManager;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v3}, Lcom/pantech/app/music/list/db/SelectManager;-><init>(Landroid/content/Context;I)V

    aput-object v1, v0, v3

    .line 54
    :cond_2d
    if-lt p1, v4, :cond_48

    .line 55
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid Type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 57
    :cond_48
    sget-object v0, Lcom/pantech/app/music/list/db/SelectManager;->mSelectionManager:[Lcom/pantech/app/music/list/db/SelectManager;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public static getSelectedChildList(Lcom/pantech/app/music/list/component/ArrayListMap;)Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pantech/app/music/list/component/ArrayListMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/pantech/app/music/list/db/SelectManager$ContentSelectInfo;",
            ">;)",
            "Ljava/util/Collection",
            "<",
            "Lcom/pantech/app/music/list/db/SelectManager$ContentSelectInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 736
    .local p0, "childTable":Lcom/pantech/app/music/list/component/ArrayListMap;, "Lcom/pantech/app/music/list/component/ArrayListMap<Ljava/lang/String;Lcom/pantech/app/music/list/db/SelectManager$ContentSelectInfo;>;"
    if-eqz p0, :cond_7

    .line 738
    invoke-virtual {p0}, Lcom/pantech/app/music/list/component/ArrayListMap;->values()Ljava/util/ArrayList;

    move-result-object v0

    .line 741
    :goto_6
    return-object v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public static getSelectedTransferIDList(Ljava/util/Collection;Z)Ljava/util/ArrayList;
    .registers 5
    .param p1, "checkDrm"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/pantech/app/music/list/db/SelectManager$SelectInfo;",
            ">;Z)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/pantech/app/music/list/MusicItemInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1317
    .local p0, "selectList":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/pantech/app/music/list/db/SelectManager$SelectInfo;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1318
    .local v0, "dupCheckTable":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Boolean;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1320
    .local v1, "itemList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/pantech/app/music/list/MusicItemInfo;>;"
    new-instance v2, Lcom/pantech/app/music/list/db/SelectManager$3;

    invoke-direct {v2, v1}, Lcom/pantech/app/music/list/db/SelectManager$3;-><init>(Ljava/util/ArrayList;)V

    invoke-static {p0, v2}, Lcom/pantech/app/music/list/db/SelectManager;->makeContentSelectInfoList(Ljava/util/Collection;Lcom/pantech/app/music/list/db/SelectManager$MakeSelectListTemplate;)V

    .line 1330
    return-object v1
.end method

.method public static getSelectedUriLists(Ljava/util/Collection;ZLcom/pantech/app/music/list/db/SelectManager$CheckDrmListListener;)Ljava/util/ArrayList;
    .registers 6
    .param p1, "checkDrm"    # Z
    .param p2, "listener"    # Lcom/pantech/app/music/list/db/SelectManager$CheckDrmListListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/pantech/app/music/list/db/SelectManager$SelectInfo;",
            ">;Z",
            "Lcom/pantech/app/music/list/db/SelectManager$CheckDrmListListener;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1213
    .local p0, "selectList":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/pantech/app/music/list/db/SelectManager$SelectInfo;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1215
    .local v1, "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1217
    .local v0, "dupCheckTable":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Boolean;>;"
    new-instance v2, Lcom/pantech/app/music/list/db/SelectManager$2;

    invoke-direct {v2, p1, v1}, Lcom/pantech/app/music/list/db/SelectManager$2;-><init>(ZLjava/util/ArrayList;)V

    invoke-static {p0, v2}, Lcom/pantech/app/music/list/db/SelectManager;->makeContentSelectInfoList(Ljava/util/Collection;Lcom/pantech/app/music/list/db/SelectManager$MakeSelectListTemplate;)V

    .line 1246
    if-eqz p2, :cond_26

    if-eqz p1, :cond_26

    sget v2, Lcom/pantech/app/music/list/db/SelectManager;->mDrmContentsCount:I

    if-lez v2, :cond_26

    .line 1248
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_2a

    .line 1250
    const v2, 0x7f0800e2

    invoke-interface {p2, v2}, Lcom/pantech/app/music/list/db/SelectManager$CheckDrmListListener;->onDrmExists(I)V

    .line 1258
    :cond_26
    :goto_26
    const/4 v2, 0x0

    sput v2, Lcom/pantech/app/music/list/db/SelectManager;->mDrmContentsCount:I

    .line 1260
    return-object v1

    .line 1252
    :cond_2a
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_26

    .line 1254
    const v2, 0x7f0800de

    invoke-interface {p2, v2}, Lcom/pantech/app/music/list/db/SelectManager$CheckDrmListListener;->onDrmExists(I)V

    goto :goto_26
.end method

.method private isSelected(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Landroid/database/Cursor;Ljava/lang/Object;)Z
    .registers 9
    .param p1, "category"    # Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "cursroLock"    # Ljava/lang/Object;

    .prologue
    .line 551
    monitor-enter p3

    .line 553
    :try_start_1
    invoke-virtual {p1}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->isGroup()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 555
    invoke-virtual {p1, p2, p3}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->getGroupID(Landroid/database/Cursor;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 557
    .local v0, "groupID":Ljava/lang/String;
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/pantech/app/music/list/db/SelectManager;->isSelected(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    monitor-exit p3

    .line 571
    .end local v0    # "groupID":Ljava/lang/String;
    :goto_11
    return v1

    .line 561
    :cond_12
    invoke-static {p1, p2}, Lcom/pantech/app/music/list/db/CursorUtils;->getMediaID(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Landroid/database/Cursor;)J

    move-result-wide v2

    .line 563
    .local v2, "mediaID":J
    invoke-virtual {p1}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->isGroupChild()Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 565
    invoke-virtual {p1, p2, p3}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->getGroupID(Landroid/database/Cursor;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 567
    .restart local v0    # "groupID":Ljava/lang/String;
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/pantech/app/music/list/db/SelectManager;->isSelected(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    monitor-exit p3

    goto :goto_11

    .line 574
    .end local v0    # "groupID":Ljava/lang/String;
    .end local v2    # "mediaID":J
    :catchall_2a
    move-exception v1

    monitor-exit p3
    :try_end_2c
    .catchall {:try_start_1 .. :try_end_2c} :catchall_2a

    throw v1

    .line 571
    .restart local v2    # "mediaID":J
    :cond_2d
    const/4 v1, 0x0

    :try_start_2e
    check-cast v1, Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, p1, v1, v4}, Lcom/pantech/app/music/list/db/SelectManager;->isSelected(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    monitor-exit p3
    :try_end_39
    .catchall {:try_start_2e .. :try_end_39} :catchall_2a

    goto :goto_11
.end method

.method public static makeContentSelectInfoList(Ljava/util/Collection;Lcom/pantech/app/music/list/db/SelectManager$MakeSelectListTemplate;)V
    .registers 16
    .param p1, "templete"    # Lcom/pantech/app/music/list/db/SelectManager$MakeSelectListTemplate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/pantech/app/music/list/db/SelectManager$SelectInfo;",
            ">;",
            "Lcom/pantech/app/music/list/db/SelectManager$MakeSelectListTemplate;",
            ")V"
        }
    .end annotation

    .prologue
    .local p0, "selectList":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/pantech/app/music/list/db/SelectManager$SelectInfo;>;"
    const-wide/16 v12, 0x0

    const/4 v10, 0x1

    .line 1275
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 1277
    .local v3, "dupCheckTable":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Boolean;>;"
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_c
    :goto_c
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_93

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/pantech/app/music/list/db/SelectManager$SelectInfo;

    .line 1279
    .local v7, "parentInfo":Lcom/pantech/app/music/list/db/SelectManager$SelectInfo;
    instance-of v8, v7, Lcom/pantech/app/music/list/db/SelectManager$GroupSelectInfo;

    if-eqz v8, :cond_62

    move-object v4, v7

    .line 1281
    check-cast v4, Lcom/pantech/app/music/list/db/SelectManager$GroupSelectInfo;

    .line 1283
    .local v4, "groupInfo":Lcom/pantech/app/music/list/db/SelectManager$GroupSelectInfo;
    iget-object v8, v4, Lcom/pantech/app/music/list/db/SelectManager$GroupSelectInfo;->mChildTable:Lcom/pantech/app/music/list/component/ArrayListMap;

    invoke-static {v8}, Lcom/pantech/app/music/list/db/SelectManager;->getSelectedChildList(Lcom/pantech/app/music/list/component/ArrayListMap;)Ljava/util/Collection;

    move-result-object v1

    .line 1285
    .local v1, "childContentsList":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/pantech/app/music/list/db/SelectManager$ContentSelectInfo;>;"
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_29
    :goto_29
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_c

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/music/list/db/SelectManager$ContentSelectInfo;

    .line 1287
    .local v0, "childContentsInfo":Lcom/pantech/app/music/list/db/SelectManager$ContentSelectInfo;
    iget-object v8, v0, Lcom/pantech/app/music/list/db/SelectManager$ContentSelectInfo;->mCntInfo:Lcom/pantech/app/music/list/MusicItemInfo;

    if-eqz v8, :cond_29

    .line 1289
    iget-object v8, v0, Lcom/pantech/app/music/list/db/SelectManager$ContentSelectInfo;->mCntInfo:Lcom/pantech/app/music/list/MusicItemInfo;

    iget-wide v8, v8, Lcom/pantech/app/music/list/MusicItemInfo;->lAudioID:J

    cmp-long v8, v8, v12

    if-lez v8, :cond_29

    iget-object v8, v0, Lcom/pantech/app/music/list/db/SelectManager$ContentSelectInfo;->mCntInfo:Lcom/pantech/app/music/list/MusicItemInfo;

    iget-wide v8, v8, Lcom/pantech/app/music/list/MusicItemInfo;->lAudioID:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_29

    .line 1291
    iget-object v8, v0, Lcom/pantech/app/music/list/db/SelectManager$ContentSelectInfo;->mCntInfo:Lcom/pantech/app/music/list/MusicItemInfo;

    iget-wide v8, v8, Lcom/pantech/app/music/list/MusicItemInfo;->lAudioID:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1293
    invoke-interface {p1, v0}, Lcom/pantech/app/music/list/db/SelectManager$MakeSelectListTemplate;->process(Lcom/pantech/app/music/list/db/SelectManager$ContentSelectInfo;)V

    goto :goto_29

    .end local v0    # "childContentsInfo":Lcom/pantech/app/music/list/db/SelectManager$ContentSelectInfo;
    .end local v1    # "childContentsList":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/pantech/app/music/list/db/SelectManager$ContentSelectInfo;>;"
    .end local v4    # "groupInfo":Lcom/pantech/app/music/list/db/SelectManager$GroupSelectInfo;
    .end local v6    # "i$":Ljava/util/Iterator;
    :cond_62
    move-object v2, v7

    .line 1300
    check-cast v2, Lcom/pantech/app/music/list/db/SelectManager$ContentSelectInfo;

    .line 1302
    .local v2, "contentsInfo":Lcom/pantech/app/music/list/db/SelectManager$ContentSelectInfo;
    iget-object v8, v2, Lcom/pantech/app/music/list/db/SelectManager$ContentSelectInfo;->mCntInfo:Lcom/pantech/app/music/list/MusicItemInfo;

    if-eqz v8, :cond_c

    .line 1304
    iget-object v8, v2, Lcom/pantech/app/music/list/db/SelectManager$ContentSelectInfo;->mCntInfo:Lcom/pantech/app/music/list/MusicItemInfo;

    iget-wide v8, v8, Lcom/pantech/app/music/list/MusicItemInfo;->lAudioID:J

    cmp-long v8, v8, v12

    if-lez v8, :cond_c

    iget-object v8, v2, Lcom/pantech/app/music/list/db/SelectManager$ContentSelectInfo;->mCntInfo:Lcom/pantech/app/music/list/MusicItemInfo;

    iget-wide v8, v8, Lcom/pantech/app/music/list/MusicItemInfo;->lAudioID:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_c

    .line 1306
    iget-object v8, v2, Lcom/pantech/app/music/list/db/SelectManager$ContentSelectInfo;->mCntInfo:Lcom/pantech/app/music/list/MusicItemInfo;

    iget-wide v8, v8, Lcom/pantech/app/music/list/MusicItemInfo;->lAudioID:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1308
    invoke-interface {p1, v2}, Lcom/pantech/app/music/list/db/SelectManager$MakeSelectListTemplate;->process(Lcom/pantech/app/music/list/db/SelectManager$ContentSelectInfo;)V

    goto/16 :goto_c

    .line 1313
    .end local v2    # "contentsInfo":Lcom/pantech/app/music/list/db/SelectManager$ContentSelectInfo;
    .end local v7    # "parentInfo":Lcom/pantech/app/music/list/db/SelectManager$SelectInfo;
    :cond_93
    return-void
.end method

.method public static declared-synchronized makeSelectionList(Landroid/content/Context;Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Landroid/database/Cursor;IILjava/lang/Object;)Ljava/util/Collection;
    .registers 16
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "category"    # Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "start"    # I
    .param p4, "size"    # I
    .param p5, "cursorLock"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;",
            "Landroid/database/Cursor;",
            "II",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Lcom/pantech/app/music/list/db/SelectManager$SelectInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 1117
    const-class v7, Lcom/pantech/app/music/list/db/SelectManager;

    monitor-enter v7

    :try_start_4
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1119
    .local v5, "selectedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/pantech/app/music/list/db/SelectManager$SelectInfo;>;"
    if-nez p5, :cond_11

    .line 1120
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .end local p5    # "cursorLock":Ljava/lang/Object;
    .local v1, "cursorLock":Ljava/lang/Object;
    move-object p5, v1

    .line 1122
    .end local v1    # "cursorLock":Ljava/lang/Object;
    .restart local p5    # "cursorLock":Ljava/lang/Object;
    :cond_11
    monitor-enter p5
    :try_end_12
    .catchall {:try_start_4 .. :try_end_12} :catchall_102

    .line 1124
    if-eqz p2, :cond_105

    .line 1126
    :try_start_14
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 1128
    .local v0, "count":I
    if-le p3, v0, :cond_1e

    .line 1129
    monitor-exit p5
    :try_end_1b
    .catchall {:try_start_14 .. :try_end_1b} :catchall_ff

    move-object v5, v6

    .line 1204
    .end local v0    # "count":I
    .end local v5    # "selectedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/pantech/app/music/list/db/SelectManager$SelectInfo;>;"
    :goto_1c
    monitor-exit v7

    return-object v5

    .line 1132
    .restart local v0    # "count":I
    .restart local v5    # "selectedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/pantech/app/music/list/db/SelectManager$SelectInfo;>;"
    :cond_1e
    add-int v8, p3, p4

    if-le v8, v0, :cond_24

    .line 1134
    sub-int p4, v0, p3

    .line 1137
    :cond_24
    if-gtz p4, :cond_29

    .line 1138
    :try_start_26
    monitor-exit p5

    move-object v5, v6

    goto :goto_1c

    .line 1141
    :cond_29
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "makeSelectParam start="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " size="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/pantech/app/music/utils/MLog;->i(Ljava/lang/String;)V

    .line 1143
    invoke-virtual {p1}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->isGroup()Z

    move-result v6

    if-eqz v6, :cond_70

    .line 1145
    invoke-interface {p2, p3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1146
    invoke-virtual {p1, p2, p5}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->getGroupID(Landroid/database/Cursor;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1148
    .local v2, "groupID":Ljava/lang/String;
    move v4, p3

    .local v4, "i":I
    :goto_57
    if-eqz p2, :cond_105

    add-int v6, p4, p3

    if-ge v4, v6, :cond_105

    .line 1150
    invoke-interface {p2, v4}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1152
    new-instance v3, Lcom/pantech/app/music/list/db/SelectManager$GroupSelectInfo;

    const/4 v6, 0x0

    invoke-direct {v3, p1, v2, v6}, Lcom/pantech/app/music/list/db/SelectManager$GroupSelectInfo;-><init>(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Ljava/lang/String;I)V

    .line 1154
    .local v3, "groupInfo":Lcom/pantech/app/music/list/db/SelectManager$GroupSelectInfo;
    const/4 v6, 0x0

    invoke-virtual {v3, p0, v6}, Lcom/pantech/app/music/list/db/SelectManager$GroupSelectInfo;->selectChildAll(Landroid/content/Context;Ljava/util/concurrent/locks/ReentrantReadWriteLock;)I

    .line 1156
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1148
    add-int/lit8 v4, v4, 0x1

    goto :goto_57

    .line 1161
    .end local v2    # "groupID":Ljava/lang/String;
    .end local v3    # "groupInfo":Lcom/pantech/app/music/list/db/SelectManager$GroupSelectInfo;
    .end local v4    # "i":I
    :cond_70
    const/4 v2, 0x0

    .line 1163
    .restart local v2    # "groupID":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->isGroupChild()Z

    move-result v6

    if-eqz v6, :cond_93

    .line 1165
    invoke-interface {p2, p3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1166
    invoke-virtual {p1, p2, p5}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->getGroupID(Landroid/database/Cursor;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1195
    :goto_7e
    move v4, p3

    .restart local v4    # "i":I
    :goto_7f
    if-eqz p2, :cond_105

    add-int v6, p4, p3

    if-ge v4, v6, :cond_105

    .line 1197
    invoke-interface {p2, v4}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1198
    new-instance v6, Lcom/pantech/app/music/list/db/SelectManager$ContentSelectInfo;

    invoke-direct {v6, p1, v2, p2}, Lcom/pantech/app/music/list/db/SelectManager$ContentSelectInfo;-><init>(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Ljava/lang/String;Landroid/database/Cursor;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1195
    add-int/lit8 v4, v4, 0x1

    goto :goto_7f

    .line 1168
    .end local v4    # "i":I
    :cond_93
    sget-object v6, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_MOSTPLAYED:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-virtual {p1, v6}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a1

    .line 1170
    const/4 v6, -0x5

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_7e

    .line 1172
    :cond_a1
    sget-object v6, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_RECENTLY_ADDED:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-virtual {p1, v6}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_af

    .line 1174
    const/4 v6, -0x4

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_7e

    .line 1176
    :cond_af
    sget-object v6, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_PODCAST:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-virtual {p1, v6}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_bd

    .line 1178
    const/4 v6, -0x3

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_7e

    .line 1180
    :cond_bd
    sget-object v6, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_FAVORITES:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-virtual {p1, v6}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_cb

    .line 1182
    const/4 v6, -0x6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_7e

    .line 1184
    :cond_cb
    sget-object v6, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_UBOX:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-virtual {p1, v6}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_e3

    sget-object v6, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_SONG:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-virtual {p1, v6}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_e3

    sget-object v6, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_NOWPLAYING:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-virtual {p1, v6}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e6

    .line 1188
    :cond_e3
    const-string v2, ""

    goto :goto_7e

    .line 1192
    :cond_e6
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Illegal Category : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1202
    .end local v0    # "count":I
    .end local v2    # "groupID":Ljava/lang/String;
    :catchall_ff
    move-exception v6

    monitor-exit p5
    :try_end_101
    .catchall {:try_start_26 .. :try_end_101} :catchall_ff

    :try_start_101
    throw v6
    :try_end_102
    .catchall {:try_start_101 .. :try_end_102} :catchall_102

    .line 1117
    .end local v5    # "selectedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/pantech/app/music/list/db/SelectManager$SelectInfo;>;"
    :catchall_102
    move-exception v6

    monitor-exit v7

    throw v6

    .line 1202
    .restart local v5    # "selectedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/pantech/app/music/list/db/SelectManager$SelectInfo;>;"
    :cond_105
    :try_start_105
    monitor-exit p5
    :try_end_106
    .catchall {:try_start_105 .. :try_end_106} :catchall_ff

    goto/16 :goto_1c
.end method

.method private remove(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Landroid/database/Cursor;Ljava/lang/Object;)V
    .registers 9
    .param p1, "category"    # Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "cursroLock"    # Ljava/lang/Object;

    .prologue
    .line 501
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SelectManager:remove:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/pantech/app/music/utils/MLog;->i(Ljava/lang/String;)V

    .line 503
    monitor-enter p3

    .line 505
    :try_start_17
    invoke-virtual {p1}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->isGroup()Z

    move-result v1

    if-eqz v1, :cond_26

    .line 507
    invoke-virtual {p1, p2, p3}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->getGroupID(Landroid/database/Cursor;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 509
    .local v0, "groupID":Ljava/lang/String;
    invoke-direct {p0, p1, v0}, Lcom/pantech/app/music/list/db/SelectManager;->remove(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Ljava/lang/String;)V

    .line 526
    .end local v0    # "groupID":Ljava/lang/String;
    :goto_24
    monitor-exit p3

    .line 527
    return-void

    .line 513
    :cond_26
    invoke-static {p1, p2}, Lcom/pantech/app/music/list/db/CursorUtils;->getMediaID(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Landroid/database/Cursor;)J

    move-result-wide v2

    .line 515
    .local v2, "mediaID":J
    invoke-virtual {p1}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->isGroupChild()Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 517
    invoke-virtual {p1, p2, p3}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->getGroupID(Landroid/database/Cursor;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 519
    .restart local v0    # "groupID":Ljava/lang/String;
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/pantech/app/music/list/db/SelectManager;->remove(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_24

    .line 526
    .end local v0    # "groupID":Ljava/lang/String;
    .end local v2    # "mediaID":J
    :catchall_3c
    move-exception v1

    monitor-exit p3
    :try_end_3e
    .catchall {:try_start_17 .. :try_end_3e} :catchall_3c

    throw v1

    .line 523
    .restart local v2    # "mediaID":J
    :cond_3f
    :try_start_3f
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/pantech/app/music/list/db/SelectManager;->remove(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Ljava/lang/String;)V
    :try_end_46
    .catchall {:try_start_3f .. :try_end_46} :catchall_3c

    goto :goto_24
.end method

.method private remove(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Ljava/lang/String;)V
    .registers 5
    .param p1, "category"    # Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;
    .param p2, "parentID"    # Ljava/lang/String;

    .prologue
    .line 464
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SelectManager:remove:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " parentID:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/pantech/app/music/utils/MLog;->i(Ljava/lang/String;)V

    .line 466
    iget-object v0, p0, Lcom/pantech/app/music/list/db/SelectManager;->mSyncLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 468
    invoke-virtual {p0, p1}, Lcom/pantech/app/music/list/db/SelectManager;->getGroupSelectionTable(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;)Lcom/pantech/app/music/list/component/ArrayListMap;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/pantech/app/music/list/component/ArrayListMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 470
    iget-object v0, p0, Lcom/pantech/app/music/list/db/SelectManager;->mSyncLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 471
    return-void
.end method

.method private remove(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "category"    # Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;
    .param p2, "groupID"    # Ljava/lang/String;
    .param p3, "audioID"    # Ljava/lang/String;

    .prologue
    .line 476
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SelectManager:remove:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " groupID:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " audioID"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/pantech/app/music/utils/MLog;->i(Ljava/lang/String;)V

    .line 478
    iget-object v1, p0, Lcom/pantech/app/music/list/db/SelectManager;->mSyncLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 480
    invoke-virtual {p0, p1}, Lcom/pantech/app/music/list/db/SelectManager;->getGroupSelectionTable(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;)Lcom/pantech/app/music/list/component/ArrayListMap;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/pantech/app/music/list/component/ArrayListMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/music/list/db/SelectManager$GroupSelectInfo;

    .line 482
    .local v0, "groupInfo":Lcom/pantech/app/music/list/db/SelectManager$GroupSelectInfo;
    if-eqz v0, :cond_57

    .line 484
    iget-object v1, v0, Lcom/pantech/app/music/list/db/SelectManager$GroupSelectInfo;->mChildTable:Lcom/pantech/app/music/list/component/ArrayListMap;

    if-eqz v1, :cond_57

    .line 486
    iget-object v1, v0, Lcom/pantech/app/music/list/db/SelectManager$GroupSelectInfo;->mChildTable:Lcom/pantech/app/music/list/component/ArrayListMap;

    invoke-virtual {v1, p3}, Lcom/pantech/app/music/list/component/ArrayListMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 488
    iget-object v1, v0, Lcom/pantech/app/music/list/db/SelectManager$GroupSelectInfo;->mChildTable:Lcom/pantech/app/music/list/component/ArrayListMap;

    invoke-virtual {v1}, Lcom/pantech/app/music/list/component/ArrayListMap;->size()I

    move-result v1

    if-nez v1, :cond_57

    .line 490
    invoke-virtual {p0, p1}, Lcom/pantech/app/music/list/db/SelectManager;->getGroupSelectionTable(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;)Lcom/pantech/app/music/list/component/ArrayListMap;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/pantech/app/music/list/component/ArrayListMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 495
    :cond_57
    iget-object v1, p0, Lcom/pantech/app/music/list/db/SelectManager;->mSyncLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 496
    return-void
.end method


# virtual methods
.method public clear()V
    .registers 9

    .prologue
    .line 1030
    const-string v6, "Clear"

    invoke-static {v6}, Lcom/pantech/app/music/utils/MLog;->e(Ljava/lang/String;)V

    .line 1032
    iget-object v6, p0, Lcom/pantech/app/music/list/db/SelectManager;->mSyncLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 1036
    :try_start_e
    iget-object v6, p0, Lcom/pantech/app/music/list/db/SelectManager;->mCategorySelectionTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v6}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_18
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_55

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pantech/app/music/list/component/ArrayListMap;

    .line 1038
    .local v1, "categoryTable":Lcom/pantech/app/music/list/component/ArrayListMap;, "Lcom/pantech/app/music/list/component/ArrayListMap<Ljava/lang/String;Lcom/pantech/app/music/list/db/SelectManager$SelectInfo;>;"
    invoke-virtual {v1}, Lcom/pantech/app/music/list/component/ArrayListMap;->values()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_2c
    :goto_2c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_51

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/pantech/app/music/list/db/SelectManager$SelectInfo;

    .line 1040
    .local v5, "parentInfo":Lcom/pantech/app/music/list/db/SelectManager$SelectInfo;
    instance-of v6, v5, Lcom/pantech/app/music/list/db/SelectManager$GroupSelectInfo;

    if-eqz v6, :cond_2c

    .line 1042
    move-object v0, v5

    check-cast v0, Lcom/pantech/app/music/list/db/SelectManager$GroupSelectInfo;

    move-object v2, v0

    .line 1044
    .local v2, "groupInfo":Lcom/pantech/app/music/list/db/SelectManager$GroupSelectInfo;
    iget-object v6, v2, Lcom/pantech/app/music/list/db/SelectManager$GroupSelectInfo;->mChildTable:Lcom/pantech/app/music/list/component/ArrayListMap;

    invoke-virtual {v6}, Lcom/pantech/app/music/list/component/ArrayListMap;->clear()V
    :try_end_45
    .catchall {:try_start_e .. :try_end_45} :catchall_46

    goto :goto_2c

    .line 1055
    .end local v1    # "categoryTable":Lcom/pantech/app/music/list/component/ArrayListMap;, "Lcom/pantech/app/music/list/component/ArrayListMap<Ljava/lang/String;Lcom/pantech/app/music/list/db/SelectManager$SelectInfo;>;"
    .end local v2    # "groupInfo":Lcom/pantech/app/music/list/db/SelectManager$GroupSelectInfo;
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "parentInfo":Lcom/pantech/app/music/list/db/SelectManager$SelectInfo;
    :catchall_46
    move-exception v6

    iget-object v7, p0, Lcom/pantech/app/music/list/db/SelectManager;->mSyncLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v7}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v6

    .line 1048
    .restart local v1    # "categoryTable":Lcom/pantech/app/music/list/component/ArrayListMap;, "Lcom/pantech/app/music/list/component/ArrayListMap<Ljava/lang/String;Lcom/pantech/app/music/list/db/SelectManager$SelectInfo;>;"
    .restart local v4    # "i$":Ljava/util/Iterator;
    :cond_51
    :try_start_51
    invoke-virtual {v1}, Lcom/pantech/app/music/list/component/ArrayListMap;->clear()V

    goto :goto_18

    .line 1051
    .end local v1    # "categoryTable":Lcom/pantech/app/music/list/component/ArrayListMap;, "Lcom/pantech/app/music/list/component/ArrayListMap<Ljava/lang/String;Lcom/pantech/app/music/list/db/SelectManager$SelectInfo;>;"
    .end local v4    # "i$":Ljava/util/Iterator;
    :cond_55
    iget-object v6, p0, Lcom/pantech/app/music/list/db/SelectManager;->mCategorySelectionTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v6}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V
    :try_end_5a
    .catchall {:try_start_51 .. :try_end_5a} :catchall_46

    .line 1055
    iget-object v6, p0, Lcom/pantech/app/music/list/db/SelectManager;->mSyncLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 1057
    return-void
.end method

.method public clear(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;)V
    .registers 9
    .param p1, "category"    # Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    .prologue
    .line 1062
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Clear category:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/pantech/app/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 1064
    iget-object v5, p0, Lcom/pantech/app/music/list/db/SelectManager;->mSyncLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 1068
    :try_start_1f
    invoke-virtual {p0, p1}, Lcom/pantech/app/music/list/db/SelectManager;->getGroupSelectionTable(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;)Lcom/pantech/app/music/list/component/ArrayListMap;

    move-result-object v1

    .line 1070
    .local v1, "categoryTable":Lcom/pantech/app/music/list/component/ArrayListMap;, "Lcom/pantech/app/music/list/component/ArrayListMap<Ljava/lang/String;Lcom/pantech/app/music/list/db/SelectManager$SelectInfo;>;"
    invoke-virtual {p1}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->isGroup()Z

    move-result v5

    if-eqz v5, :cond_56

    .line 1072
    invoke-virtual {v1}, Lcom/pantech/app/music/list/component/ArrayListMap;->values()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_31
    :goto_31
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_56

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/pantech/app/music/list/db/SelectManager$SelectInfo;

    .line 1074
    .local v4, "parentInfo":Lcom/pantech/app/music/list/db/SelectManager$SelectInfo;
    instance-of v5, v4, Lcom/pantech/app/music/list/db/SelectManager$GroupSelectInfo;

    if-eqz v5, :cond_31

    .line 1076
    move-object v0, v4

    check-cast v0, Lcom/pantech/app/music/list/db/SelectManager$GroupSelectInfo;

    move-object v2, v0

    .line 1078
    .local v2, "groupInfo":Lcom/pantech/app/music/list/db/SelectManager$GroupSelectInfo;
    iget-object v5, v2, Lcom/pantech/app/music/list/db/SelectManager$GroupSelectInfo;->mChildTable:Lcom/pantech/app/music/list/component/ArrayListMap;

    invoke-virtual {v5}, Lcom/pantech/app/music/list/component/ArrayListMap;->clear()V
    :try_end_4a
    .catchall {:try_start_1f .. :try_end_4a} :catchall_4b

    goto :goto_31

    .line 1087
    .end local v1    # "categoryTable":Lcom/pantech/app/music/list/component/ArrayListMap;, "Lcom/pantech/app/music/list/component/ArrayListMap<Ljava/lang/String;Lcom/pantech/app/music/list/db/SelectManager$SelectInfo;>;"
    .end local v2    # "groupInfo":Lcom/pantech/app/music/list/db/SelectManager$GroupSelectInfo;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "parentInfo":Lcom/pantech/app/music/list/db/SelectManager$SelectInfo;
    :catchall_4b
    move-exception v5

    iget-object v6, p0, Lcom/pantech/app/music/list/db/SelectManager;->mSyncLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v5

    .line 1083
    .restart local v1    # "categoryTable":Lcom/pantech/app/music/list/component/ArrayListMap;, "Lcom/pantech/app/music/list/component/ArrayListMap<Ljava/lang/String;Lcom/pantech/app/music/list/db/SelectManager$SelectInfo;>;"
    :cond_56
    :try_start_56
    invoke-virtual {p0, p1}, Lcom/pantech/app/music/list/db/SelectManager;->getGroupSelectionTable(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;)Lcom/pantech/app/music/list/component/ArrayListMap;

    move-result-object v5

    invoke-virtual {v5}, Lcom/pantech/app/music/list/component/ArrayListMap;->clear()V
    :try_end_5d
    .catchall {:try_start_56 .. :try_end_5d} :catchall_4b

    .line 1087
    iget-object v5, p0, Lcom/pantech/app/music/list/db/SelectManager;->mSyncLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 1089
    return-void
.end method

.method public clear(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Ljava/lang/String;)V
    .registers 8
    .param p1, "category"    # Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;
    .param p2, "groupID"    # Ljava/lang/String;

    .prologue
    .line 1094
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Clear category:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " groupID:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/pantech/app/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 1096
    iget-object v3, p0, Lcom/pantech/app/music/list/db/SelectManager;->mSyncLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 1100
    :try_start_29
    invoke-virtual {p0, p1}, Lcom/pantech/app/music/list/db/SelectManager;->getGroupSelectionTable(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;)Lcom/pantech/app/music/list/component/ArrayListMap;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/pantech/app/music/list/component/ArrayListMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pantech/app/music/list/db/SelectManager$SelectInfo;

    .line 1102
    .local v2, "parentInfo":Lcom/pantech/app/music/list/db/SelectManager$SelectInfo;
    instance-of v3, v2, Lcom/pantech/app/music/list/db/SelectManager$GroupSelectInfo;

    if-eqz v3, :cond_40

    .line 1104
    move-object v0, v2

    check-cast v0, Lcom/pantech/app/music/list/db/SelectManager$GroupSelectInfo;

    move-object v1, v0

    .line 1106
    .local v1, "groupInfo":Lcom/pantech/app/music/list/db/SelectManager$GroupSelectInfo;
    iget-object v3, v1, Lcom/pantech/app/music/list/db/SelectManager$GroupSelectInfo;->mChildTable:Lcom/pantech/app/music/list/component/ArrayListMap;

    invoke-virtual {v3}, Lcom/pantech/app/music/list/component/ArrayListMap;->clear()V
    :try_end_40
    .catchall {:try_start_29 .. :try_end_40} :catchall_4a

    .line 1111
    .end local v1    # "groupInfo":Lcom/pantech/app/music/list/db/SelectManager$GroupSelectInfo;
    :cond_40
    iget-object v3, p0, Lcom/pantech/app/music/list/db/SelectManager;->mSyncLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 1113
    return-void

    .line 1111
    .end local v2    # "parentInfo":Lcom/pantech/app/music/list/db/SelectManager$SelectInfo;
    :catchall_4a
    move-exception v3

    iget-object v4, p0, Lcom/pantech/app/music/list/db/SelectManager;->mSyncLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v3
.end method

.method public getAllChildCount(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;)I
    .registers 11
    .param p1, "category"    # Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    .prologue
    .line 971
    iget-object v7, p0, Lcom/pantech/app/music/list/db/SelectManager;->mSyncLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v7}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 975
    const/4 v5, 0x0

    .line 977
    .local v5, "size":I
    :try_start_a
    invoke-virtual {p1}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->isGroup()Z

    move-result v7

    if-eqz v7, :cond_43

    .line 979
    invoke-virtual {p0, p1}, Lcom/pantech/app/music/list/db/SelectManager;->getGroupSelectionTable(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;)Lcom/pantech/app/music/list/component/ArrayListMap;
    :try_end_13
    .catchall {:try_start_a .. :try_end_13} :catchall_4e

    move-result-object v4

    .line 981
    .local v4, "parentList":Lcom/pantech/app/music/list/component/ArrayListMap;, "Lcom/pantech/app/music/list/component/ArrayListMap<Ljava/lang/String;Lcom/pantech/app/music/list/db/SelectManager$SelectInfo;>;"
    if-nez v4, :cond_21

    .line 998
    iget-object v7, p0, Lcom/pantech/app/music/list/db/SelectManager;->mSyncLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v7}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    move v6, v5

    .end local v4    # "parentList":Lcom/pantech/app/music/list/component/ArrayListMap;, "Lcom/pantech/app/music/list/component/ArrayListMap<Ljava/lang/String;Lcom/pantech/app/music/list/db/SelectManager$SelectInfo;>;"
    .end local v5    # "size":I
    .local v6, "size":I
    :goto_20
    return v6

    .line 983
    .end local v6    # "size":I
    .restart local v4    # "parentList":Lcom/pantech/app/music/list/component/ArrayListMap;, "Lcom/pantech/app/music/list/component/ArrayListMap<Ljava/lang/String;Lcom/pantech/app/music/list/db/SelectManager$SelectInfo;>;"
    .restart local v5    # "size":I
    :cond_21
    :try_start_21
    invoke-virtual {v4}, Lcom/pantech/app/music/list/component/ArrayListMap;->values()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_29
    :goto_29
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_43

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/pantech/app/music/list/db/SelectManager$SelectInfo;

    .line 985
    .local v3, "parentInfo":Lcom/pantech/app/music/list/db/SelectManager$SelectInfo;
    instance-of v7, v3, Lcom/pantech/app/music/list/db/SelectManager$GroupSelectInfo;

    if-eqz v7, :cond_29

    .line 987
    move-object v0, v3

    check-cast v0, Lcom/pantech/app/music/list/db/SelectManager$GroupSelectInfo;

    move-object v1, v0

    .line 989
    .local v1, "groupInfo":Lcom/pantech/app/music/list/db/SelectManager$GroupSelectInfo;
    invoke-virtual {v1}, Lcom/pantech/app/music/list/db/SelectManager$GroupSelectInfo;->getChildCount()I
    :try_end_40
    .catchall {:try_start_21 .. :try_end_40} :catchall_4e

    move-result v7

    add-int/2addr v5, v7

    goto :goto_29

    .line 998
    .end local v1    # "groupInfo":Lcom/pantech/app/music/list/db/SelectManager$GroupSelectInfo;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "parentInfo":Lcom/pantech/app/music/list/db/SelectManager$SelectInfo;
    .end local v4    # "parentList":Lcom/pantech/app/music/list/component/ArrayListMap;, "Lcom/pantech/app/music/list/component/ArrayListMap<Ljava/lang/String;Lcom/pantech/app/music/list/db/SelectManager$SelectInfo;>;"
    :cond_43
    iget-object v7, p0, Lcom/pantech/app/music/list/db/SelectManager;->mSyncLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v7}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    move v6, v5

    .end local v5    # "size":I
    .restart local v6    # "size":I
    goto :goto_20

    .end local v6    # "size":I
    .restart local v5    # "size":I
    :catchall_4e
    move-exception v7

    iget-object v8, p0, Lcom/pantech/app/music/list/db/SelectManager;->mSyncLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v8}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v7
.end method

.method public getAllCount(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;)Lcom/pantech/app/music/list/db/SelectManager$ContentsSelectCountInfo;
    .registers 12
    .param p1, "category"    # Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    .prologue
    .line 941
    iget-object v6, p0, Lcom/pantech/app/music/list/db/SelectManager;->mSyncLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 943
    const/4 v0, 0x0

    .line 944
    .local v0, "allContentsCount":I
    const/4 v1, 0x0

    .line 945
    .local v1, "allSelectedCount":I
    const/4 v5, 0x0

    .line 949
    .local v5, "parentSelectedCount":I
    :try_start_c
    invoke-virtual {p0, p1}, Lcom/pantech/app/music/list/db/SelectManager;->getGroupSelectionTable(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;)Lcom/pantech/app/music/list/component/ArrayListMap;

    move-result-object v4

    .line 951
    .local v4, "parentList":Lcom/pantech/app/music/list/component/ArrayListMap;, "Lcom/pantech/app/music/list/component/ArrayListMap<Ljava/lang/String;Lcom/pantech/app/music/list/db/SelectManager$SelectInfo;>;"
    if-nez v4, :cond_24

    new-instance v6, Lcom/pantech/app/music/list/db/SelectManager$ContentsSelectCountInfo;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct {v6, v7, v8, v9}, Lcom/pantech/app/music/list/db/SelectManager$ContentsSelectCountInfo;-><init>(III)V
    :try_end_1a
    .catchall {:try_start_c .. :try_end_1a} :catchall_5a

    .line 965
    iget-object v7, p0, Lcom/pantech/app/music/list/db/SelectManager;->mSyncLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v7}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    :goto_23
    return-object v6

    .line 953
    :cond_24
    :try_start_24
    invoke-virtual {v4}, Lcom/pantech/app/music/list/component/ArrayListMap;->values()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_2c
    :goto_2c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/pantech/app/music/list/db/SelectManager$SelectInfo;

    .line 955
    .local v3, "parentInfo":Lcom/pantech/app/music/list/db/SelectManager$SelectInfo;
    invoke-virtual {v3}, Lcom/pantech/app/music/list/db/SelectManager$SelectInfo;->getAllContentsCount()I

    move-result v6

    add-int/2addr v0, v6

    .line 956
    invoke-virtual {v3}, Lcom/pantech/app/music/list/db/SelectManager$SelectInfo;->getSelectedContentsCount()I

    move-result v6

    add-int/2addr v1, v6

    .line 957
    invoke-virtual {v3}, Lcom/pantech/app/music/list/db/SelectManager$SelectInfo;->isSelected()Z

    move-result v6

    if-eqz v6, :cond_2c

    .line 958
    add-int/lit8 v5, v5, 0x1

    goto :goto_2c

    .line 961
    .end local v3    # "parentInfo":Lcom/pantech/app/music/list/db/SelectManager$SelectInfo;
    :cond_4b
    new-instance v6, Lcom/pantech/app/music/list/db/SelectManager$ContentsSelectCountInfo;

    invoke-direct {v6, v0, v1, v5}, Lcom/pantech/app/music/list/db/SelectManager$ContentsSelectCountInfo;-><init>(III)V
    :try_end_50
    .catchall {:try_start_24 .. :try_end_50} :catchall_5a

    .line 965
    iget-object v7, p0, Lcom/pantech/app/music/list/db/SelectManager;->mSyncLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v7}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    goto :goto_23

    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "parentList":Lcom/pantech/app/music/list/component/ArrayListMap;, "Lcom/pantech/app/music/list/component/ArrayListMap<Ljava/lang/String;Lcom/pantech/app/music/list/db/SelectManager$SelectInfo;>;"
    :catchall_5a
    move-exception v6

    iget-object v7, p0, Lcom/pantech/app/music/list/db/SelectManager;->mSyncLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v7}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v6
.end method

.method public getAllSelectedCount(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;)I
    .registers 9
    .param p1, "category"    # Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    .prologue
    .line 1004
    iget-object v5, p0, Lcom/pantech/app/music/list/db/SelectManager;->mSyncLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 1008
    const/4 v3, 0x0

    .line 1010
    .local v3, "size":I
    :try_start_a
    invoke-virtual {p0, p1}, Lcom/pantech/app/music/list/db/SelectManager;->getGroupSelectionTable(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;)Lcom/pantech/app/music/list/component/ArrayListMap;
    :try_end_d
    .catchall {:try_start_a .. :try_end_d} :catchall_40

    move-result-object v2

    .line 1012
    .local v2, "parentList":Lcom/pantech/app/music/list/component/ArrayListMap;, "Lcom/pantech/app/music/list/component/ArrayListMap<Ljava/lang/String;Lcom/pantech/app/music/list/db/SelectManager$SelectInfo;>;"
    if-nez v2, :cond_1b

    .line 1023
    iget-object v5, p0, Lcom/pantech/app/music/list/db/SelectManager;->mSyncLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    move v4, v3

    .end local v3    # "size":I
    .local v4, "size":I
    :goto_1a
    return v4

    .line 1014
    .end local v4    # "size":I
    .restart local v3    # "size":I
    :cond_1b
    :try_start_1b
    invoke-virtual {v2}, Lcom/pantech/app/music/list/component/ArrayListMap;->values()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_23
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_35

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pantech/app/music/list/db/SelectManager$SelectInfo;

    .line 1016
    .local v1, "parentInfo":Lcom/pantech/app/music/list/db/SelectManager$SelectInfo;
    invoke-virtual {v1}, Lcom/pantech/app/music/list/db/SelectManager$SelectInfo;->getSelectedContentsCount()I
    :try_end_32
    .catchall {:try_start_1b .. :try_end_32} :catchall_40

    move-result v5

    add-int/2addr v3, v5

    .line 1017
    goto :goto_23

    .line 1023
    .end local v1    # "parentInfo":Lcom/pantech/app/music/list/db/SelectManager$SelectInfo;
    :cond_35
    iget-object v5, p0, Lcom/pantech/app/music/list/db/SelectManager;->mSyncLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    move v4, v3

    .end local v3    # "size":I
    .restart local v4    # "size":I
    goto :goto_1a

    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "parentList":Lcom/pantech/app/music/list/component/ArrayListMap;, "Lcom/pantech/app/music/list/component/ArrayListMap<Ljava/lang/String;Lcom/pantech/app/music/list/db/SelectManager$SelectInfo;>;"
    .end local v4    # "size":I
    .restart local v3    # "size":I
    :catchall_40
    move-exception v5

    iget-object v6, p0, Lcom/pantech/app/music/list/db/SelectManager;->mSyncLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v5
.end method

.method public getCheckState(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;ILcom/pantech/app/music/list/db/SelectManager$ContentsSelectCountInfo;)I
    .registers 8
    .param p1, "category"    # Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;
    .param p2, "parentTotalCount"    # I
    .param p3, "contentsSelectCountInfo"    # Lcom/pantech/app/music/list/db/SelectManager$ContentsSelectCountInfo;

    .prologue
    const/4 v0, 0x2

    const/4 v1, 0x1

    .line 846
    iget-object v2, p0, Lcom/pantech/app/music/list/db/SelectManager;->mSyncLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 851
    :try_start_b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "parentTotalCount:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " contentsSelectCountInfo:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/pantech/app/music/utils/MLog;->v(Ljava/lang/String;)V
    :try_end_2b
    .catchall {:try_start_b .. :try_end_2b} :catchall_89

    .line 856
    if-gtz p2, :cond_38

    .line 857
    const/4 v0, 0x3

    .line 886
    iget-object v1, p0, Lcom/pantech/app/music/list/db/SelectManager;->mSyncLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    :goto_37
    return v0

    .line 859
    :cond_38
    :try_start_38
    invoke-virtual {p1}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->isGroup()Z

    move-result v2

    if-eqz v2, :cond_61

    .line 861
    iget v2, p3, Lcom/pantech/app/music/list/db/SelectManager$ContentsSelectCountInfo;->mParentSelectedCount:I

    if-ne v2, p2, :cond_52

    iget v2, p3, Lcom/pantech/app/music/list/db/SelectManager$ContentsSelectCountInfo;->mAllContentsCount:I

    iget v3, p3, Lcom/pantech/app/music/list/db/SelectManager$ContentsSelectCountInfo;->mAllSelectedCount:I
    :try_end_46
    .catchall {:try_start_38 .. :try_end_46} :catchall_89

    if-ne v2, v3, :cond_52

    .line 886
    iget-object v1, p0, Lcom/pantech/app/music/list/db/SelectManager;->mSyncLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    goto :goto_37

    .line 865
    :cond_52
    :try_start_52
    iget v0, p3, Lcom/pantech/app/music/list/db/SelectManager$ContentsSelectCountInfo;->mAllSelectedCount:I
    :try_end_54
    .catchall {:try_start_52 .. :try_end_54} :catchall_89

    if-lez v0, :cond_7e

    .line 886
    iget-object v0, p0, Lcom/pantech/app/music/list/db/SelectManager;->mSyncLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    move v0, v1

    goto :goto_37

    .line 872
    :cond_61
    :try_start_61
    iget v2, p3, Lcom/pantech/app/music/list/db/SelectManager$ContentsSelectCountInfo;->mAllSelectedCount:I
    :try_end_63
    .catchall {:try_start_61 .. :try_end_63} :catchall_89

    if-ne v2, p2, :cond_6f

    .line 886
    iget-object v1, p0, Lcom/pantech/app/music/list/db/SelectManager;->mSyncLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    goto :goto_37

    .line 876
    :cond_6f
    :try_start_6f
    iget v0, p3, Lcom/pantech/app/music/list/db/SelectManager$ContentsSelectCountInfo;->mAllSelectedCount:I
    :try_end_71
    .catchall {:try_start_6f .. :try_end_71} :catchall_89

    if-lez v0, :cond_7e

    .line 886
    iget-object v0, p0, Lcom/pantech/app/music/list/db/SelectManager;->mSyncLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    move v0, v1

    goto :goto_37

    .line 882
    :cond_7e
    const/4 v0, 0x0

    .line 886
    iget-object v1, p0, Lcom/pantech/app/music/list/db/SelectManager;->mSyncLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    goto :goto_37

    :catchall_89
    move-exception v0

    iget-object v1, p0, Lcom/pantech/app/music/list/db/SelectManager;->mSyncLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v0
.end method

.method public getChildSelectedRatio(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Landroid/database/Cursor;Ljava/lang/Object;)F
    .registers 8
    .param p1, "category"    # Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "cursroLock"    # Ljava/lang/Object;

    .prologue
    .line 660
    iget-object v2, p0, Lcom/pantech/app/music/list/db/SelectManager;->mSyncLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 664
    :try_start_9
    monitor-enter p3
    :try_end_a
    .catchall {:try_start_9 .. :try_end_a} :catchall_3e

    .line 666
    :try_start_a
    invoke-virtual {p1}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->isGroup()Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 668
    invoke-virtual {p1, p2, p3}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->getGroupID(Landroid/database/Cursor;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 670
    .local v0, "groupID":Ljava/lang/String;
    invoke-virtual {p0, p1}, Lcom/pantech/app/music/list/db/SelectManager;->getGroupSelectionTable(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;)Lcom/pantech/app/music/list/component/ArrayListMap;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/pantech/app/music/list/component/ArrayListMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pantech/app/music/list/db/SelectManager$GroupSelectInfo;

    .line 672
    .local v1, "groupSelectInfo":Lcom/pantech/app/music/list/db/SelectManager$GroupSelectInfo;
    if-eqz v1, :cond_2f

    .line 674
    invoke-virtual {v1}, Lcom/pantech/app/music/list/db/SelectManager$GroupSelectInfo;->getChildSelectRatio()F

    move-result v2

    monitor-exit p3
    :try_end_25
    .catchall {:try_start_a .. :try_end_25} :catchall_3b

    .line 681
    iget-object v3, p0, Lcom/pantech/app/music/list/db/SelectManager;->mSyncLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 684
    .end local v0    # "groupID":Ljava/lang/String;
    .end local v1    # "groupSelectInfo":Lcom/pantech/app/music/list/db/SelectManager$GroupSelectInfo;
    :goto_2e
    return v2

    .line 677
    :cond_2f
    :try_start_2f
    monitor-exit p3
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_3b

    .line 681
    iget-object v2, p0, Lcom/pantech/app/music/list/db/SelectManager;->mSyncLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 684
    const/4 v2, 0x0

    goto :goto_2e

    .line 677
    :catchall_3b
    move-exception v2

    :try_start_3c
    monitor-exit p3
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_3b

    :try_start_3d
    throw v2
    :try_end_3e
    .catchall {:try_start_3d .. :try_end_3e} :catchall_3e

    .line 681
    :catchall_3e
    move-exception v2

    iget-object v3, p0, Lcom/pantech/app/music/list/db/SelectManager;->mSyncLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v2
.end method

.method public getGroupSelectInfo(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Landroid/database/Cursor;Ljava/lang/Object;)Lcom/pantech/app/music/list/db/SelectManager$GroupSelectInfo;
    .registers 8
    .param p1, "category"    # Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "cursroLock"    # Ljava/lang/Object;

    .prologue
    .line 689
    iget-object v2, p0, Lcom/pantech/app/music/list/db/SelectManager;->mSyncLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 693
    :try_start_9
    monitor-enter p3
    :try_end_a
    .catchall {:try_start_9 .. :try_end_a} :catchall_38

    .line 695
    :try_start_a
    invoke-virtual {p1}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->isGroup()Z

    move-result v2

    if-eqz v2, :cond_29

    .line 697
    invoke-virtual {p1, p2, p3}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->getGroupID(Landroid/database/Cursor;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 699
    .local v0, "groupID":Ljava/lang/String;
    invoke-virtual {p0, p1}, Lcom/pantech/app/music/list/db/SelectManager;->getGroupSelectionTable(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;)Lcom/pantech/app/music/list/component/ArrayListMap;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/pantech/app/music/list/component/ArrayListMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pantech/app/music/list/db/SelectManager$GroupSelectInfo;

    .line 701
    .local v1, "groupSelectInfo":Lcom/pantech/app/music/list/db/SelectManager$GroupSelectInfo;
    monitor-exit p3
    :try_end_1f
    .catchall {:try_start_a .. :try_end_1f} :catchall_35

    .line 707
    iget-object v2, p0, Lcom/pantech/app/music/list/db/SelectManager;->mSyncLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 710
    .end local v0    # "groupID":Ljava/lang/String;
    .end local v1    # "groupSelectInfo":Lcom/pantech/app/music/list/db/SelectManager$GroupSelectInfo;
    :goto_28
    return-object v1

    .line 703
    :cond_29
    :try_start_29
    monitor-exit p3
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_35

    .line 707
    iget-object v2, p0, Lcom/pantech/app/music/list/db/SelectManager;->mSyncLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 710
    const/4 v1, 0x0

    goto :goto_28

    .line 703
    :catchall_35
    move-exception v2

    :try_start_36
    monitor-exit p3
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_35

    :try_start_37
    throw v2
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_38

    .line 707
    :catchall_38
    move-exception v2

    iget-object v3, p0, Lcom/pantech/app/music/list/db/SelectManager;->mSyncLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v2
.end method

.method public getGroupSelectionTable(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;)Lcom/pantech/app/music/list/component/ArrayListMap;
    .registers 5
    .param p1, "category"    # Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;",
            ")",
            "Lcom/pantech/app/music/list/component/ArrayListMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/pantech/app/music/list/db/SelectManager$SelectInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 95
    invoke-virtual {p1}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->getParent()Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    move-result-object v0

    .line 97
    .local v0, "groupCategory":Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;
    iget-object v2, p0, Lcom/pantech/app/music/list/db/SelectManager;->mCategorySelectionTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pantech/app/music/list/component/ArrayListMap;

    .line 99
    .local v1, "tmp":Lcom/pantech/app/music/list/component/ArrayListMap;, "Lcom/pantech/app/music/list/component/ArrayListMap<Ljava/lang/String;Lcom/pantech/app/music/list/db/SelectManager$SelectInfo;>;"
    if-nez v1, :cond_18

    .line 101
    new-instance v1, Lcom/pantech/app/music/list/component/ArrayListMap;

    .end local v1    # "tmp":Lcom/pantech/app/music/list/component/ArrayListMap;, "Lcom/pantech/app/music/list/component/ArrayListMap<Ljava/lang/String;Lcom/pantech/app/music/list/db/SelectManager$SelectInfo;>;"
    invoke-direct {v1}, Lcom/pantech/app/music/list/component/ArrayListMap;-><init>()V

    .line 102
    .restart local v1    # "tmp":Lcom/pantech/app/music/list/component/ArrayListMap;, "Lcom/pantech/app/music/list/component/ArrayListMap<Ljava/lang/String;Lcom/pantech/app/music/list/db/SelectManager$SelectInfo;>;"
    iget-object v2, p0, Lcom/pantech/app/music/list/db/SelectManager;->mCategorySelectionTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    :cond_18
    return-object v1
.end method

.method public getGroupSelectionTable(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Ljava/lang/String;)Lcom/pantech/app/music/list/db/SelectManager$SelectInfo;
    .registers 6
    .param p1, "category"    # Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;
    .param p2, "groupID"    # Ljava/lang/String;

    .prologue
    .line 79
    invoke-virtual {p1}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->getParent()Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    move-result-object v0

    .line 81
    .local v0, "groupCategory":Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;
    iget-object v2, p0, Lcom/pantech/app/music/list/db/SelectManager;->mCategorySelectionTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pantech/app/music/list/component/ArrayListMap;

    .line 83
    .local v1, "tmp":Lcom/pantech/app/music/list/component/ArrayListMap;, "Lcom/pantech/app/music/list/component/ArrayListMap<Ljava/lang/String;Lcom/pantech/app/music/list/db/SelectManager$SelectInfo;>;"
    if-eqz v1, :cond_15

    .line 85
    invoke-virtual {v1, p2}, Lcom/pantech/app/music/list/component/ArrayListMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pantech/app/music/list/db/SelectManager$SelectInfo;

    .line 88
    :goto_14
    return-object v2

    :cond_15
    const/4 v2, 0x0

    goto :goto_14
.end method

.method public getParentSelectedCount(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;)I
    .registers 8
    .param p1, "category"    # Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    .prologue
    .line 892
    iget-object v4, p0, Lcom/pantech/app/music/list/db/SelectManager;->mSyncLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 896
    const/4 v3, 0x0

    .line 898
    .local v3, "selected":I
    :try_start_a
    invoke-virtual {p0, p1}, Lcom/pantech/app/music/list/db/SelectManager;->getGroupSelectionTable(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;)Lcom/pantech/app/music/list/component/ArrayListMap;

    move-result-object v2

    .line 900
    .local v2, "parentList":Lcom/pantech/app/music/list/component/ArrayListMap;, "Lcom/pantech/app/music/list/component/ArrayListMap<Ljava/lang/String;Lcom/pantech/app/music/list/db/SelectManager$SelectInfo;>;"
    invoke-virtual {v2}, Lcom/pantech/app/music/list/component/ArrayListMap;->values()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_16
    :goto_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pantech/app/music/list/db/SelectManager$SelectInfo;

    .line 902
    .local v1, "info":Lcom/pantech/app/music/list/db/SelectManager$SelectInfo;
    invoke-virtual {v1}, Lcom/pantech/app/music/list/db/SelectManager$SelectInfo;->isSelected()Z
    :try_end_25
    .catchall {:try_start_a .. :try_end_25} :catchall_35

    move-result v4

    if-eqz v4, :cond_16

    .line 903
    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    .line 910
    .end local v1    # "info":Lcom/pantech/app/music/list/db/SelectManager$SelectInfo;
    :cond_2b
    iget-object v4, p0, Lcom/pantech/app/music/list/db/SelectManager;->mSyncLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return v3

    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "parentList":Lcom/pantech/app/music/list/component/ArrayListMap;, "Lcom/pantech/app/music/list/component/ArrayListMap<Ljava/lang/String;Lcom/pantech/app/music/list/db/SelectManager$SelectInfo;>;"
    :catchall_35
    move-exception v4

    iget-object v5, p0, Lcom/pantech/app/music/list/db/SelectManager;->mSyncLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v4
.end method

.method public getSelectedAllChildList(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;)Ljava/util/Collection;
    .registers 6
    .param p1, "category"    # Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Lcom/pantech/app/music/list/db/SelectManager$SelectInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 784
    iget-object v2, p0, Lcom/pantech/app/music/list/db/SelectManager;->mSyncLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 788
    :try_start_9
    invoke-virtual {p0, p1}, Lcom/pantech/app/music/list/db/SelectManager;->getGroupSelectionTable(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;)Lcom/pantech/app/music/list/component/ArrayListMap;

    move-result-object v1

    .line 790
    .local v1, "parentTable":Lcom/pantech/app/music/list/component/ArrayListMap;, "Lcom/pantech/app/music/list/component/ArrayListMap<Ljava/lang/String;Lcom/pantech/app/music/list/db/SelectManager$SelectInfo;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 792
    .local v0, "contentsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/pantech/app/music/list/db/SelectManager$SelectInfo;>;"
    invoke-virtual {v1}, Lcom/pantech/app/music/list/component/ArrayListMap;->values()Ljava/util/ArrayList;

    move-result-object v2

    new-instance v3, Lcom/pantech/app/music/list/db/SelectManager$1;

    invoke-direct {v3, p0, v0}, Lcom/pantech/app/music/list/db/SelectManager$1;-><init>(Lcom/pantech/app/music/list/db/SelectManager;Ljava/util/ArrayList;)V

    invoke-static {v2, v3}, Lcom/pantech/app/music/list/db/SelectManager;->makeContentSelectInfoList(Ljava/util/Collection;Lcom/pantech/app/music/list/db/SelectManager$MakeSelectListTemplate;)V
    :try_end_1e
    .catchall {:try_start_9 .. :try_end_1e} :catchall_28

    .line 806
    iget-object v2, p0, Lcom/pantech/app/music/list/db/SelectManager;->mSyncLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return-object v0

    .end local v0    # "contentsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/pantech/app/music/list/db/SelectManager$SelectInfo;>;"
    .end local v1    # "parentTable":Lcom/pantech/app/music/list/component/ArrayListMap;, "Lcom/pantech/app/music/list/component/ArrayListMap<Ljava/lang/String;Lcom/pantech/app/music/list/db/SelectManager$SelectInfo;>;"
    :catchall_28
    move-exception v2

    iget-object v3, p0, Lcom/pantech/app/music/list/db/SelectManager;->mSyncLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v2
.end method

.method public getSelectedChildList(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Ljava/lang/String;)Ljava/util/Collection;
    .registers 10
    .param p1, "category"    # Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;
    .param p2, "parentID"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Lcom/pantech/app/music/list/db/SelectManager$ContentSelectInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 746
    iget-object v5, p0, Lcom/pantech/app/music/list/db/SelectManager;->mSyncLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 750
    :try_start_9
    invoke-virtual {p0, p1}, Lcom/pantech/app/music/list/db/SelectManager;->getGroupSelectionTable(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;)Lcom/pantech/app/music/list/component/ArrayListMap;

    move-result-object v5

    invoke-virtual {v5, p2}, Lcom/pantech/app/music/list/component/ArrayListMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/pantech/app/music/list/db/SelectManager$SelectInfo;

    .line 752
    .local v4, "parentInfo":Lcom/pantech/app/music/list/db/SelectManager$SelectInfo;
    if-eqz v4, :cond_47

    .line 754
    instance-of v5, v4, Lcom/pantech/app/music/list/db/SelectManager$GroupSelectInfo;

    if-eqz v5, :cond_2d

    .line 756
    move-object v0, v4

    check-cast v0, Lcom/pantech/app/music/list/db/SelectManager$GroupSelectInfo;

    move-object v3, v0

    .line 758
    .local v3, "groupInfo":Lcom/pantech/app/music/list/db/SelectManager$GroupSelectInfo;
    iget-object v5, v3, Lcom/pantech/app/music/list/db/SelectManager$GroupSelectInfo;->mChildTable:Lcom/pantech/app/music/list/component/ArrayListMap;

    invoke-static {v5}, Lcom/pantech/app/music/list/db/SelectManager;->getSelectedChildList(Lcom/pantech/app/music/list/component/ArrayListMap;)Ljava/util/Collection;
    :try_end_22
    .catchall {:try_start_9 .. :try_end_22} :catchall_52

    move-result-object v2

    .line 773
    iget-object v5, p0, Lcom/pantech/app/music/list/db/SelectManager;->mSyncLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .end local v3    # "groupInfo":Lcom/pantech/app/music/list/db/SelectManager$GroupSelectInfo;
    :goto_2c
    return-object v2

    .line 760
    :cond_2d
    :try_start_2d
    instance-of v5, v4, Lcom/pantech/app/music/list/db/SelectManager$ContentSelectInfo;

    if-eqz v5, :cond_47

    .line 762
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 763
    .local v2, "contentsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/pantech/app/music/list/db/SelectManager$ContentSelectInfo;>;"
    move-object v0, v4

    check-cast v0, Lcom/pantech/app/music/list/db/SelectManager$ContentSelectInfo;

    move-object v1, v0

    .line 764
    .local v1, "childInfo":Lcom/pantech/app/music/list/db/SelectManager$ContentSelectInfo;
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3d
    .catchall {:try_start_2d .. :try_end_3d} :catchall_52

    .line 773
    iget-object v5, p0, Lcom/pantech/app/music/list/db/SelectManager;->mSyncLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    goto :goto_2c

    .line 769
    .end local v1    # "childInfo":Lcom/pantech/app/music/list/db/SelectManager$ContentSelectInfo;
    .end local v2    # "contentsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/pantech/app/music/list/db/SelectManager$ContentSelectInfo;>;"
    :cond_47
    const/4 v2, 0x0

    .line 773
    iget-object v5, p0, Lcom/pantech/app/music/list/db/SelectManager;->mSyncLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    goto :goto_2c

    .end local v4    # "parentInfo":Lcom/pantech/app/music/list/db/SelectManager$SelectInfo;
    :catchall_52
    move-exception v5

    iget-object v6, p0, Lcom/pantech/app/music/list/db/SelectManager;->mSyncLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v5
.end method

.method public getSelectedGroupList(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;)Ljava/util/Collection;
    .registers 5
    .param p1, "category"    # Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Lcom/pantech/app/music/list/db/SelectManager$SelectInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 715
    iget-object v1, p0, Lcom/pantech/app/music/list/db/SelectManager;->mSyncLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 719
    :try_start_9
    invoke-virtual {p1}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->isGroup()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 721
    invoke-virtual {p0, p1}, Lcom/pantech/app/music/list/db/SelectManager;->getGroupSelectionTable(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;)Lcom/pantech/app/music/list/component/ArrayListMap;

    move-result-object v0

    .line 723
    .local v0, "groupList":Lcom/pantech/app/music/list/component/ArrayListMap;, "Lcom/pantech/app/music/list/component/ArrayListMap<Ljava/lang/String;Lcom/pantech/app/music/list/db/SelectManager$SelectInfo;>;"
    invoke-virtual {v0}, Lcom/pantech/app/music/list/component/ArrayListMap;->values()Ljava/util/ArrayList;
    :try_end_16
    .catchall {:try_start_9 .. :try_end_16} :catchall_2c

    move-result-object v1

    .line 728
    iget-object v2, p0, Lcom/pantech/app/music/list/db/SelectManager;->mSyncLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 731
    .end local v0    # "groupList":Lcom/pantech/app/music/list/component/ArrayListMap;, "Lcom/pantech/app/music/list/component/ArrayListMap<Ljava/lang/String;Lcom/pantech/app/music/list/db/SelectManager$SelectInfo;>;"
    :goto_20
    return-object v1

    .line 728
    :cond_21
    iget-object v1, p0, Lcom/pantech/app/music/list/db/SelectManager;->mSyncLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 731
    const/4 v1, 0x0

    goto :goto_20

    .line 728
    :catchall_2c
    move-exception v1

    iget-object v2, p0, Lcom/pantech/app/music/list/db/SelectManager;->mSyncLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v1
.end method

.method public getSelectedParentList(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;)Ljava/util/Collection;
    .registers 9
    .param p1, "category"    # Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Lcom/pantech/app/music/list/db/SelectManager$SelectInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 812
    iget-object v5, p0, Lcom/pantech/app/music/list/db/SelectManager;->mSyncLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 816
    :try_start_9
    invoke-virtual {p0, p1}, Lcom/pantech/app/music/list/db/SelectManager;->getGroupSelectionTable(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;)Lcom/pantech/app/music/list/component/ArrayListMap;

    move-result-object v4

    .line 818
    .local v4, "parentTable":Lcom/pantech/app/music/list/component/ArrayListMap;, "Lcom/pantech/app/music/list/component/ArrayListMap<Ljava/lang/String;Lcom/pantech/app/music/list/db/SelectManager$SelectInfo;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 820
    .local v1, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/pantech/app/music/list/db/SelectManager$SelectInfo;>;"
    invoke-virtual {v4}, Lcom/pantech/app/music/list/component/ArrayListMap;->values()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_74

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/pantech/app/music/list/db/SelectManager$SelectInfo;

    .line 822
    .local v3, "item":Lcom/pantech/app/music/list/db/SelectManager$SelectInfo;
    instance-of v5, v3, Lcom/pantech/app/music/list/db/SelectManager$GroupSelectInfo;

    if-eqz v5, :cond_55

    .line 825
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "groupID : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v3

    check-cast v0, Lcom/pantech/app/music/list/db/SelectManager$GroupSelectInfo;

    move-object v5, v0

    iget-object v5, v5, Lcom/pantech/app/music/list/db/SelectManager$GroupSelectInfo;->mGroupID:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/pantech/app/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 833
    :goto_46
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_49
    .catchall {:try_start_9 .. :try_end_49} :catchall_4a

    goto :goto_1a

    .line 840
    .end local v1    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/pantech/app/music/list/db/SelectManager$SelectInfo;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "item":Lcom/pantech/app/music/list/db/SelectManager$SelectInfo;
    .end local v4    # "parentTable":Lcom/pantech/app/music/list/component/ArrayListMap;, "Lcom/pantech/app/music/list/component/ArrayListMap<Ljava/lang/String;Lcom/pantech/app/music/list/db/SelectManager$SelectInfo;>;"
    :catchall_4a
    move-exception v5

    iget-object v6, p0, Lcom/pantech/app/music/list/db/SelectManager;->mSyncLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v5

    .line 830
    .restart local v1    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/pantech/app/music/list/db/SelectManager$SelectInfo;>;"
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v3    # "item":Lcom/pantech/app/music/list/db/SelectManager$SelectInfo;
    .restart local v4    # "parentTable":Lcom/pantech/app/music/list/component/ArrayListMap;, "Lcom/pantech/app/music/list/component/ArrayListMap<Ljava/lang/String;Lcom/pantech/app/music/list/db/SelectManager$SelectInfo;>;"
    :cond_55
    :try_start_55
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "title : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v3

    check-cast v0, Lcom/pantech/app/music/list/db/SelectManager$ContentSelectInfo;

    move-object v5, v0

    iget-object v5, v5, Lcom/pantech/app/music/list/db/SelectManager$ContentSelectInfo;->mCntInfo:Lcom/pantech/app/music/list/MusicItemInfo;

    iget-object v5, v5, Lcom/pantech/app/music/list/MusicItemInfo;->szTitle:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/pantech/app/music/utils/MLog;->d(Ljava/lang/String;)V
    :try_end_73
    .catchall {:try_start_55 .. :try_end_73} :catchall_4a

    goto :goto_46

    .line 840
    .end local v3    # "item":Lcom/pantech/app/music/list/db/SelectManager$SelectInfo;
    :cond_74
    iget-object v5, p0, Lcom/pantech/app/music/list/db/SelectManager;->mSyncLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return-object v1
.end method

.method public isGroupSomeSelected(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Landroid/database/Cursor;Ljava/lang/Object;)Z
    .registers 8
    .param p1, "category"    # Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "cursroLock"    # Ljava/lang/Object;

    .prologue
    .line 631
    iget-object v2, p0, Lcom/pantech/app/music/list/db/SelectManager;->mSyncLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 635
    :try_start_9
    monitor-enter p3
    :try_end_a
    .catchall {:try_start_9 .. :try_end_a} :catchall_3e

    .line 637
    :try_start_a
    invoke-virtual {p1}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->isGroup()Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 639
    invoke-virtual {p1, p2, p3}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->getGroupID(Landroid/database/Cursor;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 641
    .local v0, "groupID":Ljava/lang/String;
    invoke-virtual {p0, p1}, Lcom/pantech/app/music/list/db/SelectManager;->getGroupSelectionTable(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;)Lcom/pantech/app/music/list/component/ArrayListMap;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/pantech/app/music/list/component/ArrayListMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pantech/app/music/list/db/SelectManager$GroupSelectInfo;

    .line 643
    .local v1, "groupSelectInfo":Lcom/pantech/app/music/list/db/SelectManager$GroupSelectInfo;
    if-eqz v1, :cond_2f

    .line 645
    invoke-virtual {v1}, Lcom/pantech/app/music/list/db/SelectManager$GroupSelectInfo;->isChildSomeSelected()Z

    move-result v2

    monitor-exit p3
    :try_end_25
    .catchall {:try_start_a .. :try_end_25} :catchall_3b

    .line 654
    iget-object v3, p0, Lcom/pantech/app/music/list/db/SelectManager;->mSyncLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .end local v0    # "groupID":Ljava/lang/String;
    .end local v1    # "groupSelectInfo":Lcom/pantech/app/music/list/db/SelectManager$GroupSelectInfo;
    :goto_2e
    return v2

    .line 648
    :cond_2f
    :try_start_2f
    monitor-exit p3
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_3b

    .line 650
    const/4 v2, 0x0

    .line 654
    iget-object v3, p0, Lcom/pantech/app/music/list/db/SelectManager;->mSyncLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    goto :goto_2e

    .line 648
    :catchall_3b
    move-exception v2

    :try_start_3c
    monitor-exit p3
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_3b

    :try_start_3d
    throw v2
    :try_end_3e
    .catchall {:try_start_3d .. :try_end_3e} :catchall_3e

    .line 654
    :catchall_3e
    move-exception v2

    iget-object v3, p0, Lcom/pantech/app/music/list/db/SelectManager;->mSyncLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v2
.end method

.method public isSelected(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Landroid/database/Cursor;ILjava/lang/Object;)Z
    .registers 7
    .param p1, "category"    # Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "position"    # I
    .param p4, "cursroLock"    # Ljava/lang/Object;

    .prologue
    .line 536
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isSelected type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/pantech/app/music/list/db/SelectManager;->mType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " category:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/pantech/app/music/utils/MLog;->i(Ljava/lang/String;)V

    .line 538
    monitor-enter p4

    .line 540
    :try_start_23
    invoke-interface {p2, p3}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 542
    invoke-direct {p0, p1, p2, p4}, Lcom/pantech/app/music/list/db/SelectManager;->isSelected(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Landroid/database/Cursor;Ljava/lang/Object;)Z

    move-result v0

    monitor-exit p4

    .line 545
    :goto_2e
    return v0

    :cond_2f
    const/4 v0, 0x0

    monitor-exit p4

    goto :goto_2e

    .line 546
    :catchall_32
    move-exception v0

    monitor-exit p4
    :try_end_34
    .catchall {:try_start_23 .. :try_end_34} :catchall_32

    throw v0
.end method

.method public isSelected(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 8
    .param p1, "category"    # Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;
    .param p2, "groupID"    # Ljava/lang/String;
    .param p3, "audioID"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 584
    iget-object v3, p0, Lcom/pantech/app/music/list/db/SelectManager;->mSyncLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 588
    :try_start_a
    invoke-virtual {p1}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->isGroup()Z

    move-result v3

    if-eqz v3, :cond_34

    .line 590
    invoke-virtual {p0, p1}, Lcom/pantech/app/music/list/db/SelectManager;->getGroupSelectionTable(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;)Lcom/pantech/app/music/list/component/ArrayListMap;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/pantech/app/music/list/component/ArrayListMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pantech/app/music/list/db/SelectManager$SelectInfo;
    :try_end_1a
    .catchall {:try_start_a .. :try_end_1a} :catchall_84

    .line 592
    .local v1, "parentInfo":Lcom/pantech/app/music/list/db/SelectManager$SelectInfo;
    if-nez v1, :cond_26

    .line 618
    iget-object v3, p0, Lcom/pantech/app/music/list/db/SelectManager;->mSyncLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .end local v1    # "parentInfo":Lcom/pantech/app/music/list/db/SelectManager$SelectInfo;
    :goto_25
    return v2

    .line 594
    .restart local v1    # "parentInfo":Lcom/pantech/app/music/list/db/SelectManager$SelectInfo;
    :cond_26
    :try_start_26
    invoke-virtual {v1}, Lcom/pantech/app/music/list/db/SelectManager$SelectInfo;->isSelected()Z
    :try_end_29
    .catchall {:try_start_26 .. :try_end_29} :catchall_84

    move-result v2

    .line 618
    iget-object v3, p0, Lcom/pantech/app/music/list/db/SelectManager;->mSyncLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    goto :goto_25

    .line 598
    .end local v1    # "parentInfo":Lcom/pantech/app/music/list/db/SelectManager$SelectInfo;
    :cond_34
    :try_start_34
    invoke-virtual {p1}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->isGroupChild()Z

    move-result v3

    if-eqz v3, :cond_60

    .line 600
    invoke-virtual {p0, p1}, Lcom/pantech/app/music/list/db/SelectManager;->getGroupSelectionTable(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;)Lcom/pantech/app/music/list/component/ArrayListMap;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/pantech/app/music/list/component/ArrayListMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/music/list/db/SelectManager$GroupSelectInfo;
    :try_end_44
    .catchall {:try_start_34 .. :try_end_44} :catchall_84

    .line 602
    .local v0, "groupInfo":Lcom/pantech/app/music/list/db/SelectManager$GroupSelectInfo;
    if-nez v0, :cond_50

    .line 618
    iget-object v3, p0, Lcom/pantech/app/music/list/db/SelectManager;->mSyncLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    goto :goto_25

    .line 604
    :cond_50
    :try_start_50
    iget-object v2, v0, Lcom/pantech/app/music/list/db/SelectManager$GroupSelectInfo;->mChildTable:Lcom/pantech/app/music/list/component/ArrayListMap;

    invoke-virtual {v2, p3}, Lcom/pantech/app/music/list/component/ArrayListMap;->containsKey(Ljava/lang/Object;)Z
    :try_end_55
    .catchall {:try_start_50 .. :try_end_55} :catchall_84

    move-result v2

    .line 618
    iget-object v3, p0, Lcom/pantech/app/music/list/db/SelectManager;->mSyncLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    goto :goto_25

    .line 608
    .end local v0    # "groupInfo":Lcom/pantech/app/music/list/db/SelectManager$GroupSelectInfo;
    :cond_60
    :try_start_60
    invoke-virtual {p0, p1}, Lcom/pantech/app/music/list/db/SelectManager;->getGroupSelectionTable(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;)Lcom/pantech/app/music/list/component/ArrayListMap;

    move-result-object v3

    invoke-virtual {v3, p3}, Lcom/pantech/app/music/list/component/ArrayListMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pantech/app/music/list/db/SelectManager$SelectInfo;
    :try_end_6a
    .catchall {:try_start_60 .. :try_end_6a} :catchall_84

    .line 610
    .restart local v1    # "parentInfo":Lcom/pantech/app/music/list/db/SelectManager$SelectInfo;
    if-nez v1, :cond_76

    .line 618
    iget-object v3, p0, Lcom/pantech/app/music/list/db/SelectManager;->mSyncLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    goto :goto_25

    .line 612
    :cond_76
    :try_start_76
    invoke-virtual {v1}, Lcom/pantech/app/music/list/db/SelectManager$SelectInfo;->isSelected()Z
    :try_end_79
    .catchall {:try_start_76 .. :try_end_79} :catchall_84

    move-result v2

    .line 618
    iget-object v3, p0, Lcom/pantech/app/music/list/db/SelectManager;->mSyncLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    goto :goto_25

    .end local v1    # "parentInfo":Lcom/pantech/app/music/list/db/SelectManager$SelectInfo;
    :catchall_84
    move-exception v2

    iget-object v3, p0, Lcom/pantech/app/music/list/db/SelectManager;->mSyncLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v2
.end method

.method public select(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Landroid/database/Cursor;IILjava/lang/Object;Lcom/pantech/app/music/list/db/SelectManager$AsyncSelectDoneListener;)V
    .registers 20
    .param p1, "category"    # Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "start"    # I
    .param p4, "size"    # I
    .param p5, "cursorLock"    # Ljava/lang/Object;
    .param p6, "callback"    # Lcom/pantech/app/music/list/db/SelectManager$AsyncSelectDoneListener;

    .prologue
    .line 139
    monitor-enter p5

    .line 141
    if-eqz p2, :cond_15a

    .line 143
    :try_start_3
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v7

    .line 145
    .local v7, "count":I
    move/from16 v0, p3

    if-le v0, v7, :cond_d

    .line 146
    monitor-exit p5

    .line 293
    .end local v7    # "count":I
    :goto_c
    return-void

    .line 149
    .restart local v7    # "count":I
    :cond_d
    add-int v2, p3, p4

    if-le v2, v7, :cond_13

    .line 151
    sub-int p4, v7, p3

    .line 154
    :cond_13
    if-gtz p4, :cond_1a

    .line 155
    monitor-exit p5

    goto :goto_c

    .line 292
    .end local v7    # "count":I
    :catchall_17
    move-exception v2

    monitor-exit p5
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw v2

    .line 158
    .restart local v7    # "count":I
    :cond_1a
    :try_start_1a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SelectManager:select type:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p0, Lcom/pantech/app/music/list/db/SelectManager;->mType:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " category:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ":start:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ":size:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/pantech/app/music/utils/MLog;->i(Ljava/lang/String;)V

    .line 160
    invoke-virtual {p1}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->isGroup()Z

    move-result v2

    if-eqz v2, :cond_da

    .line 162
    move/from16 v5, p3

    .local v5, "i":I
    :goto_5c
    if-eqz p2, :cond_15a

    add-int v2, p4, p3

    if-ge v5, v2, :cond_15a

    .line 164
    invoke-interface {p2, v5}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 166
    move-object/from16 v0, p5

    invoke-virtual {p1, p2, v0}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->getGroupID(Landroid/database/Cursor;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 167
    .local v3, "groupID":Ljava/lang/String;
    new-instance v9, Lcom/pantech/app/music/list/db/SelectManager$GroupSelectInfo;

    const/4 v2, 0x0

    invoke-direct {v9, p1, v3, v2}, Lcom/pantech/app/music/list/db/SelectManager$GroupSelectInfo;-><init>(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Ljava/lang/String;I)V

    .line 172
    .local v9, "groupInfo":Lcom/pantech/app/music/list/db/SelectManager$GroupSelectInfo;
    if-eqz p6, :cond_cd

    .line 181
    const/4 v2, 0x1

    iput v2, v9, Lcom/pantech/app/music/list/db/SelectManager$GroupSelectInfo;->mChildTotalSize:I

    .line 182
    new-instance v12, Ljava/lang/Thread;

    new-instance v4, Lcom/pantech/app/music/list/db/SelectManager$SelectChild;

    iget-object v2, p0, Lcom/pantech/app/music/list/db/SelectManager;->mContextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    iget-object v6, p0, Lcom/pantech/app/music/list/db/SelectManager;->mSyncLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-object/from16 v0, p6

    invoke-direct {v4, v2, v9, v6, v0}, Lcom/pantech/app/music/list/db/SelectManager$SelectChild;-><init>(Landroid/content/Context;Lcom/pantech/app/music/list/db/SelectManager$GroupSelectInfo;Ljava/util/concurrent/locks/ReentrantReadWriteLock;Lcom/pantech/app/music/list/db/SelectManager$AsyncSelectDoneListener;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Select Thread:"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, ":"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v12, v4, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 183
    .local v12, "t":Ljava/lang/Thread;
    const/16 v2, 0xa

    invoke-virtual {v12, v2}, Ljava/lang/Thread;->setPriority(I)V

    .line 184
    invoke-virtual {v12}, Ljava/lang/Thread;->start()V

    .line 193
    .end local v12    # "t":Ljava/lang/Thread;
    :goto_b1
    iget-object v2, p0, Lcom/pantech/app/music/list/db/SelectManager;->mSyncLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 194
    invoke-virtual {p0, p1}, Lcom/pantech/app/music/list/db/SelectManager;->getGroupSelectionTable(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;)Lcom/pantech/app/music/list/component/ArrayListMap;

    move-result-object v2

    invoke-virtual {v2, v3, v9}, Lcom/pantech/app/music/list/component/ArrayListMap;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 195
    iget-object v2, p0, Lcom/pantech/app/music/list/db/SelectManager;->mSyncLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 162
    add-int/lit8 v5, v5, 0x1

    goto :goto_5c

    .line 190
    :cond_cd
    iget-object v2, p0, Lcom/pantech/app/music/list/db/SelectManager;->mContextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    const/4 v4, 0x0

    invoke-virtual {v9, v2, v4}, Lcom/pantech/app/music/list/db/SelectManager$GroupSelectInfo;->selectChildAll(Landroid/content/Context;Ljava/util/concurrent/locks/ReentrantReadWriteLock;)I

    goto :goto_b1

    .line 202
    .end local v3    # "groupID":Ljava/lang/String;
    .end local v5    # "i":I
    .end local v9    # "groupInfo":Lcom/pantech/app/music/list/db/SelectManager$GroupSelectInfo;
    :cond_da
    const/4 v3, 0x0

    .line 203
    .restart local v3    # "groupID":Ljava/lang/String;
    const/4 v1, 0x0

    .line 205
    .local v1, "contentsTable":Lcom/pantech/app/music/list/component/ArrayListMap;, "Lcom/pantech/app/music/list/component/ArrayListMap<Ljava/lang/String;*>;"
    iget-object v2, p0, Lcom/pantech/app/music/list/db/SelectManager;->mSyncLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 211
    invoke-virtual {p1}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->isGroupChild()Z

    move-result v2

    if-eqz v2, :cond_15d

    .line 213
    invoke-virtual {p1}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->getParent()Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    move-result-object v8

    .line 220
    .local v8, "groupCategory":Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;
    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 223
    move-object/from16 v0, p5

    invoke-virtual {p1, p2, v0}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->getGroupID(Landroid/database/Cursor;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 226
    invoke-virtual {p0, v8}, Lcom/pantech/app/music/list/db/SelectManager;->getGroupSelectionTable(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;)Lcom/pantech/app/music/list/component/ArrayListMap;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/pantech/app/music/list/component/ArrayListMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/pantech/app/music/list/db/SelectManager$GroupSelectInfo;

    .line 232
    .restart local v9    # "groupInfo":Lcom/pantech/app/music/list/db/SelectManager$GroupSelectInfo;
    const/4 v10, 0x0

    .line 233
    .local v10, "seperatorCount":I
    sget-object v2, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_ARTIST_SONG:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    if-ne p1, v2, :cond_128

    .line 235
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_108
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-ge v5, v2, :cond_128

    .line 237
    invoke-interface {p2, v5}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 239
    const-string v2, "seperator_type"

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_125

    .line 241
    const-string v2, "seperator_type"

    invoke-static {p2, v2}, Lcom/pantech/app/music/list/db/CursorUtils;->getCursorInt(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    .line 242
    .local v11, "seperatorType":I
    const/16 v2, -0x64

    if-ne v11, v2, :cond_125

    .line 244
    add-int/lit8 v10, v10, 0x1

    .line 235
    .end local v11    # "seperatorType":I
    :cond_125
    add-int/lit8 v5, v5, 0x1

    goto :goto_108

    .line 254
    .end local v5    # "i":I
    :cond_128
    if-nez v9, :cond_134

    .line 256
    new-instance v9, Lcom/pantech/app/music/list/db/SelectManager$GroupSelectInfo;

    .end local v9    # "groupInfo":Lcom/pantech/app/music/list/db/SelectManager$GroupSelectInfo;
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    sub-int/2addr v2, v10

    invoke-direct {v9, v8, v3, v2}, Lcom/pantech/app/music/list/db/SelectManager$GroupSelectInfo;-><init>(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Ljava/lang/String;I)V

    .line 260
    .restart local v9    # "groupInfo":Lcom/pantech/app/music/list/db/SelectManager$GroupSelectInfo;
    :cond_134
    move/from16 v5, p3

    .restart local v5    # "i":I
    :goto_136
    if-eqz p2, :cond_145

    add-int v2, p4, p3

    if-ge v5, v2, :cond_145

    .line 264
    const/4 v2, 0x0

    move-object/from16 v0, p5

    invoke-virtual {v9, p2, v5, v0, v2}, Lcom/pantech/app/music/list/db/SelectManager$GroupSelectInfo;->selectChild(Landroid/database/Cursor;ILjava/lang/Object;Ljava/util/concurrent/locks/ReentrantReadWriteLock;)I

    .line 260
    add-int/lit8 v5, v5, 0x1

    goto :goto_136

    .line 267
    :cond_145
    invoke-virtual {p0, v8}, Lcom/pantech/app/music/list/db/SelectManager;->getGroupSelectionTable(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;)Lcom/pantech/app/music/list/component/ArrayListMap;

    move-result-object v2

    invoke-virtual {v2, v3, v9}, Lcom/pantech/app/music/list/component/ArrayListMap;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 284
    .end local v8    # "groupCategory":Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;
    .end local v9    # "groupInfo":Lcom/pantech/app/music/list/db/SelectManager$GroupSelectInfo;
    .end local v10    # "seperatorCount":I
    :cond_14c
    iget-object v2, p0, Lcom/pantech/app/music/list/db/SelectManager;->mSyncLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 286
    if-eqz p6, :cond_15a

    .line 288
    invoke-interface/range {p6 .. p6}, Lcom/pantech/app/music/list/db/SelectManager$AsyncSelectDoneListener;->onSelectDone()V

    .line 292
    .end local v1    # "contentsTable":Lcom/pantech/app/music/list/component/ArrayListMap;, "Lcom/pantech/app/music/list/component/ArrayListMap<Ljava/lang/String;*>;"
    .end local v3    # "groupID":Ljava/lang/String;
    .end local v5    # "i":I
    .end local v7    # "count":I
    :cond_15a
    monitor-exit p5

    goto/16 :goto_c

    .line 273
    .restart local v1    # "contentsTable":Lcom/pantech/app/music/list/component/ArrayListMap;, "Lcom/pantech/app/music/list/component/ArrayListMap<Ljava/lang/String;*>;"
    .restart local v3    # "groupID":Ljava/lang/String;
    .restart local v7    # "count":I
    :cond_15d
    invoke-virtual {p0, p1}, Lcom/pantech/app/music/list/db/SelectManager;->getGroupSelectionTable(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;)Lcom/pantech/app/music/list/component/ArrayListMap;

    move-result-object v1

    .line 275
    move/from16 v5, p3

    .restart local v5    # "i":I
    :goto_163
    if-eqz p2, :cond_14c

    add-int v2, p4, p3

    if-ge v5, v2, :cond_14c

    move-object v2, p1

    move-object v4, p2

    move-object/from16 v6, p5

    .line 277
    invoke-static/range {v1 .. v6}, Lcom/pantech/app/music/list/db/SelectManager$SelectInfo;->putContentsInfo(Lcom/pantech/app/music/list/component/ArrayListMap;Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Ljava/lang/String;Landroid/database/Cursor;ILjava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_178

    .line 279
    const-string v2, "Select Fail !! "

    invoke-static {v2}, Lcom/pantech/app/music/utils/MLog;->e(Ljava/lang/String;)V
    :try_end_178
    .catchall {:try_start_1a .. :try_end_178} :catchall_17

    .line 275
    :cond_178
    add-int/lit8 v5, v5, 0x1

    goto :goto_163
.end method

.method public select(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Landroid/database/Cursor;ILjava/lang/Object;Lcom/pantech/app/music/list/db/SelectManager$AsyncSelectDoneListener;)V
    .registers 13
    .param p1, "category"    # Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "iPosition"    # I
    .param p4, "cursorLock"    # Ljava/lang/Object;
    .param p5, "callback"    # Lcom/pantech/app/music/list/db/SelectManager$AsyncSelectDoneListener;

    .prologue
    .line 129
    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/pantech/app/music/list/db/SelectManager;->select(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Landroid/database/Cursor;IILjava/lang/Object;Lcom/pantech/app/music/list/db/SelectManager$AsyncSelectDoneListener;)V

    .line 130
    return-void
.end method

.method public selectGroup(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Ljava/lang/String;Lcom/pantech/app/music/list/db/SelectManager$AsyncSelectDoneListener;)V
    .registers 9
    .param p1, "category"    # Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;
    .param p2, "groupID"    # Ljava/lang/String;
    .param p3, "callback"    # Lcom/pantech/app/music/list/db/SelectManager$AsyncSelectDoneListener;

    .prologue
    .line 297
    invoke-virtual {p1}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->isGroup()Z

    move-result v1

    if-eqz v1, :cond_5b

    .line 299
    new-instance v0, Lcom/pantech/app/music/list/db/SelectManager$GroupSelectInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lcom/pantech/app/music/list/db/SelectManager$GroupSelectInfo;-><init>(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Ljava/lang/String;I)V

    .line 304
    .local v0, "groupInfo":Lcom/pantech/app/music/list/db/SelectManager$GroupSelectInfo;
    if-eqz p3, :cond_5c

    .line 306
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/pantech/app/music/list/db/SelectManager$SelectChild;

    iget-object v1, p0, Lcom/pantech/app/music/list/db/SelectManager;->mContextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    iget-object v4, p0, Lcom/pantech/app/music/list/db/SelectManager;->mSyncLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v3, v1, v0, v4, p3}, Lcom/pantech/app/music/list/db/SelectManager$SelectChild;-><init>(Landroid/content/Context;Lcom/pantech/app/music/list/db/SelectManager$GroupSelectInfo;Ljava/util/concurrent/locks/ReentrantReadWriteLock;Lcom/pantech/app/music/list/db/SelectManager$AsyncSelectDoneListener;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Select Thread:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ":"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 315
    :goto_42
    iget-object v1, p0, Lcom/pantech/app/music/list/db/SelectManager;->mSyncLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 316
    invoke-virtual {p0, p1}, Lcom/pantech/app/music/list/db/SelectManager;->getGroupSelectionTable(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;)Lcom/pantech/app/music/list/component/ArrayListMap;

    move-result-object v1

    invoke-virtual {v1, p2, v0}, Lcom/pantech/app/music/list/component/ArrayListMap;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 317
    iget-object v1, p0, Lcom/pantech/app/music/list/db/SelectManager;->mSyncLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 319
    .end local v0    # "groupInfo":Lcom/pantech/app/music/list/db/SelectManager$GroupSelectInfo;
    :cond_5b
    return-void

    .line 312
    .restart local v0    # "groupInfo":Lcom/pantech/app/music/list/db/SelectManager$GroupSelectInfo;
    :cond_5c
    iget-object v1, p0, Lcom/pantech/app/music/list/db/SelectManager;->mContextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/pantech/app/music/list/db/SelectManager$GroupSelectInfo;->selectChildAll(Landroid/content/Context;Ljava/util/concurrent/locks/ReentrantReadWriteLock;)I

    goto :goto_42
.end method

.method public selectall(Lcom/pantech/app/music/list/PageInfoType;Landroid/database/Cursor;Ljava/lang/Object;Lcom/pantech/app/music/list/db/SelectManager$AsyncSelectDoneListener;)V
    .registers 13
    .param p1, "pageInfo"    # Lcom/pantech/app/music/list/PageInfoType;
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "cursorLock"    # Ljava/lang/Object;
    .param p4, "callback"    # Lcom/pantech/app/music/list/db/SelectManager$AsyncSelectDoneListener;

    .prologue
    .line 113
    if-nez p2, :cond_3

    .line 125
    :goto_2
    return-void

    .line 115
    :cond_3
    if-nez p4, :cond_16

    .line 117
    invoke-virtual {p1}, Lcom/pantech/app/music/list/PageInfoType;->getCategoryType()Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    move-result-object v1

    const/4 v3, 0x0

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v4

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v6}, Lcom/pantech/app/music/list/db/SelectManager;->select(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Landroid/database/Cursor;IILjava/lang/Object;Lcom/pantech/app/music/list/db/SelectManager$AsyncSelectDoneListener;)V

    goto :goto_2

    .line 121
    :cond_16
    new-instance v7, Ljava/lang/Thread;

    new-instance v0, Lcom/pantech/app/music/list/db/SelectManager$SelectAll;

    iget-object v1, p0, Lcom/pantech/app/music/list/db/SelectManager;->mContextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/pantech/app/music/list/db/SelectManager$SelectAll;-><init>(Landroid/content/Context;Lcom/pantech/app/music/list/PageInfoType;Landroid/database/Cursor;Ljava/lang/Object;Lcom/pantech/app/music/list/db/SelectManager$AsyncSelectDoneListener;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "selectAll"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/pantech/app/music/list/PageInfoType;->getCategoryType()Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v7, v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 122
    .local v7, "t":Ljava/lang/Thread;
    const/4 v0, 0x5

    invoke-virtual {v7, v0}, Ljava/lang/Thread;->setPriority(I)V

    .line 123
    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    goto :goto_2
.end method

.method public unselect(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Landroid/database/Cursor;ILjava/lang/Object;)V
    .registers 7
    .param p1, "category"    # Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "iPosition"    # I
    .param p4, "cursorLock"    # Ljava/lang/Object;

    .prologue
    .line 441
    monitor-enter p4

    .line 443
    :try_start_1
    invoke-interface {p2, p3}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 446
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SelectManager:unselect:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/pantech/app/music/utils/MLog;->i(Ljava/lang/String;)V

    .line 448
    invoke-direct {p0, p1, p2, p4}, Lcom/pantech/app/music/list/db/SelectManager;->remove(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Landroid/database/Cursor;Ljava/lang/Object;)V

    .line 450
    :cond_20
    monitor-exit p4

    .line 451
    return-void

    .line 450
    :catchall_22
    move-exception v0

    monitor-exit p4
    :try_end_24
    .catchall {:try_start_1 .. :try_end_24} :catchall_22

    throw v0
.end method

.method public unselectGroup(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Ljava/lang/String;)V
    .registers 4
    .param p1, "category"    # Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;
    .param p2, "parentID"    # Ljava/lang/String;

    .prologue
    .line 455
    invoke-virtual {p1}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->isGroup()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 457
    invoke-direct {p0, p1, p2}, Lcom/pantech/app/music/list/db/SelectManager;->remove(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Ljava/lang/String;)V

    .line 459
    :cond_9
    return-void
.end method
