.class Lcom/pantech/app/music/list/module/AddToPlaylistTask$2;
.super Ljava/lang/Object;
.source "AddToPlaylistTask.java"

# interfaces
.implements Lcom/pantech/app/music/list/db/SelectManager$MakeSelectListTemplate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/app/music/list/module/AddToPlaylistTask;->addToNowplayingList(Ljava/util/Collection;)Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistInsertErrorType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/music/list/module/AddToPlaylistTask;

.field final synthetic val$dupAddArrList:Ljava/util/ArrayList;

.field final synthetic val$newAddArrList:Ljava/util/ArrayList;

.field final synthetic val$searchTable:Ljava/util/HashMap;


# direct methods
.method constructor <init>(Lcom/pantech/app/music/list/module/AddToPlaylistTask;Ljava/util/HashMap;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 5

    .prologue
    .line 115
    iput-object p1, p0, Lcom/pantech/app/music/list/module/AddToPlaylistTask$2;->this$0:Lcom/pantech/app/music/list/module/AddToPlaylistTask;

    iput-object p2, p0, Lcom/pantech/app/music/list/module/AddToPlaylistTask$2;->val$searchTable:Ljava/util/HashMap;

    iput-object p3, p0, Lcom/pantech/app/music/list/module/AddToPlaylistTask$2;->val$newAddArrList:Ljava/util/ArrayList;

    iput-object p4, p0, Lcom/pantech/app/music/list/module/AddToPlaylistTask$2;->val$dupAddArrList:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public process(Lcom/pantech/app/music/list/db/SelectManager$ContentSelectInfo;)V
    .registers 6
    .param p1, "contentSelectInfo"    # Lcom/pantech/app/music/list/db/SelectManager$ContentSelectInfo;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/pantech/app/music/list/module/AddToPlaylistTask$2;->val$searchTable:Ljava/util/HashMap;

    iget-wide v2, p1, Lcom/pantech/app/music/list/db/SelectManager$ContentSelectInfo;->audioID:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_36

    .line 122
    iget-object v0, p0, Lcom/pantech/app/music/list/module/AddToPlaylistTask$2;->val$newAddArrList:Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/pantech/app/music/list/db/SelectManager$ContentSelectInfo;->mCntInfo:Lcom/pantech/app/music/list/MusicItemInfo;

    invoke-virtual {v1}, Lcom/pantech/app/music/list/MusicItemInfo;->clone()Lcom/pantech/app/music/list/MusicItemInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "adding:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/pantech/app/music/list/db/SelectManager$ContentSelectInfo;->mCntInfo:Lcom/pantech/app/music/list/MusicItemInfo;

    invoke-virtual {v1}, Lcom/pantech/app/music/list/MusicItemInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/pantech/app/music/utils/MLog;->i(Ljava/lang/String;)V

    .line 132
    :goto_35
    return-void

    .line 128
    :cond_36
    iget-object v0, p0, Lcom/pantech/app/music/list/module/AddToPlaylistTask$2;->val$dupAddArrList:Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/pantech/app/music/list/db/SelectManager$ContentSelectInfo;->mCntInfo:Lcom/pantech/app/music/list/MusicItemInfo;

    invoke-virtual {v1}, Lcom/pantech/app/music/list/MusicItemInfo;->clone()Lcom/pantech/app/music/list/MusicItemInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "duplication:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/pantech/app/music/list/db/SelectManager$ContentSelectInfo;->mCntInfo:Lcom/pantech/app/music/list/MusicItemInfo;

    invoke-virtual {v1}, Lcom/pantech/app/music/list/MusicItemInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/pantech/app/music/utils/MLog;->i(Ljava/lang/String;)V

    goto :goto_35
.end method
