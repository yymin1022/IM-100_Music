.class Lcom/pantech/app/music/service/MultiPlayer$1;
.super Ljava/lang/Object;
.source "MultiPlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnBufferingUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/music/service/MultiPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/music/service/MultiPlayer;


# direct methods
.method constructor <init>(Lcom/pantech/app/music/service/MultiPlayer;)V
    .registers 2

    .prologue
    .line 259
    iput-object p1, p0, Lcom/pantech/app/music/service/MultiPlayer$1;->this$0:Lcom/pantech/app/music/service/MultiPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBufferingUpdate(Landroid/media/MediaPlayer;I)V
    .registers 4
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "percent"    # I

    .prologue
    .line 263
    iget-object v0, p0, Lcom/pantech/app/music/service/MultiPlayer$1;->this$0:Lcom/pantech/app/music/service/MultiPlayer;

    invoke-static {v0, p2}, Lcom/pantech/app/music/service/MultiPlayer;->access$002(Lcom/pantech/app/music/service/MultiPlayer;I)I

    .line 264
    return-void
.end method
