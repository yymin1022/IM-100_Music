.class public Lcom/pantech/app/music/list/module/PlayInterface$QueryChildAndMakePlayInfo;
.super Ljava/lang/Object;
.source "PlayInterface.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/music/list/module/PlayInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "QueryChildAndMakePlayInfo"
.end annotation


# instance fields
.field mCallback:Lcom/pantech/app/music/list/module/PlayInterface$MakePlayInfoCallback;

.field mContext:Landroid/content/Context;

.field mParam:Lcom/pantech/app/music/list/module/PlayInterface$MakePlayInfoParam;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/pantech/app/music/list/module/PlayInterface$MakePlayInfoParam;Lcom/pantech/app/music/list/module/PlayInterface$MakePlayInfoCallback;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "param"    # Lcom/pantech/app/music/list/module/PlayInterface$MakePlayInfoParam;
    .param p3, "callback"    # Lcom/pantech/app/music/list/module/PlayInterface$MakePlayInfoCallback;

    .prologue
    .line 576
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 577
    iput-object p1, p0, Lcom/pantech/app/music/list/module/PlayInterface$QueryChildAndMakePlayInfo;->mContext:Landroid/content/Context;

    .line 579
    iput-object p2, p0, Lcom/pantech/app/music/list/module/PlayInterface$QueryChildAndMakePlayInfo;->mParam:Lcom/pantech/app/music/list/module/PlayInterface$MakePlayInfoParam;

    .line 581
    iput-object p3, p0, Lcom/pantech/app/music/list/module/PlayInterface$QueryChildAndMakePlayInfo;->mCallback:Lcom/pantech/app/music/list/module/PlayInterface$MakePlayInfoCallback;

    .line 582
    return-void
.end method


# virtual methods
.method public run()V
    .registers 11

    .prologue
    .line 590
    iget-object v7, p0, Lcom/pantech/app/music/list/module/PlayInterface$QueryChildAndMakePlayInfo;->mParam:Lcom/pantech/app/music/list/module/PlayInterface$MakePlayInfoParam;

    iget-object v7, v7, Lcom/pantech/app/music/list/module/PlayInterface$MakePlayInfoParam;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v7}, Lcom/pantech/app/music/list/PageInfoType;->getCategoryType()Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    move-result-object v7

    invoke-virtual {v7}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->getChild()Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    move-result-object v2

    .line 591
    .local v2, "category":Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;
    iget-object v7, p0, Lcom/pantech/app/music/list/module/PlayInterface$QueryChildAndMakePlayInfo;->mParam:Lcom/pantech/app/music/list/module/PlayInterface$MakePlayInfoParam;

    iget-object v7, v7, Lcom/pantech/app/music/list/module/PlayInterface$MakePlayInfoParam;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v7}, Lcom/pantech/app/music/list/PageInfoType;->getExtraValue()Ljava/lang/String;

    move-result-object v4

    .line 592
    .local v4, "groupID":Ljava/lang/String;
    iget-object v7, p0, Lcom/pantech/app/music/list/module/PlayInterface$QueryChildAndMakePlayInfo;->mParam:Lcom/pantech/app/music/list/module/PlayInterface$MakePlayInfoParam;

    iget-object v7, v7, Lcom/pantech/app/music/list/module/PlayInterface$MakePlayInfoParam;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v7}, Lcom/pantech/app/music/list/PageInfoType;->getTartgetPlaylistID()J

    move-result-wide v0

    .line 593
    .local v0, "albumID":J
    new-instance v6, Lcom/pantech/app/music/list/db/DBInterfaceHelper$MusicQueryWhereCondition;

    invoke-direct {v6, v4}, Lcom/pantech/app/music/list/db/DBInterfaceHelper$MusicQueryWhereCondition;-><init>(Ljava/lang/String;)V

    .line 595
    .local v6, "whereCondition":Lcom/pantech/app/music/list/db/DBInterfaceHelper$MusicQueryWhereCondition;
    sget-object v7, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_ARTIST_SONG:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-virtual {v2, v7}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_44

    const-wide/16 v8, 0x0

    cmp-long v7, v0, v8

    if-ltz v7, :cond_44

    .line 597
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "album_id="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/pantech/app/music/list/db/DBInterfaceHelper$MusicQueryWhereCondition;->additionalWhere:Ljava/lang/String;

    .line 600
    :cond_44
    iget-object v7, p0, Lcom/pantech/app/music/list/module/PlayInterface$QueryChildAndMakePlayInfo;->mContext:Landroid/content/Context;

    const/4 v8, -0x1

    invoke-static {v7, v2, v6, v8}, Lcom/pantech/app/music/list/db/DBInterfaceCommon;->queryTrackList(Landroid/content/Context;Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Lcom/pantech/app/music/list/db/DBInterfaceHelper$MusicQueryWhereCondition;I)Landroid/database/Cursor;

    move-result-object v3

    .line 601
    .local v3, "cursor":Landroid/database/Cursor;
    iget-object v7, p0, Lcom/pantech/app/music/list/module/PlayInterface$QueryChildAndMakePlayInfo;->mContext:Landroid/content/Context;

    const/4 v8, 0x0

    invoke-static {v7, v2, v3, v8}, Lcom/pantech/app/music/list/db/CursorUtils;->convertCursorToList(Landroid/content/Context;Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Landroid/database/Cursor;Ljava/lang/Object;)[Lcom/pantech/app/music/list/MusicItemInfo;

    move-result-object v5

    .line 602
    .local v5, "tmpList":[Lcom/pantech/app/music/list/MusicItemInfo;
    if-eqz v3, :cond_57

    .line 603
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 605
    :cond_57
    iget-object v7, p0, Lcom/pantech/app/music/list/module/PlayInterface$QueryChildAndMakePlayInfo;->mCallback:Lcom/pantech/app/music/list/module/PlayInterface$MakePlayInfoCallback;

    new-instance v8, Lcom/pantech/app/music/list/module/PlayInterface$PlayInfo;

    iget-object v9, p0, Lcom/pantech/app/music/list/module/PlayInterface$QueryChildAndMakePlayInfo;->mParam:Lcom/pantech/app/music/list/module/PlayInterface$MakePlayInfoParam;

    invoke-direct {v8, v5, v9}, Lcom/pantech/app/music/list/module/PlayInterface$PlayInfo;-><init>([Lcom/pantech/app/music/list/MusicItemInfo;Lcom/pantech/app/music/list/module/PlayInterface$MakePlayInfoParam;)V

    iget-object v9, p0, Lcom/pantech/app/music/list/module/PlayInterface$QueryChildAndMakePlayInfo;->mParam:Lcom/pantech/app/music/list/module/PlayInterface$MakePlayInfoParam;

    iget-object v9, v9, Lcom/pantech/app/music/list/module/PlayInterface$MakePlayInfoParam;->mPlayType:Lcom/pantech/app/music/list/module/PlayInterface$PlayType;

    invoke-interface {v7, v8, v9}, Lcom/pantech/app/music/list/module/PlayInterface$MakePlayInfoCallback;->onMakePlayInfoComplele(Lcom/pantech/app/music/list/module/PlayInterface$PlayInfo;Lcom/pantech/app/music/list/module/PlayInterface$PlayType;)V

    .line 606
    return-void
.end method
