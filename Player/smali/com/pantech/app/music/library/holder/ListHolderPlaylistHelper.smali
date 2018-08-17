.class public Lcom/pantech/app/music/library/holder/ListHolderPlaylistHelper;
.super Ljava/lang/Object;
.source "ListHolderPlaylistHelper.java"

# interfaces
.implements Lcom/pantech/app/music/library/IListHolderHelper;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/app/music/library/holder/ListHolderPlaylistHelper$1;
    }
.end annotation


# instance fields
.field itemType:Lcom/pantech/app/music/library/FragmentInfo$Category;

.field private mPlaylistImage:Landroid/widget/ImageView;

.field public mTextMain:Landroid/widget/TextView;

.field public mTextSub:Landroid/widget/TextView;

.field private playlistID:J

.field private playlistName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .registers 3
    .param p1, "itemView"    # Landroid/view/View;

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const v0, 0x7f1000f7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/pantech/app/music/library/holder/ListHolderPlaylistHelper;->mTextMain:Landroid/widget/TextView;

    .line 28
    const v0, 0x7f100101

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/pantech/app/music/library/holder/ListHolderPlaylistHelper;->mTextSub:Landroid/widget/TextView;

    .line 29
    const v0, 0x7f1000f6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/pantech/app/music/library/holder/ListHolderPlaylistHelper;->mPlaylistImage:Landroid/widget/ImageView;

    .line 30
    return-void
.end method


# virtual methods
.method public getAlbumID()J
    .registers 3

    .prologue
    .line 62
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getClickBehavior()Lcom/pantech/app/music/library/IListHolderHelper$ClickBehavior;
    .registers 2

    .prologue
    .line 72
    sget-object v0, Lcom/pantech/app/music/library/IListHolderHelper$ClickBehavior;->CLICK_MOVE_DETAIL_WITH_TITLE:Lcom/pantech/app/music/library/IListHolderHelper$ClickBehavior;

    return-object v0
.end method

.method public getDetailListInfo()Lcom/pantech/app/music/library/FragmentInfo;
    .registers 9

    .prologue
    const-wide/16 v4, -0x1

    .line 77
    const/4 v1, 0x0

    .line 78
    .local v1, "detailInfo":Lcom/pantech/app/music/library/FragmentInfo;
    sget-object v0, Lcom/pantech/app/music/library/holder/ListHolderPlaylistHelper$1;->$SwitchMap$com$pantech$app$music$library$FragmentInfo$Category:[I

    iget-object v2, p0, Lcom/pantech/app/music/library/holder/ListHolderPlaylistHelper;->itemType:Lcom/pantech/app/music/library/FragmentInfo$Category;

    invoke-virtual {v2}, Lcom/pantech/app/music/library/FragmentInfo$Category;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_48

    .line 95
    :goto_10
    return-object v1

    .line 80
    :pswitch_11
    new-instance v1, Lcom/pantech/app/music/library/FragmentInfo;

    .end local v1    # "detailInfo":Lcom/pantech/app/music/library/FragmentInfo;
    sget-object v2, Lcom/pantech/app/music/library/FragmentInfo$Category;->CATEGORY_RECENTLY_ADDED_TRACK:Lcom/pantech/app/music/library/FragmentInfo$Category;

    const v3, 0x7f080071

    move-wide v6, v4

    invoke-direct/range {v1 .. v7}, Lcom/pantech/app/music/library/FragmentInfo;-><init>(Lcom/pantech/app/music/library/FragmentInfo$Category;IJJ)V

    .line 81
    .restart local v1    # "detailInfo":Lcom/pantech/app/music/library/FragmentInfo;
    goto :goto_10

    .line 83
    :pswitch_1d
    new-instance v1, Lcom/pantech/app/music/library/FragmentInfo;

    .end local v1    # "detailInfo":Lcom/pantech/app/music/library/FragmentInfo;
    sget-object v2, Lcom/pantech/app/music/library/FragmentInfo$Category;->CATEGORY_MOST_PLAYED_TRACK:Lcom/pantech/app/music/library/FragmentInfo$Category;

    const v3, 0x7f08004b

    move-wide v6, v4

    invoke-direct/range {v1 .. v7}, Lcom/pantech/app/music/library/FragmentInfo;-><init>(Lcom/pantech/app/music/library/FragmentInfo$Category;IJJ)V

    .line 84
    .restart local v1    # "detailInfo":Lcom/pantech/app/music/library/FragmentInfo;
    goto :goto_10

    .line 86
    :pswitch_29
    new-instance v1, Lcom/pantech/app/music/library/FragmentInfo;

    .end local v1    # "detailInfo":Lcom/pantech/app/music/library/FragmentInfo;
    sget-object v2, Lcom/pantech/app/music/library/FragmentInfo$Category;->CATEGORY_FAVORITE_TRACK:Lcom/pantech/app/music/library/FragmentInfo$Category;

    const v3, 0x7f0801ae

    const-wide/16 v6, -0x6

    invoke-direct/range {v1 .. v7}, Lcom/pantech/app/music/library/FragmentInfo;-><init>(Lcom/pantech/app/music/library/FragmentInfo$Category;IJJ)V

    .line 87
    .restart local v1    # "detailInfo":Lcom/pantech/app/music/library/FragmentInfo;
    goto :goto_10

    .line 89
    :pswitch_36
    new-instance v1, Lcom/pantech/app/music/library/FragmentInfo;

    .end local v1    # "detailInfo":Lcom/pantech/app/music/library/FragmentInfo;
    sget-object v2, Lcom/pantech/app/music/library/FragmentInfo$Category;->CATEGORY_PLAYLIST_TRACK:Lcom/pantech/app/music/library/FragmentInfo$Category;

    iget-object v3, p0, Lcom/pantech/app/music/library/holder/ListHolderPlaylistHelper;->playlistName:Ljava/lang/String;

    iget-wide v6, p0, Lcom/pantech/app/music/library/holder/ListHolderPlaylistHelper;->playlistID:J

    invoke-direct/range {v1 .. v7}, Lcom/pantech/app/music/library/FragmentInfo;-><init>(Lcom/pantech/app/music/library/FragmentInfo$Category;Ljava/lang/String;JJ)V

    .line 90
    .restart local v1    # "detailInfo":Lcom/pantech/app/music/library/FragmentInfo;
    const/16 v0, 0xc

    invoke-virtual {v1, v0}, Lcom/pantech/app/music/library/FragmentInfo;->addOptions(I)V

    goto :goto_10

    .line 78
    nop

    :pswitch_data_48
    .packed-switch 0x1
        :pswitch_11
        :pswitch_1d
        :pswitch_29
        :pswitch_36
    .end packed-switch
.end method

.method public getItemInfo()Lcom/pantech/app/music/library/IListHolderHelper$ItemInfo;
    .registers 5

    .prologue
    .line 67
    new-instance v0, Lcom/pantech/app/music/library/IListHolderHelper$ItemInfo;

    iget-wide v2, p0, Lcom/pantech/app/music/library/holder/ListHolderPlaylistHelper;->playlistID:J

    iget-object v1, p0, Lcom/pantech/app/music/library/holder/ListHolderPlaylistHelper;->playlistName:Ljava/lang/String;

    invoke-direct {v0, v2, v3, v1}, Lcom/pantech/app/music/library/IListHolderHelper$ItemInfo;-><init>(JLjava/lang/String;)V

    return-object v0
.end method

.method public updateWithInfo(Landroid/content/Context;Ljava/lang/Object;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "object"    # Ljava/lang/Object;

    .prologue
    .line 34
    move-object v0, p2

    check-cast v0, Landroid/database/Cursor;

    .line 36
    .local v0, "c":Landroid/database/Cursor;
    const-string v1, "category"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Lcom/pantech/app/music/library/FragmentInfo;->fromOrdinal(I)Lcom/pantech/app/music/library/FragmentInfo$Category;

    move-result-object v1

    iput-object v1, p0, Lcom/pantech/app/music/library/holder/ListHolderPlaylistHelper;->itemType:Lcom/pantech/app/music/library/FragmentInfo$Category;

    .line 38
    const-string v1, "itemID"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/pantech/app/music/library/holder/ListHolderPlaylistHelper;->playlistID:J

    .line 39
    const-string v1, "title"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/pantech/app/music/library/holder/ListHolderPlaylistHelper;->playlistName:Ljava/lang/String;

    .line 41
    iget-object v1, p0, Lcom/pantech/app/music/library/holder/ListHolderPlaylistHelper;->mTextMain:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/pantech/app/music/library/holder/ListHolderPlaylistHelper;->playlistName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 42
    sget-object v1, Lcom/pantech/app/music/library/holder/ListHolderPlaylistHelper$1;->$SwitchMap$com$pantech$app$music$library$FragmentInfo$Category:[I

    iget-object v2, p0, Lcom/pantech/app/music/library/holder/ListHolderPlaylistHelper;->itemType:Lcom/pantech/app/music/library/FragmentInfo$Category;

    invoke-virtual {v2}, Lcom/pantech/app/music/library/FragmentInfo$Category;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_68

    .line 58
    :cond_3f
    :goto_3f
    return-void

    .line 44
    :pswitch_40
    iget-object v1, p0, Lcom/pantech/app/music/library/holder/ListHolderPlaylistHelper;->mPlaylistImage:Landroid/widget/ImageView;

    const v2, 0x7f0200f6

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3f

    .line 47
    :pswitch_49
    iget-object v1, p0, Lcom/pantech/app/music/library/holder/ListHolderPlaylistHelper;->mPlaylistImage:Landroid/widget/ImageView;

    const v2, 0x7f0200f5

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3f

    .line 50
    :pswitch_52
    iget-object v1, p0, Lcom/pantech/app/music/library/holder/ListHolderPlaylistHelper;->mPlaylistImage:Landroid/widget/ImageView;

    const v2, 0x7f0200f4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3f

    .line 53
    :pswitch_5b
    iget-object v1, p0, Lcom/pantech/app/music/library/holder/ListHolderPlaylistHelper;->mPlaylistImage:Landroid/widget/ImageView;

    if-eqz v1, :cond_3f

    .line 54
    iget-object v1, p0, Lcom/pantech/app/music/library/holder/ListHolderPlaylistHelper;->mPlaylistImage:Landroid/widget/ImageView;

    const v2, 0x7f0200f3

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3f

    .line 42
    :pswitch_data_68
    .packed-switch 0x1
        :pswitch_40
        :pswitch_49
        :pswitch_52
        :pswitch_5b
    .end packed-switch
.end method
