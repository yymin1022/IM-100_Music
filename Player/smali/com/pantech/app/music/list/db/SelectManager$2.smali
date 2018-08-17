.class final Lcom/pantech/app/music/list/db/SelectManager$2;
.super Ljava/lang/Object;
.source "SelectManager.java"

# interfaces
.implements Lcom/pantech/app/music/list/db/SelectManager$MakeSelectListTemplate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/app/music/list/db/SelectManager;->getSelectedUriLists(Ljava/util/Collection;ZLcom/pantech/app/music/list/db/SelectManager$CheckDrmListListener;)Ljava/util/ArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$checkDrm:Z

.field final synthetic val$uris:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(ZLjava/util/ArrayList;)V
    .registers 3

    .prologue
    .line 1218
    iput-boolean p1, p0, Lcom/pantech/app/music/list/db/SelectManager$2;->val$checkDrm:Z

    iput-object p2, p0, Lcom/pantech/app/music/list/db/SelectManager$2;->val$uris:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public process(Lcom/pantech/app/music/list/db/SelectManager$ContentSelectInfo;)V
    .registers 6
    .param p1, "contentSelectInfo"    # Lcom/pantech/app/music/list/db/SelectManager$ContentSelectInfo;

    .prologue
    .line 1223
    iget-object v0, p1, Lcom/pantech/app/music/list/db/SelectManager$ContentSelectInfo;->mCntInfo:Lcom/pantech/app/music/list/MusicItemInfo;

    iget-wide v0, v0, Lcom/pantech/app/music/list/MusicItemInfo;->lAudioID:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_39

    .line 1225
    iget-boolean v0, p0, Lcom/pantech/app/music/list/db/SelectManager$2;->val$checkDrm:Z

    if-eqz v0, :cond_4a

    .line 1227
    iget-object v0, p1, Lcom/pantech/app/music/list/db/SelectManager$ContentSelectInfo;->mCntInfo:Lcom/pantech/app/music/list/MusicItemInfo;

    invoke-virtual {v0}, Lcom/pantech/app/music/list/MusicItemInfo;->getData()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/pantech/app/music/list/utility/MusicLibraryUtils;->IsDrmContents(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 1229
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "has DRM contents: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/pantech/app/music/list/db/SelectManager$ContentSelectInfo;->mCntInfo:Lcom/pantech/app/music/list/MusicItemInfo;

    invoke-virtual {v1}, Lcom/pantech/app/music/list/MusicItemInfo;->getData()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/pantech/app/music/utils/MLog;->w(Ljava/lang/String;)V

    .line 1230
    invoke-static {}, Lcom/pantech/app/music/list/db/SelectManager;->access$008()I

    .line 1242
    :cond_39
    :goto_39
    return-void

    .line 1234
    :cond_3a
    iget-object v0, p0, Lcom/pantech/app/music/list/db/SelectManager$2;->val$uris:Ljava/util/ArrayList;

    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p1, Lcom/pantech/app/music/list/db/SelectManager$ContentSelectInfo;->mCntInfo:Lcom/pantech/app/music/list/MusicItemInfo;

    iget-wide v2, v2, Lcom/pantech/app/music/list/MusicItemInfo;->lAudioID:J

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_39

    .line 1239
    :cond_4a
    iget-object v0, p0, Lcom/pantech/app/music/list/db/SelectManager$2;->val$uris:Ljava/util/ArrayList;

    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p1, Lcom/pantech/app/music/list/db/SelectManager$ContentSelectInfo;->mCntInfo:Lcom/pantech/app/music/list/MusicItemInfo;

    iget-wide v2, v2, Lcom/pantech/app/music/list/MusicItemInfo;->lAudioID:J

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_39
.end method
