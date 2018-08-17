.class public abstract Lcom/pantech/app/music/list/db/SelectManager$SelectInfo;
.super Ljava/lang/Object;
.source "SelectManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/music/list/db/SelectManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "SelectInfo"
.end annotation


# instance fields
.field public mCategory:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;


# direct methods
.method public constructor <init>(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;)V
    .registers 2
    .param p1, "category"    # Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    .prologue
    .line 1338
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1339
    iput-object p1, p0, Lcom/pantech/app/music/list/db/SelectManager$SelectInfo;->mCategory:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    .line 1340
    return-void
.end method

.method static putContentsInfo(Lcom/pantech/app/music/list/component/ArrayListMap;Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Ljava/lang/String;Landroid/database/Cursor;ILjava/lang/Object;)Z
    .registers 12
    .param p1, "category"    # Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;
    .param p2, "groupID"    # Ljava/lang/String;
    .param p3, "cursor"    # Landroid/database/Cursor;
    .param p4, "position"    # I
    .param p5, "cursorLock"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pantech/app/music/list/component/ArrayListMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/pantech/app/music/list/db/SelectManager$ContentSelectInfo;",
            ">;",
            "Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;",
            "Ljava/lang/String;",
            "Landroid/database/Cursor;",
            "I",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p0, "table":Lcom/pantech/app/music/list/component/ArrayListMap;, "Lcom/pantech/app/music/list/component/ArrayListMap<Ljava/lang/String;Lcom/pantech/app/music/list/db/SelectManager$ContentSelectInfo;>;"
    const/4 v4, 0x0

    .line 1349
    if-nez p5, :cond_8

    new-instance p5, Ljava/lang/Object;

    .end local p5    # "cursorLock":Ljava/lang/Object;
    invoke-direct {p5}, Ljava/lang/Object;-><init>()V

    .line 1351
    .restart local p5    # "cursorLock":Ljava/lang/Object;
    :cond_8
    monitor-enter p5

    .line 1353
    :try_start_9
    invoke-interface {p3, p4}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v5

    if-eqz v5, :cond_70

    .line 1355
    sget-object v5, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_ARTIST_SONG:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    if-ne p1, v5, :cond_27

    .line 1357
    const-string v5, "seperator_type"

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    if-lez v5, :cond_27

    .line 1359
    const-string v5, "seperator_type"

    invoke-static {p3, v5}, Lcom/pantech/app/music/list/db/CursorUtils;->getCursorInt(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    .line 1360
    .local v3, "seperatorType":I
    const/16 v5, -0x64

    if-ne v3, v5, :cond_27

    .line 1362
    monitor-exit p5

    .line 1389
    .end local v3    # "seperatorType":I
    :goto_26
    return v4

    .line 1367
    :cond_27
    invoke-static {p1, p3}, Lcom/pantech/app/music/list/db/CursorUtils;->getMediaID(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Landroid/database/Cursor;)J

    move-result-wide v0

    .line 1371
    .local v0, "mediaID":J
    invoke-virtual {p1}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->isUBoxSongCategory()Z

    move-result v4

    if-eqz v4, :cond_69

    .line 1373
    const-string v4, "DownUrl"

    invoke-static {p3, v4}, Lcom/pantech/app/music/list/db/CursorUtils;->getCursorString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1380
    .local v2, "sPath":Ljava/lang/String;
    :goto_37
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/pantech/app/music/list/db/SelectManager$ContentSelectInfo;

    invoke-direct {v5, p1, p2, p3}, Lcom/pantech/app/music/list/db/SelectManager$ContentSelectInfo;-><init>(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Ljava/lang/String;Landroid/database/Cursor;)V

    invoke-virtual {p0, v4, v5}, Lcom/pantech/app/music/list/component/ArrayListMap;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1383
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " ##### select contents mediaID:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " sPath:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/pantech/app/music/utils/MLog;->v(Ljava/lang/String;)V

    .line 1385
    const/4 v4, 0x1

    monitor-exit p5

    goto :goto_26

    .line 1387
    .end local v0    # "mediaID":J
    .end local v2    # "sPath":Ljava/lang/String;
    :catchall_66
    move-exception v4

    monitor-exit p5
    :try_end_68
    .catchall {:try_start_9 .. :try_end_68} :catchall_66

    throw v4

    .line 1377
    .restart local v0    # "mediaID":J
    :cond_69
    :try_start_69
    const-string v4, "_data"

    invoke-static {p3, v4}, Lcom/pantech/app/music/list/db/CursorUtils;->getCursorString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "sPath":Ljava/lang/String;
    goto :goto_37

    .line 1387
    .end local v0    # "mediaID":J
    .end local v2    # "sPath":Ljava/lang/String;
    :cond_70
    monitor-exit p5
    :try_end_71
    .catchall {:try_start_69 .. :try_end_71} :catchall_66

    goto :goto_26
.end method


# virtual methods
.method public abstract getAllContentsCount()I
.end method

.method public abstract getContentsValues()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/pantech/app/music/list/db/SelectManager$ContentSelectInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSelectedContentsCount()I
.end method

.method public abstract isSelected()Z
.end method
