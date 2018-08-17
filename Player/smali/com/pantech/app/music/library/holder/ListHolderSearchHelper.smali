.class public Lcom/pantech/app/music/library/holder/ListHolderSearchHelper;
.super Ljava/lang/Object;
.source "ListHolderSearchHelper.java"

# interfaces
.implements Lcom/pantech/app/music/library/IListHolderHelper;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/app/music/library/holder/ListHolderSearchHelper$1;
    }
.end annotation


# instance fields
.field private albumID:J

.field private itemID:J

.field itemType:Lcom/pantech/app/music/library/FragmentInfo$Category;

.field public mPlayingIcon:Landroid/widget/ImageView;

.field public mTextMain:Landroid/widget/TextView;

.field public mTextSub:Landroid/widget/TextView;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .registers 3
    .param p1, "itemView"    # Landroid/view/View;

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const v0, 0x7f100102

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/pantech/app/music/library/holder/ListHolderSearchHelper;->mPlayingIcon:Landroid/widget/ImageView;

    .line 31
    const v0, 0x7f1000f7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/pantech/app/music/library/holder/ListHolderSearchHelper;->mTextMain:Landroid/widget/TextView;

    .line 32
    const v0, 0x7f100101

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/pantech/app/music/library/holder/ListHolderSearchHelper;->mTextSub:Landroid/widget/TextView;

    .line 33
    return-void
.end method


# virtual methods
.method public getAlbumID()J
    .registers 3

    .prologue
    .line 81
    iget-wide v0, p0, Lcom/pantech/app/music/library/holder/ListHolderSearchHelper;->albumID:J

    return-wide v0
.end method

.method public getClickBehavior()Lcom/pantech/app/music/library/IListHolderHelper$ClickBehavior;
    .registers 3

    .prologue
    .line 91
    sget-object v0, Lcom/pantech/app/music/library/holder/ListHolderSearchHelper$1;->$SwitchMap$com$pantech$app$music$library$FragmentInfo$Category:[I

    iget-object v1, p0, Lcom/pantech/app/music/library/holder/ListHolderSearchHelper;->itemType:Lcom/pantech/app/music/library/FragmentInfo$Category;

    invoke-virtual {v1}, Lcom/pantech/app/music/library/FragmentInfo$Category;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_16

    .line 98
    sget-object v0, Lcom/pantech/app/music/library/IListHolderHelper$ClickBehavior;->CLICK_D0_NOTHING:Lcom/pantech/app/music/library/IListHolderHelper$ClickBehavior;

    :goto_f
    return-object v0

    .line 94
    :pswitch_10
    sget-object v0, Lcom/pantech/app/music/library/IListHolderHelper$ClickBehavior;->CLICK_MOVE_DETAIL_WITH_IMAGE:Lcom/pantech/app/music/library/IListHolderHelper$ClickBehavior;

    goto :goto_f

    .line 96
    :pswitch_13
    sget-object v0, Lcom/pantech/app/music/library/IListHolderHelper$ClickBehavior;->CLICK_PLAY_ONLY_TRACKS:Lcom/pantech/app/music/library/IListHolderHelper$ClickBehavior;

    goto :goto_f

    .line 91
    :pswitch_data_16
    .packed-switch 0x1
        :pswitch_10
        :pswitch_13
        :pswitch_10
    .end packed-switch
.end method

.method public getDetailListInfo()Lcom/pantech/app/music/library/FragmentInfo;
    .registers 9

    .prologue
    .line 103
    sget-object v0, Lcom/pantech/app/music/library/holder/ListHolderSearchHelper$1;->$SwitchMap$com$pantech$app$music$library$FragmentInfo$Category:[I

    iget-object v1, p0, Lcom/pantech/app/music/library/holder/ListHolderSearchHelper;->itemType:Lcom/pantech/app/music/library/FragmentInfo$Category;

    invoke-virtual {v1}, Lcom/pantech/app/music/library/FragmentInfo$Category;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_2c

    .line 109
    :pswitch_d
    const/4 v1, 0x0

    :goto_e
    return-object v1

    .line 105
    :pswitch_f
    new-instance v1, Lcom/pantech/app/music/library/FragmentInfo;

    sget-object v2, Lcom/pantech/app/music/library/FragmentInfo$Category;->CATEGORY_ARTIST_TRACK:Lcom/pantech/app/music/library/FragmentInfo$Category;

    iget-object v3, p0, Lcom/pantech/app/music/library/holder/ListHolderSearchHelper;->title:Ljava/lang/String;

    iget-wide v4, p0, Lcom/pantech/app/music/library/holder/ListHolderSearchHelper;->albumID:J

    iget-wide v6, p0, Lcom/pantech/app/music/library/holder/ListHolderSearchHelper;->itemID:J

    invoke-direct/range {v1 .. v7}, Lcom/pantech/app/music/library/FragmentInfo;-><init>(Lcom/pantech/app/music/library/FragmentInfo$Category;Ljava/lang/String;JJ)V

    goto :goto_e

    .line 107
    :pswitch_1d
    new-instance v1, Lcom/pantech/app/music/library/FragmentInfo;

    sget-object v2, Lcom/pantech/app/music/library/FragmentInfo$Category;->CATEGORY_ALBUM_TRACK:Lcom/pantech/app/music/library/FragmentInfo$Category;

    iget-object v3, p0, Lcom/pantech/app/music/library/holder/ListHolderSearchHelper;->title:Ljava/lang/String;

    iget-wide v4, p0, Lcom/pantech/app/music/library/holder/ListHolderSearchHelper;->albumID:J

    iget-wide v6, p0, Lcom/pantech/app/music/library/holder/ListHolderSearchHelper;->itemID:J

    invoke-direct/range {v1 .. v7}, Lcom/pantech/app/music/library/FragmentInfo;-><init>(Lcom/pantech/app/music/library/FragmentInfo$Category;Ljava/lang/String;JJ)V

    goto :goto_e

    .line 103
    nop

    :pswitch_data_2c
    .packed-switch 0x1
        :pswitch_f
        :pswitch_d
        :pswitch_1d
    .end packed-switch
.end method

.method public getItemInfo()Lcom/pantech/app/music/library/IListHolderHelper$ItemInfo;
    .registers 6

    .prologue
    .line 86
    new-instance v0, Lcom/pantech/app/music/library/IListHolderHelper$ItemInfo;

    iget-wide v2, p0, Lcom/pantech/app/music/library/holder/ListHolderSearchHelper;->itemID:J

    iget-object v1, p0, Lcom/pantech/app/music/library/holder/ListHolderSearchHelper;->title:Ljava/lang/String;

    iget-object v4, p0, Lcom/pantech/app/music/library/holder/ListHolderSearchHelper;->itemType:Lcom/pantech/app/music/library/FragmentInfo$Category;

    invoke-direct {v0, v2, v3, v1, v4}, Lcom/pantech/app/music/library/IListHolderHelper$ItemInfo;-><init>(JLjava/lang/String;Lcom/pantech/app/music/library/FragmentInfo$Category;)V

    return-object v0
.end method

.method public updateWithInfo(Landroid/content/Context;Ljava/lang/Object;)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "object"    # Ljava/lang/Object;

    .prologue
    const/16 v6, 0x8

    .line 37
    move-object v1, p2

    check-cast v1, Landroid/database/Cursor;

    .line 39
    .local v1, "c":Landroid/database/Cursor;
    const-string v2, "category"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Lcom/pantech/app/music/library/FragmentInfo;->fromOrdinal(I)Lcom/pantech/app/music/library/FragmentInfo$Category;

    move-result-object v2

    iput-object v2, p0, Lcom/pantech/app/music/library/holder/ListHolderSearchHelper;->itemType:Lcom/pantech/app/music/library/FragmentInfo$Category;

    .line 40
    const-string v2, "itemID"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/pantech/app/music/library/holder/ListHolderSearchHelper;->itemID:J

    .line 41
    const-string v2, "albumID"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/pantech/app/music/library/holder/ListHolderSearchHelper;->albumID:J

    .line 42
    const-string v2, "title"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/pantech/app/music/library/holder/ListHolderSearchHelper;->title:Ljava/lang/String;

    .line 44
    sget-object v2, Lcom/pantech/app/music/library/holder/ListHolderSearchHelper$1;->$SwitchMap$com$pantech$app$music$library$FragmentInfo$Category:[I

    iget-object v3, p0, Lcom/pantech/app/music/library/holder/ListHolderSearchHelper;->itemType:Lcom/pantech/app/music/library/FragmentInfo$Category;

    invoke-virtual {v3}, Lcom/pantech/app/music/library/FragmentInfo$Category;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_ba

    .line 49
    :goto_46
    iget-object v2, p0, Lcom/pantech/app/music/library/holder/ListHolderSearchHelper;->mTextMain:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/pantech/app/music/library/holder/ListHolderSearchHelper;->title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    iget-object v2, p0, Lcom/pantech/app/music/library/holder/ListHolderSearchHelper;->mTextSub:Landroid/widget/TextView;

    if-eqz v2, :cond_60

    .line 51
    iget-object v2, p0, Lcom/pantech/app/music/library/holder/ListHolderSearchHelper;->mTextSub:Landroid/widget/TextView;

    const-string v3, "detail"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    :cond_60
    iget-object v2, p0, Lcom/pantech/app/music/library/holder/ListHolderSearchHelper;->mPlayingIcon:Landroid/widget/ImageView;

    if-nez v2, :cond_6e

    .line 77
    :goto_64
    return-void

    .line 46
    :pswitch_65
    iget-wide v2, p0, Lcom/pantech/app/music/library/holder/ListHolderSearchHelper;->itemID:J

    invoke-static {p1, v2, v3}, Lcom/pantech/app/music/library/helper/DBProviderHelper;->getAlbumIdWithArtistId(Landroid/content/Context;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/pantech/app/music/library/holder/ListHolderSearchHelper;->albumID:J

    goto :goto_46

    .line 58
    :cond_6e
    sget-object v2, Lcom/pantech/app/music/library/holder/ListHolderSearchHelper$1;->$SwitchMap$com$pantech$app$music$library$FragmentInfo$Category:[I

    iget-object v3, p0, Lcom/pantech/app/music/library/holder/ListHolderSearchHelper;->itemType:Lcom/pantech/app/music/library/FragmentInfo$Category;

    invoke-virtual {v3}, Lcom/pantech/app/music/library/FragmentInfo$Category;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_c0

    .line 74
    iget-object v2, p0, Lcom/pantech/app/music/library/holder/ListHolderSearchHelper;->mPlayingIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_64

    .line 60
    :pswitch_81
    iget-wide v2, p0, Lcom/pantech/app/music/library/holder/ListHolderSearchHelper;->itemID:J

    invoke-static {}, Lcom/pantech/app/music/common/MusicUtils;->getPlayingID()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_b4

    .line 61
    iget-object v2, p0, Lcom/pantech/app/music/library/holder/ListHolderSearchHelper;->mPlayingIcon:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 62
    invoke-static {}, Lcom/pantech/app/music/common/MusicUtils;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_ab

    .line 63
    iget-object v2, p0, Lcom/pantech/app/music/library/holder/ListHolderSearchHelper;->mPlayingIcon:Landroid/widget/ImageView;

    const v3, 0x7f02013e

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 64
    iget-object v2, p0, Lcom/pantech/app/music/library/holder/ListHolderSearchHelper;->mPlayingIcon:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 65
    .local v0, "aniFrame":Landroid/graphics/drawable/AnimationDrawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    goto :goto_64

    .line 67
    .end local v0    # "aniFrame":Landroid/graphics/drawable/AnimationDrawable;
    :cond_ab
    iget-object v2, p0, Lcom/pantech/app/music/library/holder/ListHolderSearchHelper;->mPlayingIcon:Landroid/widget/ImageView;

    const v3, 0x7f02013d

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_64

    .line 70
    :cond_b4
    iget-object v2, p0, Lcom/pantech/app/music/library/holder/ListHolderSearchHelper;->mPlayingIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_64

    .line 44
    :pswitch_data_ba
    .packed-switch 0x1
        :pswitch_65
    .end packed-switch

    .line 58
    :pswitch_data_c0
    .packed-switch 0x2
        :pswitch_81
    .end packed-switch
.end method
