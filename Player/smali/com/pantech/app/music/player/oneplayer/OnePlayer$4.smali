.class Lcom/pantech/app/music/player/oneplayer/OnePlayer$4;
.super Ljava/lang/Object;
.source "OnePlayer.java"

# interfaces
.implements Lcom/pantech/app/music/albumart/AlbumArtExtractor$OnAlbumArtExtractorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/music/player/oneplayer/OnePlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/music/player/oneplayer/OnePlayer;


# direct methods
.method constructor <init>(Lcom/pantech/app/music/player/oneplayer/OnePlayer;)V
    .registers 2

    .prologue
    .line 195
    iput-object p1, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer$4;->this$0:Lcom/pantech/app/music/player/oneplayer/OnePlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAlbumArtExtracted(Lcom/pantech/app/music/albumart/AlbumArtExtractor$Param;)V
    .registers 4
    .param p1, "param"    # Lcom/pantech/app/music/albumart/AlbumArtExtractor$Param;

    .prologue
    .line 198
    iget-object v0, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer$4;->this$0:Lcom/pantech/app/music/player/oneplayer/OnePlayer;

    invoke-static {v0, p1}, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->access$802(Lcom/pantech/app/music/player/oneplayer/OnePlayer;Lcom/pantech/app/music/albumart/AlbumArtExtractor$Param;)Lcom/pantech/app/music/albumart/AlbumArtExtractor$Param;

    .line 199
    iget-object v0, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer$4;->this$0:Lcom/pantech/app/music/player/oneplayer/OnePlayer;

    const-string v1, "onAlbumArtExtracted"

    invoke-static {v0, v1}, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->access$900(Lcom/pantech/app/music/player/oneplayer/OnePlayer;Ljava/lang/CharSequence;)V

    .line 200
    return-void
.end method
