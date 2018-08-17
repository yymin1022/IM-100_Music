.class public Lcom/pantech/app/music/library/holder/ListHolderTrackHelper;
.super Ljava/lang/Object;
.source "ListHolderTrackHelper.java"

# interfaces
.implements Lcom/pantech/app/music/library/IListHolderHelper;


# static fields
.field private static final TAG:Ljava/lang/String; = "ListHolderTrackHelper"


# instance fields
.field public albumID:J

.field public audioID:J

.field public mPlayingIcon:Landroid/widget/ImageView;

.field public mTextMain:Landroid/widget/TextView;

.field public mTextSub:Landroid/widget/TextView;

.field private trackName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .registers 3
    .param p1, "itemView"    # Landroid/view/View;

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const v0, 0x7f100102

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/pantech/app/music/library/holder/ListHolderTrackHelper;->mPlayingIcon:Landroid/widget/ImageView;

    .line 31
    const v0, 0x7f1000f7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/pantech/app/music/library/holder/ListHolderTrackHelper;->mTextMain:Landroid/widget/TextView;

    .line 32
    const v0, 0x7f100101

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/pantech/app/music/library/holder/ListHolderTrackHelper;->mTextSub:Landroid/widget/TextView;

    .line 34
    return-void
.end method


# virtual methods
.method public getAlbumID()J
    .registers 3

    .prologue
    .line 73
    iget-wide v0, p0, Lcom/pantech/app/music/library/holder/ListHolderTrackHelper;->albumID:J

    return-wide v0
.end method

.method public getClickBehavior()Lcom/pantech/app/music/library/IListHolderHelper$ClickBehavior;
    .registers 2

    .prologue
    .line 83
    sget-object v0, Lcom/pantech/app/music/library/IListHolderHelper$ClickBehavior;->CLICK_PLAY_TRACKS:Lcom/pantech/app/music/library/IListHolderHelper$ClickBehavior;

    return-object v0
.end method

.method public getDetailListInfo()Lcom/pantech/app/music/library/FragmentInfo;
    .registers 2

    .prologue
    .line 88
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemInfo()Lcom/pantech/app/music/library/IListHolderHelper$ItemInfo;
    .registers 5

    .prologue
    .line 78
    new-instance v0, Lcom/pantech/app/music/library/IListHolderHelper$ItemInfo;

    iget-wide v2, p0, Lcom/pantech/app/music/library/holder/ListHolderTrackHelper;->audioID:J

    iget-object v1, p0, Lcom/pantech/app/music/library/holder/ListHolderTrackHelper;->trackName:Ljava/lang/String;

    invoke-direct {v0, v2, v3, v1}, Lcom/pantech/app/music/library/IListHolderHelper$ItemInfo;-><init>(JLjava/lang/String;)V

    return-object v0
.end method

.method public updateWithInfo(Landroid/content/Context;Ljava/lang/Object;)V
    .registers 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "object"    # Ljava/lang/Object;

    .prologue
    .line 38
    move-object v1, p2

    check-cast v1, Landroid/database/Cursor;

    .line 40
    .local v1, "c":Landroid/database/Cursor;
    :try_start_3
    const-string v5, "audio_id"

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/pantech/app/music/library/holder/ListHolderTrackHelper;->audioID:J
    :try_end_f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_f} :catch_77

    .line 44
    :goto_f
    const-string v5, "album_id"

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/pantech/app/music/library/holder/ListHolderTrackHelper;->albumID:J

    .line 45
    sget-object v5, Lcom/pantech/app/music/library/FragmentInfo$Category;->CATEGORY_TRACK:Lcom/pantech/app/music/library/FragmentInfo$Category;

    invoke-static {v5}, Lcom/pantech/app/music/library/helper/DBProviderHelper;->getTitleColumn(Lcom/pantech/app/music/library/FragmentInfo$Category;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/pantech/app/music/library/holder/ListHolderTrackHelper;->trackName:Ljava/lang/String;

    .line 47
    iget-object v5, p0, Lcom/pantech/app/music/library/holder/ListHolderTrackHelper;->mTextMain:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/pantech/app/music/library/holder/ListHolderTrackHelper;->trackName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    iget-object v5, p0, Lcom/pantech/app/music/library/holder/ListHolderTrackHelper;->mTextSub:Landroid/widget/TextView;

    const-string v6, "artist"

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    iget-object v5, p0, Lcom/pantech/app/music/library/holder/ListHolderTrackHelper;->mPlayingIcon:Landroid/widget/ImageView;

    if-eqz v5, :cond_76

    .line 54
    invoke-static {p1}, Lcom/pantech/app/music/service/MusicCache;->getInstance(Landroid/content/Context;)Lcom/pantech/app/music/service/MusicCache;

    move-result-object v3

    .line 55
    .local v3, "musicCache":Lcom/pantech/app/music/service/MusicCache;
    invoke-virtual {v3}, Lcom/pantech/app/music/service/MusicCache;->getMusicItem()Lcom/pantech/app/music/list/MusicItemInfo;

    move-result-object v4

    .line 56
    .local v4, "musicItemInfo":Lcom/pantech/app/music/list/MusicItemInfo;
    iget-wide v6, p0, Lcom/pantech/app/music/library/holder/ListHolderTrackHelper;->audioID:J

    invoke-virtual {v4}, Lcom/pantech/app/music/list/MusicItemInfo;->getAudioID()J

    move-result-wide v8

    cmp-long v5, v6, v8

    if-nez v5, :cond_8e

    .line 57
    iget-object v5, p0, Lcom/pantech/app/music/library/holder/ListHolderTrackHelper;->mPlayingIcon:Landroid/widget/ImageView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 58
    invoke-virtual {v3}, Lcom/pantech/app/music/service/MusicCache;->isPlaying()Z

    move-result v5

    if-eqz v5, :cond_85

    .line 59
    iget-object v5, p0, Lcom/pantech/app/music/library/holder/ListHolderTrackHelper;->mPlayingIcon:Landroid/widget/ImageView;

    const v6, 0x7f02013e

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 60
    iget-object v5, p0, Lcom/pantech/app/music/library/holder/ListHolderTrackHelper;->mPlayingIcon:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 61
    .local v0, "aniFrame":Landroid/graphics/drawable/AnimationDrawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 69
    .end local v0    # "aniFrame":Landroid/graphics/drawable/AnimationDrawable;
    .end local v3    # "musicCache":Lcom/pantech/app/music/service/MusicCache;
    .end local v4    # "musicItemInfo":Lcom/pantech/app/music/list/MusicItemInfo;
    :cond_76
    :goto_76
    return-void

    .line 41
    :catch_77
    move-exception v2

    .line 42
    .local v2, "ex":Ljava/lang/IllegalArgumentException;
    const-string v5, "_id"

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/pantech/app/music/library/holder/ListHolderTrackHelper;->audioID:J

    goto :goto_f

    .line 63
    .end local v2    # "ex":Ljava/lang/IllegalArgumentException;
    .restart local v3    # "musicCache":Lcom/pantech/app/music/service/MusicCache;
    .restart local v4    # "musicItemInfo":Lcom/pantech/app/music/list/MusicItemInfo;
    :cond_85
    iget-object v5, p0, Lcom/pantech/app/music/library/holder/ListHolderTrackHelper;->mPlayingIcon:Landroid/widget/ImageView;

    const v6, 0x7f02013d

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_76

    .line 66
    :cond_8e
    iget-object v5, p0, Lcom/pantech/app/music/library/holder/ListHolderTrackHelper;->mPlayingIcon:Landroid/widget/ImageView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_76
.end method
