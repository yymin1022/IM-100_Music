.class Lcom/pantech/app/music/service/ESoundPlayer$2;
.super Ljava/lang/Object;
.source "ESoundPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/app/music/service/ESoundPlayer;->eSoundStop()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/music/service/ESoundPlayer;


# direct methods
.method constructor <init>(Lcom/pantech/app/music/service/ESoundPlayer;)V
    .registers 2

    .prologue
    .line 59
    iput-object p1, p0, Lcom/pantech/app/music/service/ESoundPlayer$2;->this$0:Lcom/pantech/app/music/service/ESoundPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 64
    invoke-static {}, Lcom/pantech/app/music/service/ESoundPlayer;->access$000()Landroid/media/MediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 65
    invoke-static {}, Lcom/pantech/app/music/service/ESoundPlayer;->access$000()Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 66
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/pantech/app/music/service/ESoundPlayer;->access$002(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;

    .line 68
    :cond_11
    return-void
.end method
