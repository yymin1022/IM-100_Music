.class public Lcom/pantech/app/music/library/helper/PlaylistHelper$ItemInfo;
.super Ljava/lang/Object;
.source "PlaylistHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/music/library/helper/PlaylistHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ItemInfo"
.end annotation


# instance fields
.field mAudioID:J

.field mPlayOrder:I


# direct methods
.method public constructor <init>(Landroid/database/Cursor;)V
    .registers 4
    .param p1, "c"    # Landroid/database/Cursor;

    .prologue
    .line 444
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 445
    const-string v0, "audio_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/pantech/app/music/library/helper/PlaylistHelper$ItemInfo;->mAudioID:J

    .line 446
    const-string v0, "play_order"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/pantech/app/music/library/helper/PlaylistHelper$ItemInfo;->mPlayOrder:I

    .line 447
    return-void
.end method
