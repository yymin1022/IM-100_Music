.class public Lcom/pantech/app/music/library/holder/ListHolderDuplicateHelper;
.super Ljava/lang/Object;
.source "ListHolderDuplicateHelper.java"

# interfaces
.implements Lcom/pantech/app/music/library/IListHolderHelper;


# instance fields
.field public albumID:J

.field public audioID:J

.field private mDivider:Landroid/view/View;

.field private mDividerTitle:Landroid/widget/TextView;

.field public mPlayingIcon:Landroid/widget/ImageView;

.field public mTextMain:Landroid/widget/TextView;

.field public mTextSub:Landroid/widget/TextView;

.field private trackName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .registers 3
    .param p1, "itemView"    # Landroid/view/View;

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const v0, 0x7f100102

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/pantech/app/music/library/holder/ListHolderDuplicateHelper;->mPlayingIcon:Landroid/widget/ImageView;

    .line 33
    const v0, 0x7f1000f7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/pantech/app/music/library/holder/ListHolderDuplicateHelper;->mTextMain:Landroid/widget/TextView;

    .line 34
    const v0, 0x7f100101

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/pantech/app/music/library/holder/ListHolderDuplicateHelper;->mTextSub:Landroid/widget/TextView;

    .line 35
    const v0, 0x7f1000fb

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/music/library/holder/ListHolderDuplicateHelper;->mDivider:Landroid/view/View;

    .line 36
    const v0, 0x7f1000fc

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/pantech/app/music/library/holder/ListHolderDuplicateHelper;->mDividerTitle:Landroid/widget/TextView;

    .line 37
    return-void
.end method


# virtual methods
.method public getAlbumID()J
    .registers 3

    .prologue
    .line 75
    iget-wide v0, p0, Lcom/pantech/app/music/library/holder/ListHolderDuplicateHelper;->albumID:J

    return-wide v0
.end method

.method public getClickBehavior()Lcom/pantech/app/music/library/IListHolderHelper$ClickBehavior;
    .registers 2

    .prologue
    .line 85
    sget-object v0, Lcom/pantech/app/music/library/IListHolderHelper$ClickBehavior;->CLICK_PLAY_TRACKS:Lcom/pantech/app/music/library/IListHolderHelper$ClickBehavior;

    return-object v0
.end method

.method public getDetailListInfo()Lcom/pantech/app/music/library/FragmentInfo;
    .registers 2

    .prologue
    .line 90
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemInfo()Lcom/pantech/app/music/library/IListHolderHelper$ItemInfo;
    .registers 5

    .prologue
    .line 80
    new-instance v0, Lcom/pantech/app/music/library/IListHolderHelper$ItemInfo;

    iget-wide v2, p0, Lcom/pantech/app/music/library/holder/ListHolderDuplicateHelper;->audioID:J

    iget-object v1, p0, Lcom/pantech/app/music/library/holder/ListHolderDuplicateHelper;->trackName:Ljava/lang/String;

    invoke-direct {v0, v2, v3, v1}, Lcom/pantech/app/music/library/IListHolderHelper$ItemInfo;-><init>(JLjava/lang/String;)V

    return-object v0
.end method

.method public updateWithInfo(Landroid/content/Context;Ljava/lang/Object;)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "object"    # Ljava/lang/Object;

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 41
    move-object v1, p2

    check-cast v1, Landroid/database/Cursor;

    .line 42
    .local v1, "c":Landroid/database/Cursor;
    const-string v2, "_id"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/pantech/app/music/library/holder/ListHolderDuplicateHelper;->audioID:J

    .line 43
    const-string v2, "album_id"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/pantech/app/music/library/holder/ListHolderDuplicateHelper;->albumID:J

    .line 44
    sget-object v2, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_ALBUM_SONG:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-static {v2}, Lcom/pantech/app/music/list/db/DBInterfaceHelper;->getDefaultTitleColumn(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/pantech/app/music/library/holder/ListHolderDuplicateHelper;->trackName:Ljava/lang/String;

    .line 46
    iget-object v2, p0, Lcom/pantech/app/music/library/holder/ListHolderDuplicateHelper;->mTextMain:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/pantech/app/music/library/holder/ListHolderDuplicateHelper;->trackName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    iget-object v2, p0, Lcom/pantech/app/music/library/holder/ListHolderDuplicateHelper;->mTextSub:Landroid/widget/TextView;

    sget-object v3, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_ARTIST:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-static {v3}, Lcom/pantech/app/music/list/db/DBInterfaceHelper;->getDefaultTitleColumn(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    iget-object v2, p0, Lcom/pantech/app/music/library/holder/ListHolderDuplicateHelper;->mPlayingIcon:Landroid/widget/ImageView;

    if-eqz v2, :cond_74

    .line 50
    iget-wide v2, p0, Lcom/pantech/app/music/library/holder/ListHolderDuplicateHelper;->audioID:J

    invoke-static {}, Lcom/pantech/app/music/common/MusicUtils;->getPlayingID()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_9f

    .line 51
    iget-object v2, p0, Lcom/pantech/app/music/library/holder/ListHolderDuplicateHelper;->mPlayingIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 52
    invoke-static {}, Lcom/pantech/app/music/common/MusicUtils;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_96

    .line 53
    iget-object v2, p0, Lcom/pantech/app/music/library/holder/ListHolderDuplicateHelper;->mPlayingIcon:Landroid/widget/ImageView;

    const v3, 0x7f02013e

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 54
    iget-object v2, p0, Lcom/pantech/app/music/library/holder/ListHolderDuplicateHelper;->mPlayingIcon:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 55
    .local v0, "aniFrame":Landroid/graphics/drawable/AnimationDrawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 64
    .end local v0    # "aniFrame":Landroid/graphics/drawable/AnimationDrawable;
    :cond_74
    :goto_74
    const-string v2, "similar_type"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_a5

    .line 65
    iget-object v2, p0, Lcom/pantech/app/music/library/holder/ListHolderDuplicateHelper;->mDivider:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 66
    iget-object v2, p0, Lcom/pantech/app/music/library/holder/ListHolderDuplicateHelper;->mDividerTitle:Landroid/widget/TextView;

    const-string v3, "similar_title"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    :goto_95
    return-void

    .line 57
    :cond_96
    iget-object v2, p0, Lcom/pantech/app/music/library/holder/ListHolderDuplicateHelper;->mPlayingIcon:Landroid/widget/ImageView;

    const v3, 0x7f02013d

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_74

    .line 60
    :cond_9f
    iget-object v2, p0, Lcom/pantech/app/music/library/holder/ListHolderDuplicateHelper;->mPlayingIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_74

    .line 69
    :cond_a5
    iget-object v2, p0, Lcom/pantech/app/music/library/holder/ListHolderDuplicateHelper;->mDivider:Landroid/view/View;

    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_95
.end method
