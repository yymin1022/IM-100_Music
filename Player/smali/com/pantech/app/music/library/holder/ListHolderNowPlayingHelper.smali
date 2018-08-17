.class public Lcom/pantech/app/music/library/holder/ListHolderNowPlayingHelper;
.super Ljava/lang/Object;
.source "ListHolderNowPlayingHelper.java"

# interfaces
.implements Lcom/pantech/app/music/library/IListHolderHelper;


# instance fields
.field private mMusicItem:Lcom/pantech/app/music/list/MusicItemInfo;

.field private mPlayingIcon:Landroid/widget/ImageView;

.field private mTextMain:Landroid/widget/TextView;

.field private mTextSub:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .registers 3
    .param p1, "itemView"    # Landroid/view/View;

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const v0, 0x7f100102

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/pantech/app/music/library/holder/ListHolderNowPlayingHelper;->mPlayingIcon:Landroid/widget/ImageView;

    .line 24
    const v0, 0x7f1000f7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/pantech/app/music/library/holder/ListHolderNowPlayingHelper;->mTextMain:Landroid/widget/TextView;

    .line 25
    const v0, 0x7f100101

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/pantech/app/music/library/holder/ListHolderNowPlayingHelper;->mTextSub:Landroid/widget/TextView;

    .line 26
    return-void
.end method


# virtual methods
.method public getAlbumID()J
    .registers 3

    .prologue
    .line 52
    iget-object v0, p0, Lcom/pantech/app/music/library/holder/ListHolderNowPlayingHelper;->mMusicItem:Lcom/pantech/app/music/list/MusicItemInfo;

    invoke-virtual {v0}, Lcom/pantech/app/music/list/MusicItemInfo;->getAlbumID()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getClickBehavior()Lcom/pantech/app/music/library/IListHolderHelper$ClickBehavior;
    .registers 2

    .prologue
    .line 62
    sget-object v0, Lcom/pantech/app/music/library/IListHolderHelper$ClickBehavior;->CLICK_PLAY_CUR_ITEM:Lcom/pantech/app/music/library/IListHolderHelper$ClickBehavior;

    return-object v0
.end method

.method public getDetailListInfo()Lcom/pantech/app/music/library/FragmentInfo;
    .registers 2

    .prologue
    .line 67
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemInfo()Lcom/pantech/app/music/library/IListHolderHelper$ItemInfo;
    .registers 5

    .prologue
    .line 57
    new-instance v0, Lcom/pantech/app/music/library/IListHolderHelper$ItemInfo;

    iget-object v1, p0, Lcom/pantech/app/music/library/holder/ListHolderNowPlayingHelper;->mMusicItem:Lcom/pantech/app/music/list/MusicItemInfo;

    invoke-virtual {v1}, Lcom/pantech/app/music/list/MusicItemInfo;->getAudioID()J

    move-result-wide v2

    iget-object v1, p0, Lcom/pantech/app/music/library/holder/ListHolderNowPlayingHelper;->mMusicItem:Lcom/pantech/app/music/list/MusicItemInfo;

    invoke-virtual {v1}, Lcom/pantech/app/music/list/MusicItemInfo;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v3, v1}, Lcom/pantech/app/music/library/IListHolderHelper$ItemInfo;-><init>(JLjava/lang/String;)V

    return-object v0
.end method

.method public updateWithInfo(Landroid/content/Context;Ljava/lang/Object;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "object"    # Ljava/lang/Object;

    .prologue
    .line 30
    check-cast p2, Lcom/pantech/app/music/list/MusicItemInfo;

    .end local p2    # "object":Ljava/lang/Object;
    iput-object p2, p0, Lcom/pantech/app/music/library/holder/ListHolderNowPlayingHelper;->mMusicItem:Lcom/pantech/app/music/list/MusicItemInfo;

    .line 31
    iget-object v1, p0, Lcom/pantech/app/music/library/holder/ListHolderNowPlayingHelper;->mTextMain:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/pantech/app/music/library/holder/ListHolderNowPlayingHelper;->mMusicItem:Lcom/pantech/app/music/list/MusicItemInfo;

    invoke-virtual {v2}, Lcom/pantech/app/music/list/MusicItemInfo;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 32
    iget-object v1, p0, Lcom/pantech/app/music/library/holder/ListHolderNowPlayingHelper;->mTextSub:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/pantech/app/music/library/holder/ListHolderNowPlayingHelper;->mMusicItem:Lcom/pantech/app/music/list/MusicItemInfo;

    invoke-virtual {v2}, Lcom/pantech/app/music/list/MusicItemInfo;->getArtist()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 34
    iget-object v1, p0, Lcom/pantech/app/music/library/holder/ListHolderNowPlayingHelper;->mPlayingIcon:Landroid/widget/ImageView;

    if-eqz v1, :cond_4b

    .line 35
    iget-object v1, p0, Lcom/pantech/app/music/library/holder/ListHolderNowPlayingHelper;->mMusicItem:Lcom/pantech/app/music/list/MusicItemInfo;

    invoke-virtual {v1}, Lcom/pantech/app/music/list/MusicItemInfo;->getAudioID()J

    move-result-wide v2

    invoke-static {}, Lcom/pantech/app/music/common/MusicUtils;->getPlayingID()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-nez v1, :cond_55

    .line 36
    iget-object v1, p0, Lcom/pantech/app/music/library/holder/ListHolderNowPlayingHelper;->mPlayingIcon:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 37
    invoke-static {}, Lcom/pantech/app/music/common/MusicUtils;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_4c

    .line 38
    iget-object v1, p0, Lcom/pantech/app/music/library/holder/ListHolderNowPlayingHelper;->mPlayingIcon:Landroid/widget/ImageView;

    const v2, 0x7f02013e

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 39
    iget-object v1, p0, Lcom/pantech/app/music/library/holder/ListHolderNowPlayingHelper;->mPlayingIcon:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 40
    .local v0, "aniFrame":Landroid/graphics/drawable/AnimationDrawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 48
    .end local v0    # "aniFrame":Landroid/graphics/drawable/AnimationDrawable;
    :cond_4b
    :goto_4b
    return-void

    .line 42
    :cond_4c
    iget-object v1, p0, Lcom/pantech/app/music/library/holder/ListHolderNowPlayingHelper;->mPlayingIcon:Landroid/widget/ImageView;

    const v2, 0x7f02013d

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_4b

    .line 45
    :cond_55
    iget-object v1, p0, Lcom/pantech/app/music/library/holder/ListHolderNowPlayingHelper;->mPlayingIcon:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_4b
.end method
