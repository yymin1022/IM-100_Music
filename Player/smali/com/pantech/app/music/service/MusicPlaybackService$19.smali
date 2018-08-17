.class Lcom/pantech/app/music/service/MusicPlaybackService$19;
.super Ljava/lang/Object;
.source "MusicPlaybackService.java"

# interfaces
.implements Lcom/pantech/app/music/albumart/AlbumArtExtractor$OnAlbumArtExtractorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/app/music/service/MusicPlaybackService;->getAlbumArtData()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/music/service/MusicPlaybackService;


# direct methods
.method constructor <init>(Lcom/pantech/app/music/service/MusicPlaybackService;)V
    .registers 2

    .prologue
    .line 4152
    iput-object p1, p0, Lcom/pantech/app/music/service/MusicPlaybackService$19;->this$0:Lcom/pantech/app/music/service/MusicPlaybackService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAlbumArtExtracted(Lcom/pantech/app/music/albumart/AlbumArtExtractor$Param;)V
    .registers 4
    .param p1, "param"    # Lcom/pantech/app/music/albumart/AlbumArtExtractor$Param;

    .prologue
    .line 4155
    const-string v0, "get albumart "

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/MLog;->performance(Ljava/lang/String;Z)V

    .line 4156
    invoke-virtual {p1}, Lcom/pantech/app/music/albumart/AlbumArtExtractor$Param;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 4158
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackService$19;->this$0:Lcom/pantech/app/music/service/MusicPlaybackService;

    invoke-virtual {p1}, Lcom/pantech/app/music/albumart/AlbumArtExtractor$Param;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/music/service/MusicPlaybackService;->access$5102(Lcom/pantech/app/music/service/MusicPlaybackService;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 4167
    :cond_15
    return-void
.end method
