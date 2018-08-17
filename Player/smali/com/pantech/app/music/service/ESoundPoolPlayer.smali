.class public Lcom/pantech/app/music/service/ESoundPoolPlayer;
.super Ljava/lang/Object;
.source "ESoundPoolPlayer.java"


# instance fields
.field private mESoundReleaseThread:Ljava/lang/Thread;

.field private mESoundStartThread:Ljava/lang/Thread;

.field private mHandler:Landroid/os/Handler;

.field private mSoundID:I

.field private soundPool:Landroid/media/SoundPool;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    const/4 v3, 0x1

    const/4 v0, 0x0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object v0, p0, Lcom/pantech/app/music/service/ESoundPoolPlayer;->mESoundStartThread:Ljava/lang/Thread;

    .line 14
    iput-object v0, p0, Lcom/pantech/app/music/service/ESoundPoolPlayer;->mESoundReleaseThread:Ljava/lang/Thread;

    .line 15
    iput-object v0, p0, Lcom/pantech/app/music/service/ESoundPoolPlayer;->soundPool:Landroid/media/SoundPool;

    .line 21
    iput-object p2, p0, Lcom/pantech/app/music/service/ESoundPoolPlayer;->mHandler:Landroid/os/Handler;

    .line 22
    iget-object v0, p0, Lcom/pantech/app/music/service/ESoundPoolPlayer;->soundPool:Landroid/media/SoundPool;

    if-nez v0, :cond_24

    .line 23
    new-instance v0, Landroid/media/SoundPool;

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-direct {v0, v3, v1, v2}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v0, p0, Lcom/pantech/app/music/service/ESoundPoolPlayer;->soundPool:Landroid/media/SoundPool;

    .line 24
    iget-object v0, p0, Lcom/pantech/app/music/service/ESoundPoolPlayer;->soundPool:Landroid/media/SoundPool;

    const/high16 v1, 0x7f070000

    invoke-virtual {v0, p1, v1, v3}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/pantech/app/music/service/ESoundPoolPlayer;->mSoundID:I

    .line 26
    :cond_24
    return-void
.end method

.method static synthetic access$000(Lcom/pantech/app/music/service/ESoundPoolPlayer;)Landroid/media/SoundPool;
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/service/ESoundPoolPlayer;

    .prologue
    .line 12
    iget-object v0, p0, Lcom/pantech/app/music/service/ESoundPoolPlayer;->soundPool:Landroid/media/SoundPool;

    return-object v0
.end method

.method static synthetic access$100(Lcom/pantech/app/music/service/ESoundPoolPlayer;)I
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/service/ESoundPoolPlayer;

    .prologue
    .line 12
    iget v0, p0, Lcom/pantech/app/music/service/ESoundPoolPlayer;->mSoundID:I

    return v0
.end method

.method static synthetic access$200(Lcom/pantech/app/music/service/ESoundPoolPlayer;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/service/ESoundPoolPlayer;

    .prologue
    .line 12
    iget-object v0, p0, Lcom/pantech/app/music/service/ESoundPoolPlayer;->mHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public eSoundDestory()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 56
    iget-object v0, p0, Lcom/pantech/app/music/service/ESoundPoolPlayer;->soundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_13

    .line 57
    iget-object v0, p0, Lcom/pantech/app/music/service/ESoundPoolPlayer;->soundPool:Landroid/media/SoundPool;

    iget v1, p0, Lcom/pantech/app/music/service/ESoundPoolPlayer;->mSoundID:I

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->unload(I)Z

    .line 58
    iget-object v0, p0, Lcom/pantech/app/music/service/ESoundPoolPlayer;->soundPool:Landroid/media/SoundPool;

    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    .line 59
    iput-object v2, p0, Lcom/pantech/app/music/service/ESoundPoolPlayer;->soundPool:Landroid/media/SoundPool;

    .line 61
    :cond_13
    iget-object v0, p0, Lcom/pantech/app/music/service/ESoundPoolPlayer;->mESoundStartThread:Ljava/lang/Thread;

    if-eqz v0, :cond_1c

    .line 62
    iget-object v0, p0, Lcom/pantech/app/music/service/ESoundPoolPlayer;->mESoundStartThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 64
    :cond_1c
    iput-object v2, p0, Lcom/pantech/app/music/service/ESoundPoolPlayer;->mESoundStartThread:Ljava/lang/Thread;

    .line 65
    iget-object v0, p0, Lcom/pantech/app/music/service/ESoundPoolPlayer;->mESoundReleaseThread:Ljava/lang/Thread;

    if-eqz v0, :cond_27

    .line 66
    iget-object v0, p0, Lcom/pantech/app/music/service/ESoundPoolPlayer;->mESoundReleaseThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 68
    :cond_27
    iput-object v2, p0, Lcom/pantech/app/music/service/ESoundPoolPlayer;->mESoundReleaseThread:Ljava/lang/Thread;

    .line 69
    return-void
.end method

.method public eSoundStart(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mESoundStartThread:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/pantech/app/music/service/ESoundPoolPlayer;->mESoundStartThread:Ljava/lang/Thread;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/pantech/app/music/utils/MLog;->e(Ljava/lang/String;)V

    .line 30
    iget-object v0, p0, Lcom/pantech/app/music/service/ESoundPoolPlayer;->mESoundStartThread:Ljava/lang/Thread;

    if-nez v0, :cond_2e

    .line 31
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/pantech/app/music/service/ESoundPoolPlayer$1;

    invoke-direct {v1, p0}, Lcom/pantech/app/music/service/ESoundPoolPlayer$1;-><init>(Lcom/pantech/app/music/service/ESoundPoolPlayer;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/pantech/app/music/service/ESoundPoolPlayer;->mESoundStartThread:Ljava/lang/Thread;

    .line 49
    iget-object v0, p0, Lcom/pantech/app/music/service/ESoundPoolPlayer;->mESoundStartThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 53
    :goto_2d
    return-void

    .line 51
    :cond_2e
    iget-object v0, p0, Lcom/pantech/app/music/service/ESoundPoolPlayer;->mESoundStartThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->run()V

    goto :goto_2d
.end method

.method public eSoundStop()V
    .registers 3

    .prologue
    .line 72
    iget-object v0, p0, Lcom/pantech/app/music/service/ESoundPoolPlayer;->mESoundReleaseThread:Ljava/lang/Thread;

    if-nez v0, :cond_16

    .line 73
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/pantech/app/music/service/ESoundPoolPlayer$2;

    invoke-direct {v1, p0}, Lcom/pantech/app/music/service/ESoundPoolPlayer$2;-><init>(Lcom/pantech/app/music/service/ESoundPoolPlayer;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/pantech/app/music/service/ESoundPoolPlayer;->mESoundReleaseThread:Ljava/lang/Thread;

    .line 83
    iget-object v0, p0, Lcom/pantech/app/music/service/ESoundPoolPlayer;->mESoundReleaseThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 87
    :goto_15
    return-void

    .line 85
    :cond_16
    iget-object v0, p0, Lcom/pantech/app/music/service/ESoundPoolPlayer;->mESoundReleaseThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->run()V

    goto :goto_15
.end method
