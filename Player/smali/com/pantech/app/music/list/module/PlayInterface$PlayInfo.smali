.class public Lcom/pantech/app/music/list/module/PlayInterface$PlayInfo;
.super Ljava/lang/Object;
.source "PlayInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/music/list/module/PlayInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PlayInfo"
.end annotation


# instance fields
.field public final mList:[Lcom/pantech/app/music/list/MusicItemInfo;

.field public mOdfNotAvailable:Z

.field public final mParam:Lcom/pantech/app/music/list/module/PlayInterface$MakePlayInfoParam;

.field public mStartPosition:I


# direct methods
.method public constructor <init>([Lcom/pantech/app/music/list/MusicItemInfo;Lcom/pantech/app/music/list/module/PlayInterface$MakePlayInfoParam;)V
    .registers 9
    .param p1, "list"    # [Lcom/pantech/app/music/list/MusicItemInfo;
    .param p2, "param"    # Lcom/pantech/app/music/list/module/PlayInterface$MakePlayInfoParam;

    .prologue
    const/4 v1, 0x0

    .line 257
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 249
    iput v1, p0, Lcom/pantech/app/music/list/module/PlayInterface$PlayInfo;->mStartPosition:I

    .line 251
    iput-boolean v1, p0, Lcom/pantech/app/music/list/module/PlayInterface$PlayInfo;->mOdfNotAvailable:Z

    .line 258
    iput-object p1, p0, Lcom/pantech/app/music/list/module/PlayInterface$PlayInfo;->mList:[Lcom/pantech/app/music/list/MusicItemInfo;

    .line 259
    iput-object p2, p0, Lcom/pantech/app/music/list/module/PlayInterface$PlayInfo;->mParam:Lcom/pantech/app/music/list/module/PlayInterface$MakePlayInfoParam;

    .line 265
    if-eqz p1, :cond_46

    array-length v1, p1

    if-eqz v1, :cond_46

    .line 267
    iget v1, p2, Lcom/pantech/app/music/list/module/PlayInterface$MakePlayInfoParam;->mPosition:I

    if-eqz v1, :cond_25

    .line 269
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_16
    array-length v1, p1

    if-ge v0, v1, :cond_25

    .line 271
    aget-object v1, p1, v0

    iget-wide v2, v1, Lcom/pantech/app/music/list/MusicItemInfo;->lAudioID:J

    iget-wide v4, p2, Lcom/pantech/app/music/list/module/PlayInterface$MakePlayInfoParam;->mStartMediaID:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_47

    .line 273
    iput v0, p0, Lcom/pantech/app/music/list/module/PlayInterface$PlayInfo;->mStartPosition:I

    .line 279
    .end local v0    # "i":I
    :cond_25
    invoke-static {}, Lcom/pantech/app/music/common/ModelInfo;->isLGUPlus()Z

    move-result v1

    if-eqz v1, :cond_46

    .line 281
    iget v1, p0, Lcom/pantech/app/music/list/module/PlayInterface$PlayInfo;->mStartPosition:I

    aget-object v1, p1, v1

    iget-object v1, v1, Lcom/pantech/app/music/list/MusicItemInfo;->szData:Ljava/lang/String;

    invoke-static {v1}, Lcom/pantech/app/music/list/utility/MusicLibraryUtils;->IsDrmContents(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_46

    iget v1, p0, Lcom/pantech/app/music/list/module/PlayInterface$PlayInfo;->mStartPosition:I

    aget-object v1, p1, v1

    iget-object v1, v1, Lcom/pantech/app/music/list/MusicItemInfo;->szData:Ljava/lang/String;

    invoke-static {v1}, Lcom/pantech/app/music/list/utility/MusicLibraryUtils;->IsDrmAvailable(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_46

    .line 283
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/pantech/app/music/list/module/PlayInterface$PlayInfo;->mOdfNotAvailable:Z

    .line 287
    :cond_46
    return-void

    .line 269
    .restart local v0    # "i":I
    :cond_47
    add-int/lit8 v0, v0, 0x1

    goto :goto_16
.end method
