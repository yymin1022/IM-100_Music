.class public Lcom/pantech/app/music/service/ESoundPlayer;
.super Ljava/lang/Object;
.source "ESoundPlayer.java"


# static fields
.field private static mESound:Landroid/media/MediaPlayer;

.field private static mESoundReleaseThread:Ljava/lang/Thread;

.field private static mESoundStartThread:Ljava/lang/Thread;


# instance fields
.field private mHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 11
    sput-object v0, Lcom/pantech/app/music/service/ESoundPlayer;->mESoundStartThread:Ljava/lang/Thread;

    .line 12
    sput-object v0, Lcom/pantech/app/music/service/ESoundPlayer;->mESoundReleaseThread:Ljava/lang/Thread;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p2, p0, Lcom/pantech/app/music/service/ESoundPlayer;->mHandler:Landroid/os/Handler;

    .line 19
    return-void
.end method

.method static synthetic access$000()Landroid/media/MediaPlayer;
    .registers 1

    .prologue
    .line 10
    sget-object v0, Lcom/pantech/app/music/service/ESoundPlayer;->mESound:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$002(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;
    .registers 1
    .param p0, "x0"    # Landroid/media/MediaPlayer;

    .prologue
    .line 10
    sput-object p0, Lcom/pantech/app/music/service/ESoundPlayer;->mESound:Landroid/media/MediaPlayer;

    return-object p0
.end method

.method static synthetic access$100(Lcom/pantech/app/music/service/ESoundPlayer;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/service/ESoundPlayer;

    .prologue
    .line 10
    iget-object v0, p0, Lcom/pantech/app/music/service/ESoundPlayer;->mHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public eSoundDestory()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 43
    sget-object v0, Lcom/pantech/app/music/service/ESoundPlayer;->mESound:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_c

    .line 44
    sget-object v0, Lcom/pantech/app/music/service/ESoundPlayer;->mESound:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 45
    sput-object v1, Lcom/pantech/app/music/service/ESoundPlayer;->mESound:Landroid/media/MediaPlayer;

    .line 47
    :cond_c
    sget-object v0, Lcom/pantech/app/music/service/ESoundPlayer;->mESoundStartThread:Ljava/lang/Thread;

    if-eqz v0, :cond_15

    .line 48
    sget-object v0, Lcom/pantech/app/music/service/ESoundPlayer;->mESoundStartThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 50
    :cond_15
    sput-object v1, Lcom/pantech/app/music/service/ESoundPlayer;->mESoundStartThread:Ljava/lang/Thread;

    .line 51
    sget-object v0, Lcom/pantech/app/music/service/ESoundPlayer;->mESoundReleaseThread:Ljava/lang/Thread;

    if-eqz v0, :cond_20

    .line 52
    sget-object v0, Lcom/pantech/app/music/service/ESoundPlayer;->mESoundReleaseThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 54
    :cond_20
    sput-object v1, Lcom/pantech/app/music/service/ESoundPlayer;->mESoundReleaseThread:Ljava/lang/Thread;

    .line 55
    return-void
.end method

.method public eSoundStart(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 22
    sget-object v0, Lcom/pantech/app/music/service/ESoundPlayer;->mESoundStartThread:Ljava/lang/Thread;

    if-nez v0, :cond_16

    .line 23
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/pantech/app/music/service/ESoundPlayer$1;

    invoke-direct {v1, p0, p1}, Lcom/pantech/app/music/service/ESoundPlayer$1;-><init>(Lcom/pantech/app/music/service/ESoundPlayer;Landroid/content/Context;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    sput-object v0, Lcom/pantech/app/music/service/ESoundPlayer;->mESoundStartThread:Ljava/lang/Thread;

    .line 36
    sget-object v0, Lcom/pantech/app/music/service/ESoundPlayer;->mESoundStartThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 40
    :goto_15
    return-void

    .line 38
    :cond_16
    sget-object v0, Lcom/pantech/app/music/service/ESoundPlayer;->mESoundStartThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->run()V

    goto :goto_15
.end method

.method public eSoundStop()V
    .registers 3

    .prologue
    .line 58
    sget-object v0, Lcom/pantech/app/music/service/ESoundPlayer;->mESoundReleaseThread:Ljava/lang/Thread;

    if-nez v0, :cond_16

    .line 59
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/pantech/app/music/service/ESoundPlayer$2;

    invoke-direct {v1, p0}, Lcom/pantech/app/music/service/ESoundPlayer$2;-><init>(Lcom/pantech/app/music/service/ESoundPlayer;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    sput-object v0, Lcom/pantech/app/music/service/ESoundPlayer;->mESoundReleaseThread:Ljava/lang/Thread;

    .line 70
    sget-object v0, Lcom/pantech/app/music/service/ESoundPlayer;->mESoundReleaseThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 74
    :goto_15
    return-void

    .line 72
    :cond_16
    sget-object v0, Lcom/pantech/app/music/service/ESoundPlayer;->mESoundReleaseThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->run()V

    goto :goto_15
.end method
