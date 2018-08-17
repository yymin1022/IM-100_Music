.class Lcom/pantech/app/music/player/MusicPlaybackActivity$11;
.super Ljava/lang/Object;
.source "MusicPlaybackActivity.java"

# interfaces
.implements Lcom/pantech/app/music/list/listener/ISelectMenuCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/app/music/player/MusicPlaybackActivity;->addToPlayList(Lcom/pantech/app/music/list/MusicItemInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;


# direct methods
.method constructor <init>(Lcom/pantech/app/music/player/MusicPlaybackActivity;)V
    .registers 2

    .prologue
    .line 1421
    iput-object p1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$11;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelectMenuResult(IZLjava/lang/Object;)V
    .registers 8
    .param p1, "menuID"    # I
    .param p2, "isSuccess"    # Z
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1424
    if-eqz p2, :cond_14

    check-cast p3, Ljava/lang/Long;

    .end local p3    # "obj":Ljava/lang/Object;
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, -0x6

    cmp-long v0, v0, v2

    if-nez v0, :cond_14

    .line 1425
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$11;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->access$300(Lcom/pantech/app/music/player/MusicPlaybackActivity;Z)V

    .line 1427
    :cond_14
    return-void
.end method
