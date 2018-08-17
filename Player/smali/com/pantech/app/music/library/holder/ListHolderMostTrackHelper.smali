.class public Lcom/pantech/app/music/library/holder/ListHolderMostTrackHelper;
.super Ljava/lang/Object;
.source "ListHolderMostTrackHelper.java"

# interfaces
.implements Lcom/pantech/app/music/library/IListHolderHelper;


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

    iput-object v0, p0, Lcom/pantech/app/music/library/holder/ListHolderMostTrackHelper;->mPlayingIcon:Landroid/widget/ImageView;

    .line 31
    const v0, 0x7f1000f7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/pantech/app/music/library/holder/ListHolderMostTrackHelper;->mTextMain:Landroid/widget/TextView;

    .line 32
    const v0, 0x7f100101

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/pantech/app/music/library/holder/ListHolderMostTrackHelper;->mTextSub:Landroid/widget/TextView;

    .line 33
    return-void
.end method


# virtual methods
.method public getAlbumID()J
    .registers 3

    .prologue
    .line 67
    iget-wide v0, p0, Lcom/pantech/app/music/library/holder/ListHolderMostTrackHelper;->albumID:J

    return-wide v0
.end method

.method public getClickBehavior()Lcom/pantech/app/music/library/IListHolderHelper$ClickBehavior;
    .registers 2

    .prologue
    .line 77
    sget-object v0, Lcom/pantech/app/music/library/IListHolderHelper$ClickBehavior;->CLICK_PLAY_TRACKS:Lcom/pantech/app/music/library/IListHolderHelper$ClickBehavior;

    return-object v0
.end method

.method public getDetailListInfo()Lcom/pantech/app/music/library/FragmentInfo;
    .registers 2

    .prologue
    .line 82
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemInfo()Lcom/pantech/app/music/library/IListHolderHelper$ItemInfo;
    .registers 5

    .prologue
    .line 72
    new-instance v0, Lcom/pantech/app/music/library/IListHolderHelper$ItemInfo;

    iget-wide v2, p0, Lcom/pantech/app/music/library/holder/ListHolderMostTrackHelper;->audioID:J

    iget-object v1, p0, Lcom/pantech/app/music/library/holder/ListHolderMostTrackHelper;->trackName:Ljava/lang/String;

    invoke-direct {v0, v2, v3, v1}, Lcom/pantech/app/music/library/IListHolderHelper$ItemInfo;-><init>(JLjava/lang/String;)V

    return-object v0
.end method

.method public updateWithInfo(Landroid/content/Context;Ljava/lang/Object;)V
    .registers 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v8, 0x0

    .line 37
    move-object v1, p2

    check-cast v1, Landroid/database/Cursor;

    .line 38
    .local v1, "c":Landroid/database/Cursor;
    const-string v3, "_id"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/pantech/app/music/library/holder/ListHolderMostTrackHelper;->audioID:J

    .line 39
    const-string v3, "album_id"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/pantech/app/music/library/holder/ListHolderMostTrackHelper;->albumID:J

    .line 40
    sget-object v3, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_ALBUM_SONG:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-static {v3}, Lcom/pantech/app/music/list/db/DBInterfaceHelper;->getDefaultTitleColumn(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/pantech/app/music/library/holder/ListHolderMostTrackHelper;->trackName:Ljava/lang/String;

    .line 42
    const v3, 0x7f0800c8

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "play_count"

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    const/4 v5, 0x1

    const-string v6, "artist"

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 46
    .local v2, "subStr":Ljava/lang/String;
    iget-object v3, p0, Lcom/pantech/app/music/library/holder/ListHolderMostTrackHelper;->mTextMain:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/pantech/app/music/library/holder/ListHolderMostTrackHelper;->trackName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    iget-object v3, p0, Lcom/pantech/app/music/library/holder/ListHolderMostTrackHelper;->mTextSub:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    iget-object v3, p0, Lcom/pantech/app/music/library/holder/ListHolderMostTrackHelper;->mPlayingIcon:Landroid/widget/ImageView;

    if-eqz v3, :cond_8b

    .line 50
    iget-wide v4, p0, Lcom/pantech/app/music/library/holder/ListHolderMostTrackHelper;->audioID:J

    invoke-static {}, Lcom/pantech/app/music/common/MusicUtils;->getPlayingID()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-nez v3, :cond_95

    .line 51
    iget-object v3, p0, Lcom/pantech/app/music/library/holder/ListHolderMostTrackHelper;->mPlayingIcon:Landroid/widget/ImageView;

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 52
    invoke-static {}, Lcom/pantech/app/music/common/MusicUtils;->isPlaying()Z

    move-result v3

    if-eqz v3, :cond_8c

    .line 53
    iget-object v3, p0, Lcom/pantech/app/music/library/holder/ListHolderMostTrackHelper;->mPlayingIcon:Landroid/widget/ImageView;

    const v4, 0x7f02013e

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 54
    iget-object v3, p0, Lcom/pantech/app/music/library/holder/ListHolderMostTrackHelper;->mPlayingIcon:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 55
    .local v0, "aniFrame":Landroid/graphics/drawable/AnimationDrawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 63
    .end local v0    # "aniFrame":Landroid/graphics/drawable/AnimationDrawable;
    :cond_8b
    :goto_8b
    return-void

    .line 57
    :cond_8c
    iget-object v3, p0, Lcom/pantech/app/music/library/holder/ListHolderMostTrackHelper;->mPlayingIcon:Landroid/widget/ImageView;

    const v4, 0x7f02013d

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_8b

    .line 60
    :cond_95
    iget-object v3, p0, Lcom/pantech/app/music/library/holder/ListHolderMostTrackHelper;->mPlayingIcon:Landroid/widget/ImageView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_8b
.end method
