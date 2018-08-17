.class public Lcom/pantech/app/music/service/MusicCache;
.super Ljava/lang/Object;
.source "MusicCache.java"


# static fields
.field private static mInstance:Lcom/pantech/app/music/service/MusicCache;


# instance fields
.field mContext:Landroid/content/Context;

.field mDuration:J

.field mMusicItem:Lcom/pantech/app/music/list/MusicItemInfo;

.field mPlaying:Z

.field mQueueLength:I

.field mQueuePosition:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 16
    const/4 v0, 0x0

    sput-object v0, Lcom/pantech/app/music/service/MusicCache;->mInstance:Lcom/pantech/app/music/service/MusicCache;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/pantech/app/music/service/MusicCache;->mContext:Landroid/content/Context;

    .line 26
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/pantech/app/music/service/MusicCache;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 18
    sget-object v0, Lcom/pantech/app/music/service/MusicCache;->mInstance:Lcom/pantech/app/music/service/MusicCache;

    if-nez v0, :cond_f

    .line 19
    new-instance v0, Lcom/pantech/app/music/service/MusicCache;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/pantech/app/music/service/MusicCache;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/pantech/app/music/service/MusicCache;->mInstance:Lcom/pantech/app/music/service/MusicCache;

    .line 21
    :cond_f
    sget-object v0, Lcom/pantech/app/music/service/MusicCache;->mInstance:Lcom/pantech/app/music/service/MusicCache;

    return-object v0
.end method


# virtual methods
.method public getDuration()J
    .registers 3

    .prologue
    .line 68
    iget-wide v0, p0, Lcom/pantech/app/music/service/MusicCache;->mDuration:J

    return-wide v0
.end method

.method public getMusicItem()Lcom/pantech/app/music/list/MusicItemInfo;
    .registers 2

    .prologue
    .line 33
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicCache;->mMusicItem:Lcom/pantech/app/music/list/MusicItemInfo;

    if-nez v0, :cond_b

    .line 34
    new-instance v0, Lcom/pantech/app/music/list/MusicItemInfo;

    invoke-direct {v0}, Lcom/pantech/app/music/list/MusicItemInfo;-><init>()V

    iput-object v0, p0, Lcom/pantech/app/music/service/MusicCache;->mMusicItem:Lcom/pantech/app/music/list/MusicItemInfo;

    .line 36
    :cond_b
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicCache;->mMusicItem:Lcom/pantech/app/music/list/MusicItemInfo;

    return-object v0
.end method

.method public getQueueLength()I
    .registers 2

    .prologue
    .line 52
    iget v0, p0, Lcom/pantech/app/music/service/MusicCache;->mQueueLength:I

    return v0
.end method

.method public getQueuePosition()I
    .registers 2

    .prologue
    .line 60
    iget v0, p0, Lcom/pantech/app/music/service/MusicCache;->mQueuePosition:I

    return v0
.end method

.method public isPlaying()Z
    .registers 2

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/pantech/app/music/service/MusicCache;->mPlaying:Z

    return v0
.end method

.method public setDuration(J)V
    .registers 4
    .param p1, "duration"    # J

    .prologue
    .line 64
    iput-wide p1, p0, Lcom/pantech/app/music/service/MusicCache;->mDuration:J

    .line 65
    return-void
.end method

.method public setMusicItem(Lcom/pantech/app/music/list/MusicItemInfo;)V
    .registers 3
    .param p1, "item"    # Lcom/pantech/app/music/list/MusicItemInfo;

    .prologue
    .line 29
    invoke-virtual {p1}, Lcom/pantech/app/music/list/MusicItemInfo;->clone()Lcom/pantech/app/music/list/MusicItemInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/music/service/MusicCache;->mMusicItem:Lcom/pantech/app/music/list/MusicItemInfo;

    .line 30
    return-void
.end method

.method public setPlayingState(Z)V
    .registers 2
    .param p1, "playing"    # Z

    .prologue
    .line 40
    iput-boolean p1, p0, Lcom/pantech/app/music/service/MusicCache;->mPlaying:Z

    .line 41
    return-void
.end method

.method public setQueueLength(I)V
    .registers 2
    .param p1, "length"    # I

    .prologue
    .line 48
    iput p1, p0, Lcom/pantech/app/music/service/MusicCache;->mQueueLength:I

    .line 49
    return-void
.end method

.method public setQueuePosition(I)V
    .registers 2
    .param p1, "position"    # I

    .prologue
    .line 56
    iput p1, p0, Lcom/pantech/app/music/service/MusicCache;->mQueuePosition:I

    .line 57
    return-void
.end method
