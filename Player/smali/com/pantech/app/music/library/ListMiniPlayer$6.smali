.class Lcom/pantech/app/music/library/ListMiniPlayer$6;
.super Ljava/lang/Object;
.source "ListMiniPlayer.java"

# interfaces
.implements Lcom/pantech/app/music/albumart/AlbumArtExtractor$OnAlbumArtExtractorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/app/music/library/ListMiniPlayer;->updatePlayerColor(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/music/library/ListMiniPlayer;


# direct methods
.method constructor <init>(Lcom/pantech/app/music/library/ListMiniPlayer;)V
    .registers 2

    .prologue
    .line 507
    iput-object p1, p0, Lcom/pantech/app/music/library/ListMiniPlayer$6;->this$0:Lcom/pantech/app/music/library/ListMiniPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAlbumArtExtracted(Lcom/pantech/app/music/albumart/AlbumArtExtractor$Param;)V
    .registers 6
    .param p1, "param"    # Lcom/pantech/app/music/albumart/AlbumArtExtractor$Param;

    .prologue
    .line 510
    const-string v1, "ListMiniPlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isDetached: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/pantech/app/music/library/ListMiniPlayer$6;->this$0:Lcom/pantech/app/music/library/ListMiniPlayer;

    invoke-virtual {v3}, Lcom/pantech/app/music/library/ListMiniPlayer;->isDetached()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/music/utils/MLog;->debugE(Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    iget-object v1, p0, Lcom/pantech/app/music/library/ListMiniPlayer$6;->this$0:Lcom/pantech/app/music/library/ListMiniPlayer;

    invoke-static {v1}, Lcom/pantech/app/music/library/ListMiniPlayer;->access$200(Lcom/pantech/app/music/library/ListMiniPlayer;)Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_2e

    .line 515
    const-string v1, "ListMiniPlayer"

    const-string v2, "RETURN mContext = null"

    invoke-static {v1, v2}, Lcom/pantech/app/music/utils/MLog;->debugE(Ljava/lang/String;Ljava/lang/String;)V

    .line 529
    :goto_2d
    return-void

    .line 520
    :cond_2e
    invoke-virtual {p1}, Lcom/pantech/app/music/albumart/AlbumArtExtractor$Param;->getColorful()Lcom/pantech/app/music/utils/ColorUtils$Colorful;

    move-result-object v0

    .line 522
    .local v0, "colorful":Lcom/pantech/app/music/utils/ColorUtils$Colorful;
    iget-object v1, p0, Lcom/pantech/app/music/library/ListMiniPlayer$6;->this$0:Lcom/pantech/app/music/library/ListMiniPlayer;

    invoke-virtual {v0}, Lcom/pantech/app/music/utils/ColorUtils$Colorful;->getPointcolor()I

    move-result v2

    invoke-static {v1, v2}, Lcom/pantech/app/music/library/ListMiniPlayer;->access$300(Lcom/pantech/app/music/library/ListMiniPlayer;I)V

    .line 528
    iget-object v1, p0, Lcom/pantech/app/music/library/ListMiniPlayer$6;->this$0:Lcom/pantech/app/music/library/ListMiniPlayer;

    invoke-virtual {v0}, Lcom/pantech/app/music/utils/ColorUtils$Colorful;->getMaincolor()I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/pantech/app/music/library/ListMiniPlayer;->access$400(Lcom/pantech/app/music/library/ListMiniPlayer;IZ)V

    goto :goto_2d
.end method
