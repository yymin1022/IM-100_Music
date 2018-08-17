.class Lcom/pantech/app/music/list/fragment/ListUboxFragment$UPlusDataBoxDatabaseTask;
.super Ljava/lang/Object;
.source "ListUboxFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/music/list/fragment/ListUboxFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UPlusDataBoxDatabaseTask"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mData:Lcom/pantech/multimedia/data/FeedData;

.field final synthetic this$0:Lcom/pantech/app/music/list/fragment/ListUboxFragment;


# direct methods
.method public constructor <init>(Lcom/pantech/app/music/list/fragment/ListUboxFragment;Landroid/content/Context;Lcom/pantech/multimedia/data/FeedData;)V
    .registers 4
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "data"    # Lcom/pantech/multimedia/data/FeedData;

    .prologue
    .line 779
    iput-object p1, p0, Lcom/pantech/app/music/list/fragment/ListUboxFragment$UPlusDataBoxDatabaseTask;->this$0:Lcom/pantech/app/music/list/fragment/ListUboxFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 780
    iput-object p2, p0, Lcom/pantech/app/music/list/fragment/ListUboxFragment$UPlusDataBoxDatabaseTask;->mContext:Landroid/content/Context;

    .line 781
    iput-object p3, p0, Lcom/pantech/app/music/list/fragment/ListUboxFragment$UPlusDataBoxDatabaseTask;->mData:Lcom/pantech/multimedia/data/FeedData;

    .line 782
    return-void
.end method

.method private makeContentValue(Lcom/pantech/multimedia/data/vendor/UPlusFeedData$FileList;)Landroid/content/ContentValues;
    .registers 5
    .param p1, "data"    # Lcom/pantech/multimedia/data/vendor/UPlusFeedData$FileList;

    .prologue
    .line 853
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 855
    .local v0, "value":Landroid/content/ContentValues;
    const-string v1, "Title"

    invoke-virtual {p1}, Lcom/pantech/multimedia/data/vendor/UPlusFeedData$FileList;->getSongTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 856
    const-string v1, "fileID"

    invoke-virtual {p1}, Lcom/pantech/multimedia/data/vendor/UPlusFeedData$FileList;->getSongID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 857
    const-string v1, "fileName"

    invoke-virtual {p1}, Lcom/pantech/multimedia/data/vendor/UPlusFeedData$FileList;->getFileName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 858
    const-string v1, "Artist"

    invoke-virtual {p1}, Lcom/pantech/multimedia/data/vendor/UPlusFeedData$FileList;->getArtistName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 859
    const-string v1, "Album"

    invoke-virtual {p1}, Lcom/pantech/multimedia/data/vendor/UPlusFeedData$FileList;->getAlbumTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 860
    const-string v1, "fileSize"

    invoke-virtual {p1}, Lcom/pantech/multimedia/data/vendor/UPlusFeedData$FileList;->getFileSize()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 861
    const-string v1, "Playtime"

    invoke-virtual {p1}, Lcom/pantech/multimedia/data/vendor/UPlusFeedData$FileList;->getDuration()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 862
    const-string v1, "ModifyTime"

    invoke-virtual {p1}, Lcom/pantech/multimedia/data/vendor/UPlusFeedData$FileList;->getRegDT()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 863
    const-string v1, "Bitrate"

    invoke-virtual {p1}, Lcom/pantech/multimedia/data/vendor/UPlusFeedData$FileList;->getBitRate()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 864
    const-string v1, "AlbumUrl"

    invoke-virtual {p1}, Lcom/pantech/multimedia/data/vendor/UPlusFeedData$FileList;->getAlbumImgURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 865
    const-string v1, "DownUrl"

    invoke-virtual {p1}, Lcom/pantech/multimedia/data/vendor/UPlusFeedData$FileList;->getDownLoadURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 867
    return-object v0
.end method


# virtual methods
.method public run()V
    .registers 13

    .prologue
    .line 787
    iget-object v7, p0, Lcom/pantech/app/music/list/fragment/ListUboxFragment$UPlusDataBoxDatabaseTask;->this$0:Lcom/pantech/app/music/list/fragment/ListUboxFragment;

    iget-object v8, v7, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->mCursorLock:Ljava/lang/Object;

    monitor-enter v8

    .line 789
    const/4 v1, 0x0

    .line 790
    .local v1, "arrayData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/pantech/multimedia/data/vendor/UPlusFeedData$FileList;>;"
    :try_start_6
    iget-object v7, p0, Lcom/pantech/app/music/list/fragment/ListUboxFragment$UPlusDataBoxDatabaseTask;->mData:Lcom/pantech/multimedia/data/FeedData;

    invoke-interface {v7}, Lcom/pantech/multimedia/data/FeedData;->getItems()Ljava/util/ArrayList;

    move-result-object v1

    .line 792
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 794
    .local v4, "size":I
    iget-object v7, p0, Lcom/pantech/app/music/list/fragment/ListUboxFragment$UPlusDataBoxDatabaseTask;->mData:Lcom/pantech/multimedia/data/FeedData;

    invoke-interface {v7}, Lcom/pantech/multimedia/data/FeedData;->getTotal()I

    move-result v7

    if-lez v7, :cond_21

    if-nez v4, :cond_21

    .line 797
    iget-object v7, p0, Lcom/pantech/app/music/list/fragment/ListUboxFragment$UPlusDataBoxDatabaseTask;->this$0:Lcom/pantech/app/music/list/fragment/ListUboxFragment;

    invoke-static {v7}, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->access$500(Lcom/pantech/app/music/list/fragment/ListUboxFragment;)V

    .line 798
    monitor-exit v8

    .line 848
    :goto_20
    return-void

    .line 803
    :cond_21
    iget-object v7, p0, Lcom/pantech/app/music/list/fragment/ListUboxFragment$UPlusDataBoxDatabaseTask;->this$0:Lcom/pantech/app/music/list/fragment/ListUboxFragment;

    invoke-virtual {v7}, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    sget-object v9, Lcom/pantech/app/music/db/MusicDBStore$Cloud$UPlusBox$Song;->CONTENT_URI:Landroid/net/Uri;

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v7, v9, v10, v11}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 806
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 808
    .local v0, "arrayContentValue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_38
    if-ge v2, v4, :cond_184

    .line 811
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/pantech/multimedia/data/vendor/UPlusFeedData$FileList;

    .line 814
    .local v5, "tempNode":Lcom/pantech/multimedia/data/vendor/UPlusFeedData$FileList;
    const-string v7, "==========================================="

    invoke-static {v7}, Lcom/pantech/app/music/utils/MLog;->e(Ljava/lang/String;)V

    .line 815
    const-string v7, "BongBong"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "AlbumImgURL : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v5}, Lcom/pantech/multimedia/data/vendor/UPlusFeedData$FileList;->getAlbumImgURL()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Lcom/pantech/app/music/utils/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 816
    const-string v7, "BongBong"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Album title : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v5}, Lcom/pantech/multimedia/data/vendor/UPlusFeedData$FileList;->getAlbumTitle()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Lcom/pantech/app/music/utils/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 817
    const-string v7, "BongBong"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Artist Name : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v5}, Lcom/pantech/multimedia/data/vendor/UPlusFeedData$FileList;->getArtistName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Lcom/pantech/app/music/utils/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 818
    const-string v7, "BongBong"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Bit Rate    : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v5}, Lcom/pantech/multimedia/data/vendor/UPlusFeedData$FileList;->getBitRate()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Lcom/pantech/app/music/utils/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 819
    const-string v7, "BongBong"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "File Type   : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v5}, Lcom/pantech/multimedia/data/vendor/UPlusFeedData$FileList;->getType()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Lcom/pantech/app/music/utils/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 820
    const-string v7, "BongBong"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "duration    : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v5}, Lcom/pantech/multimedia/data/vendor/UPlusFeedData$FileList;->getDuration()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Lcom/pantech/app/music/utils/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 821
    const-string v7, "BongBong"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "file size   : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v5}, Lcom/pantech/multimedia/data/vendor/UPlusFeedData$FileList;->getFileSize()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Lcom/pantech/app/music/utils/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 822
    const-string v7, "BongBong"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Cloud DT      : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v5}, Lcom/pantech/multimedia/data/vendor/UPlusFeedData$FileList;->getRegDT()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Lcom/pantech/app/music/utils/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 823
    const-string v7, "BongBong"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Song ID     : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v5}, Lcom/pantech/multimedia/data/vendor/UPlusFeedData$FileList;->getSongID()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Lcom/pantech/app/music/utils/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 824
    const-string v7, "BongBong"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Song Title  : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v5}, Lcom/pantech/multimedia/data/vendor/UPlusFeedData$FileList;->getSongTitle()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Lcom/pantech/app/music/utils/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 825
    const-string v7, "BongBong"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "File Name  : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v5}, Lcom/pantech/multimedia/data/vendor/UPlusFeedData$FileList;->getFileName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Lcom/pantech/app/music/utils/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 828
    invoke-direct {p0, v5}, Lcom/pantech/app/music/list/fragment/ListUboxFragment$UPlusDataBoxDatabaseTask;->makeContentValue(Lcom/pantech/multimedia/data/vendor/UPlusFeedData$FileList;)Landroid/content/ContentValues;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 808
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_38

    .line 832
    .end local v5    # "tempNode":Lcom/pantech/multimedia/data/vendor/UPlusFeedData$FileList;
    :cond_184
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_1b2

    .line 834
    iget-object v7, p0, Lcom/pantech/app/music/list/fragment/ListUboxFragment$UPlusDataBoxDatabaseTask;->this$0:Lcom/pantech/app/music/list/fragment/ListUboxFragment;

    invoke-virtual {v7}, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    sget-object v9, Lcom/pantech/app/music/db/MusicDBStore$Cloud$UPlusBox$Song;->CONTENT_URI:Landroid/net/Uri;

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v7, v9, v10, v11}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 836
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v7, v7, [Landroid/content/ContentValues;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroid/content/ContentValues;

    .line 837
    .local v6, "values":[Landroid/content/ContentValues;
    iget-object v7, p0, Lcom/pantech/app/music/list/fragment/ListUboxFragment$UPlusDataBoxDatabaseTask;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    sget-object v9, Lcom/pantech/app/music/db/MusicDBStore$Cloud$UPlusBox$Song;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v7, v9, v6}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    .line 840
    .end local v6    # "values":[Landroid/content/ContentValues;
    :cond_1b2
    iget-object v7, p0, Lcom/pantech/app/music/list/fragment/ListUboxFragment$UPlusDataBoxDatabaseTask;->this$0:Lcom/pantech/app/music/list/fragment/ListUboxFragment;

    iget-object v7, v7, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->mUboxHandler:Lcom/pantech/app/music/list/fragment/ListUboxFragment$CloudListHandler;

    if-eqz v7, :cond_1ce

    .line 842
    iget-object v7, p0, Lcom/pantech/app/music/list/fragment/ListUboxFragment$UPlusDataBoxDatabaseTask;->this$0:Lcom/pantech/app/music/list/fragment/ListUboxFragment;

    iget-object v7, v7, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->mUboxHandler:Lcom/pantech/app/music/list/fragment/ListUboxFragment$CloudListHandler;

    const/4 v9, 0x3

    invoke-virtual {v7, v9}, Lcom/pantech/app/music/list/fragment/ListUboxFragment$CloudListHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 843
    .local v3, "mainHandlerMsg":Landroid/os/Message;
    iget-object v7, p0, Lcom/pantech/app/music/list/fragment/ListUboxFragment$UPlusDataBoxDatabaseTask;->this$0:Lcom/pantech/app/music/list/fragment/ListUboxFragment;

    iget-object v7, v7, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->mUboxHandler:Lcom/pantech/app/music/list/fragment/ListUboxFragment$CloudListHandler;

    invoke-virtual {v7, v3}, Lcom/pantech/app/music/list/fragment/ListUboxFragment$CloudListHandler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 847
    .end local v3    # "mainHandlerMsg":Landroid/os/Message;
    :goto_1c8
    monitor-exit v8

    goto/16 :goto_20

    .end local v0    # "arrayContentValue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v2    # "i":I
    .end local v4    # "size":I
    :catchall_1cb
    move-exception v7

    monitor-exit v8
    :try_end_1cd
    .catchall {:try_start_6 .. :try_end_1cd} :catchall_1cb

    throw v7

    .line 846
    .restart local v0    # "arrayContentValue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .restart local v2    # "i":I
    .restart local v4    # "size":I
    :cond_1ce
    :try_start_1ce
    iget-object v7, p0, Lcom/pantech/app/music/list/fragment/ListUboxFragment$UPlusDataBoxDatabaseTask;->this$0:Lcom/pantech/app/music/list/fragment/ListUboxFragment;

    invoke-static {v7}, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->access$500(Lcom/pantech/app/music/list/fragment/ListUboxFragment;)V
    :try_end_1d3
    .catchall {:try_start_1ce .. :try_end_1d3} :catchall_1cb

    goto :goto_1c8
.end method
