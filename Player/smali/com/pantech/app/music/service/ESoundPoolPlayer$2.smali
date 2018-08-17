.class Lcom/pantech/app/music/service/ESoundPoolPlayer$2;
.super Ljava/lang/Object;
.source "ESoundPoolPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/app/music/service/ESoundPoolPlayer;->eSoundStop()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/music/service/ESoundPoolPlayer;


# direct methods
.method constructor <init>(Lcom/pantech/app/music/service/ESoundPoolPlayer;)V
    .registers 2

    .prologue
    .line 73
    iput-object p1, p0, Lcom/pantech/app/music/service/ESoundPoolPlayer$2;->this$0:Lcom/pantech/app/music/service/ESoundPoolPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 78
    iget-object v0, p0, Lcom/pantech/app/music/service/ESoundPoolPlayer$2;->this$0:Lcom/pantech/app/music/service/ESoundPoolPlayer;

    invoke-static {v0}, Lcom/pantech/app/music/service/ESoundPoolPlayer;->access$000(Lcom/pantech/app/music/service/ESoundPoolPlayer;)Landroid/media/SoundPool;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 79
    iget-object v0, p0, Lcom/pantech/app/music/service/ESoundPoolPlayer$2;->this$0:Lcom/pantech/app/music/service/ESoundPoolPlayer;

    invoke-static {v0}, Lcom/pantech/app/music/service/ESoundPoolPlayer;->access$000(Lcom/pantech/app/music/service/ESoundPoolPlayer;)Landroid/media/SoundPool;

    move-result-object v0

    iget-object v1, p0, Lcom/pantech/app/music/service/ESoundPoolPlayer$2;->this$0:Lcom/pantech/app/music/service/ESoundPoolPlayer;

    invoke-static {v1}, Lcom/pantech/app/music/service/ESoundPoolPlayer;->access$100(Lcom/pantech/app/music/service/ESoundPoolPlayer;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->stop(I)V

    .line 81
    :cond_17
    return-void
.end method
