.class final Lcom/pantech/app/music/list/db/DBInterfacePlaylist$1;
.super Ljava/lang/Object;
.source "DBInterfacePlaylist.java"

# interfaces
.implements Lcom/pantech/app/music/list/db/SelectManager$MakeSelectListTemplate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/app/music/list/db/DBInterfacePlaylist;->insertFavorites(Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;Lcom/pantech/app/music/service/IMusicPlaybackService;Ljava/util/Collection;)Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistInsertErrorType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field count:I

.field final synthetic val$addingAudioIDsList:Ljava/util/ArrayList;

.field final synthetic val$baseAuioIDTable:Ljava/util/HashMap;

.field final synthetic val$duplicatedAudioIDs:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Ljava/util/HashMap;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 5

    .prologue
    .line 852
    iput-object p1, p0, Lcom/pantech/app/music/list/db/DBInterfacePlaylist$1;->val$baseAuioIDTable:Ljava/util/HashMap;

    iput-object p2, p0, Lcom/pantech/app/music/list/db/DBInterfacePlaylist$1;->val$addingAudioIDsList:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/pantech/app/music/list/db/DBInterfacePlaylist$1;->val$duplicatedAudioIDs:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 853
    const/4 v0, 0x0

    iput v0, p0, Lcom/pantech/app/music/list/db/DBInterfacePlaylist$1;->count:I

    return-void
.end method


# virtual methods
.method public process(Lcom/pantech/app/music/list/db/SelectManager$ContentSelectInfo;)V
    .registers 8
    .param p1, "contentSelectInfo"    # Lcom/pantech/app/music/list/db/SelectManager$ContentSelectInfo;

    .prologue
    .line 859
    iget-object v1, p0, Lcom/pantech/app/music/list/db/DBInterfacePlaylist$1;->val$baseAuioIDTable:Ljava/util/HashMap;

    iget-object v2, p1, Lcom/pantech/app/music/list/db/SelectManager$ContentSelectInfo;->mCntInfo:Lcom/pantech/app/music/list/MusicItemInfo;

    iget-wide v2, v2, Lcom/pantech/app/music/list/MusicItemInfo;->lAudioID:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_78

    .line 861
    iget v1, p0, Lcom/pantech/app/music/list/db/DBInterfacePlaylist$1;->count:I

    div-int/lit16 v0, v1, 0x1f4

    .line 863
    .local v0, "particalPos":I
    const-string v1, "DBInterfaceCommon"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "insertFavorites:particalPos:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " count:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/pantech/app/music/list/db/DBInterfacePlaylist$1;->count:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " title:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/pantech/app/music/list/db/SelectManager$ContentSelectInfo;->mCntInfo:Lcom/pantech/app/music/list/MusicItemInfo;

    iget-object v3, v3, Lcom/pantech/app/music/list/MusicItemInfo;->szTitle:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/music/utils/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 865
    iget-object v1, p0, Lcom/pantech/app/music/list/db/DBInterfacePlaylist$1;->val$addingAudioIDsList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gt v1, v0, :cond_58

    .line 867
    iget-object v1, p0, Lcom/pantech/app/music/list/db/DBInterfacePlaylist$1;->val$addingAudioIDsList:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v0, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 870
    :cond_58
    iget-wide v2, p1, Lcom/pantech/app/music/list/db/SelectManager$ContentSelectInfo;->audioID:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_71

    .line 872
    iget-object v1, p0, Lcom/pantech/app/music/list/db/DBInterfacePlaylist$1;->val$addingAudioIDsList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    iget-wide v2, p1, Lcom/pantech/app/music/list/db/SelectManager$ContentSelectInfo;->audioID:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 875
    :cond_71
    iget v1, p0, Lcom/pantech/app/music/list/db/DBInterfacePlaylist$1;->count:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/pantech/app/music/list/db/DBInterfacePlaylist$1;->count:I

    .line 883
    .end local v0    # "particalPos":I
    :goto_77
    return-void

    .line 879
    :cond_78
    const-string v1, "DBInterfaceCommon"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "insertFavorites:dup:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/pantech/app/music/list/db/SelectManager$ContentSelectInfo;->mCntInfo:Lcom/pantech/app/music/list/MusicItemInfo;

    iget-object v3, v3, Lcom/pantech/app/music/list/MusicItemInfo;->szTitle:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/music/utils/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 881
    iget-object v1, p0, Lcom/pantech/app/music/list/db/DBInterfacePlaylist$1;->val$duplicatedAudioIDs:Ljava/util/ArrayList;

    iget-wide v2, p1, Lcom/pantech/app/music/list/db/SelectManager$ContentSelectInfo;->audioID:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_77
.end method
