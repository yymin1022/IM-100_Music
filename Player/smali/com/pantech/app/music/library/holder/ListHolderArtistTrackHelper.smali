.class public Lcom/pantech/app/music/library/holder/ListHolderArtistTrackHelper;
.super Ljava/lang/Object;
.source "ListHolderArtistTrackHelper.java"

# interfaces
.implements Lcom/pantech/app/music/library/IListHolderHelper;


# static fields
.field private static final TAG:Ljava/lang/String; = "ListHolderArtistTrackHelper"


# instance fields
.field public albumID:J

.field public itemID:J

.field private mBtnDivider:Landroid/widget/Button;

.field public mPlayingIcon:Landroid/widget/ImageView;

.field private mTextDivider:Landroid/widget/TextView;

.field public mTextMain:Landroid/widget/TextView;

.field public mTextSub:Landroid/widget/TextView;

.field private trackName:Ljava/lang/String;

.field private viewType:Lcom/pantech/app/music/library/IListHolderHelper$ViewType;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .registers 3
    .param p1, "itemView"    # Landroid/view/View;

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const v0, 0x7f100102

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/pantech/app/music/library/holder/ListHolderArtistTrackHelper;->mPlayingIcon:Landroid/widget/ImageView;

    .line 34
    const v0, 0x7f1000f7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/pantech/app/music/library/holder/ListHolderArtistTrackHelper;->mTextMain:Landroid/widget/TextView;

    .line 35
    const v0, 0x7f100101

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/pantech/app/music/library/holder/ListHolderArtistTrackHelper;->mTextSub:Landroid/widget/TextView;

    .line 37
    const v0, 0x7f1000fc

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/pantech/app/music/library/holder/ListHolderArtistTrackHelper;->mTextDivider:Landroid/widget/TextView;

    .line 38
    const v0, 0x7f1000fd

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/pantech/app/music/library/holder/ListHolderArtistTrackHelper;->mBtnDivider:Landroid/widget/Button;

    .line 39
    return-void
.end method


# virtual methods
.method public getAlbumID()J
    .registers 3

    .prologue
    .line 78
    iget-wide v0, p0, Lcom/pantech/app/music/library/holder/ListHolderArtistTrackHelper;->albumID:J

    return-wide v0
.end method

.method public getClickBehavior()Lcom/pantech/app/music/library/IListHolderHelper$ClickBehavior;
    .registers 3

    .prologue
    .line 88
    iget-object v0, p0, Lcom/pantech/app/music/library/holder/ListHolderArtistTrackHelper;->viewType:Lcom/pantech/app/music/library/IListHolderHelper$ViewType;

    sget-object v1, Lcom/pantech/app/music/library/IListHolderHelper$ViewType;->VIEW_TYPE_NORMAL:Lcom/pantech/app/music/library/IListHolderHelper$ViewType;

    if-ne v0, v1, :cond_9

    .line 89
    sget-object v0, Lcom/pantech/app/music/library/IListHolderHelper$ClickBehavior;->CLICK_PLAY_ONLY_TRACKS:Lcom/pantech/app/music/library/IListHolderHelper$ClickBehavior;

    .line 93
    :goto_8
    return-object v0

    .line 90
    :cond_9
    iget-object v0, p0, Lcom/pantech/app/music/library/holder/ListHolderArtistTrackHelper;->viewType:Lcom/pantech/app/music/library/IListHolderHelper$ViewType;

    sget-object v1, Lcom/pantech/app/music/library/IListHolderHelper$ViewType;->VIEW_TYPE_DIVIDER_BUTTON:Lcom/pantech/app/music/library/IListHolderHelper$ViewType;

    if-ne v0, v1, :cond_12

    .line 91
    sget-object v0, Lcom/pantech/app/music/library/IListHolderHelper$ClickBehavior;->CLICK_PLAY_ALBUM_TRACK:Lcom/pantech/app/music/library/IListHolderHelper$ClickBehavior;

    goto :goto_8

    .line 93
    :cond_12
    sget-object v0, Lcom/pantech/app/music/library/IListHolderHelper$ClickBehavior;->CLICK_D0_NOTHING:Lcom/pantech/app/music/library/IListHolderHelper$ClickBehavior;

    goto :goto_8
.end method

.method public getDetailListInfo()Lcom/pantech/app/music/library/FragmentInfo;
    .registers 2

    .prologue
    .line 98
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemInfo()Lcom/pantech/app/music/library/IListHolderHelper$ItemInfo;
    .registers 5

    .prologue
    .line 83
    new-instance v0, Lcom/pantech/app/music/library/IListHolderHelper$ItemInfo;

    iget-wide v2, p0, Lcom/pantech/app/music/library/holder/ListHolderArtistTrackHelper;->itemID:J

    iget-object v1, p0, Lcom/pantech/app/music/library/holder/ListHolderArtistTrackHelper;->trackName:Ljava/lang/String;

    invoke-direct {v0, v2, v3, v1}, Lcom/pantech/app/music/library/IListHolderHelper$ItemInfo;-><init>(JLjava/lang/String;)V

    return-object v0
.end method

.method public updateWithInfo(Landroid/content/Context;Ljava/lang/Object;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "object"    # Ljava/lang/Object;

    .prologue
    .line 43
    move-object v1, p2

    check-cast v1, Landroid/database/Cursor;

    .line 44
    .local v1, "c":Landroid/database/Cursor;
    const-string v2, "viewType"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Lcom/pantech/app/music/library/IListHolderHelper$ViewType;->fromOrdinal(I)Lcom/pantech/app/music/library/IListHolderHelper$ViewType;

    move-result-object v2

    iput-object v2, p0, Lcom/pantech/app/music/library/holder/ListHolderArtistTrackHelper;->viewType:Lcom/pantech/app/music/library/IListHolderHelper$ViewType;

    .line 45
    iget-object v2, p0, Lcom/pantech/app/music/library/holder/ListHolderArtistTrackHelper;->viewType:Lcom/pantech/app/music/library/IListHolderHelper$ViewType;

    sget-object v3, Lcom/pantech/app/music/library/IListHolderHelper$ViewType;->VIEW_TYPE_NORMAL:Lcom/pantech/app/music/library/IListHolderHelper$ViewType;

    if-ne v2, v3, :cond_96

    .line 46
    const-string v2, "itemID"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/pantech/app/music/library/holder/ListHolderArtistTrackHelper;->itemID:J

    .line 47
    const-string v2, "albumID"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/pantech/app/music/library/holder/ListHolderArtistTrackHelper;->albumID:J

    .line 48
    sget-object v2, Lcom/pantech/app/music/library/FragmentInfo$Category;->CATEGORY_ARTIST_TRACK:Lcom/pantech/app/music/library/FragmentInfo$Category;

    invoke-static {v2}, Lcom/pantech/app/music/library/helper/DBProviderHelper;->getTitleColumn(Lcom/pantech/app/music/library/FragmentInfo$Category;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/pantech/app/music/library/holder/ListHolderArtistTrackHelper;->trackName:Ljava/lang/String;

    .line 50
    iget-object v2, p0, Lcom/pantech/app/music/library/holder/ListHolderArtistTrackHelper;->mTextMain:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/pantech/app/music/library/holder/ListHolderArtistTrackHelper;->trackName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    iget-object v2, p0, Lcom/pantech/app/music/library/holder/ListHolderArtistTrackHelper;->mTextSub:Landroid/widget/TextView;

    const-string v3, "detail"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    iget-object v2, p0, Lcom/pantech/app/music/library/holder/ListHolderArtistTrackHelper;->mPlayingIcon:Landroid/widget/ImageView;

    if-eqz v2, :cond_84

    .line 54
    iget-wide v2, p0, Lcom/pantech/app/music/library/holder/ListHolderArtistTrackHelper;->itemID:J

    invoke-static {}, Lcom/pantech/app/music/common/MusicUtils;->getPlayingID()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_8e

    .line 55
    iget-object v2, p0, Lcom/pantech/app/music/library/holder/ListHolderArtistTrackHelper;->mPlayingIcon:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 56
    invoke-static {}, Lcom/pantech/app/music/common/MusicUtils;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_85

    .line 57
    iget-object v2, p0, Lcom/pantech/app/music/library/holder/ListHolderArtistTrackHelper;->mPlayingIcon:Landroid/widget/ImageView;

    const v3, 0x7f02013e

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 58
    iget-object v2, p0, Lcom/pantech/app/music/library/holder/ListHolderArtistTrackHelper;->mPlayingIcon:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 59
    .local v0, "aniFrame":Landroid/graphics/drawable/AnimationDrawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 74
    .end local v0    # "aniFrame":Landroid/graphics/drawable/AnimationDrawable;
    :cond_84
    :goto_84
    return-void

    .line 61
    :cond_85
    iget-object v2, p0, Lcom/pantech/app/music/library/holder/ListHolderArtistTrackHelper;->mPlayingIcon:Landroid/widget/ImageView;

    const v3, 0x7f02013d

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_84

    .line 64
    :cond_8e
    iget-object v2, p0, Lcom/pantech/app/music/library/holder/ListHolderArtistTrackHelper;->mPlayingIcon:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_84

    .line 69
    :cond_96
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/pantech/app/music/library/holder/ListHolderArtistTrackHelper;->albumID:J

    .line 70
    const-string v2, "itemID"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/pantech/app/music/library/holder/ListHolderArtistTrackHelper;->itemID:J

    .line 71
    iget-object v2, p0, Lcom/pantech/app/music/library/holder/ListHolderArtistTrackHelper;->mTextDivider:Landroid/widget/TextView;

    const-string v3, "title"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    iget-object v2, p0, Lcom/pantech/app/music/library/holder/ListHolderArtistTrackHelper;->mBtnDivider:Landroid/widget/Button;

    const v3, 0x7f080195

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(I)V

    goto :goto_84
.end method
