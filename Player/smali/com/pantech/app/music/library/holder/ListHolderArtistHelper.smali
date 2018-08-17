.class public Lcom/pantech/app/music/library/holder/ListHolderArtistHelper;
.super Ljava/lang/Object;
.source "ListHolderArtistHelper.java"

# interfaces
.implements Lcom/pantech/app/music/library/IListHolderHelper;


# instance fields
.field private albumID:J

.field private artistID:J

.field private artistName:Ljava/lang/String;

.field public mTextMain:Landroid/widget/TextView;

.field public mTextSub:Landroid/widget/TextView;


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

    iput-object v0, p0, Lcom/pantech/app/music/library/holder/ListHolderArtistHelper;->mTextMain:Landroid/widget/TextView;

    .line 28
    const v0, 0x7f100101

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/pantech/app/music/library/holder/ListHolderArtistHelper;->mTextSub:Landroid/widget/TextView;

    .line 29
    return-void
.end method


# virtual methods
.method public getAlbumID()J
    .registers 3

    .prologue
    .line 47
    iget-wide v0, p0, Lcom/pantech/app/music/library/holder/ListHolderArtistHelper;->albumID:J

    return-wide v0
.end method

.method public getClickBehavior()Lcom/pantech/app/music/library/IListHolderHelper$ClickBehavior;
    .registers 2

    .prologue
    .line 57
    sget-object v0, Lcom/pantech/app/music/library/IListHolderHelper$ClickBehavior;->CLICK_MOVE_DETAIL_WITH_IMAGE:Lcom/pantech/app/music/library/IListHolderHelper$ClickBehavior;

    return-object v0
.end method

.method public getDetailListInfo()Lcom/pantech/app/music/library/FragmentInfo;
    .registers 9

    .prologue
    .line 62
    new-instance v1, Lcom/pantech/app/music/library/FragmentInfo;

    sget-object v2, Lcom/pantech/app/music/library/FragmentInfo$Category;->CATEGORY_ARTIST_TRACK:Lcom/pantech/app/music/library/FragmentInfo$Category;

    iget-object v3, p0, Lcom/pantech/app/music/library/holder/ListHolderArtistHelper;->artistName:Ljava/lang/String;

    iget-wide v4, p0, Lcom/pantech/app/music/library/holder/ListHolderArtistHelper;->albumID:J

    iget-wide v6, p0, Lcom/pantech/app/music/library/holder/ListHolderArtistHelper;->artistID:J

    invoke-direct/range {v1 .. v7}, Lcom/pantech/app/music/library/FragmentInfo;-><init>(Lcom/pantech/app/music/library/FragmentInfo$Category;Ljava/lang/String;JJ)V

    return-object v1
.end method

.method public getItemInfo()Lcom/pantech/app/music/library/IListHolderHelper$ItemInfo;
    .registers 5

    .prologue
    .line 52
    new-instance v0, Lcom/pantech/app/music/library/IListHolderHelper$ItemInfo;

    iget-wide v2, p0, Lcom/pantech/app/music/library/holder/ListHolderArtistHelper;->artistID:J

    iget-object v1, p0, Lcom/pantech/app/music/library/holder/ListHolderArtistHelper;->artistName:Ljava/lang/String;

    invoke-direct {v0, v2, v3, v1}, Lcom/pantech/app/music/library/IListHolderHelper$ItemInfo;-><init>(JLjava/lang/String;)V

    return-object v0
.end method

.method public updateWithInfo(Landroid/content/Context;Ljava/lang/Object;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "object"    # Ljava/lang/Object;

    .prologue
    .line 33
    move-object v0, p2

    check-cast v0, Landroid/database/Cursor;

    .line 35
    .local v0, "c":Landroid/database/Cursor;
    const-string v1, "_id"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/pantech/app/music/library/holder/ListHolderArtistHelper;->artistID:J

    .line 36
    sget-object v1, Lcom/pantech/app/music/library/FragmentInfo$Category;->CATEGORY_ARTIST:Lcom/pantech/app/music/library/FragmentInfo$Category;

    invoke-static {v1}, Lcom/pantech/app/music/library/helper/DBProviderHelper;->getTitleColumn(Lcom/pantech/app/music/library/FragmentInfo$Category;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/pantech/app/music/library/holder/ListHolderArtistHelper;->artistName:Ljava/lang/String;

    .line 39
    iget-wide v2, p0, Lcom/pantech/app/music/library/holder/ListHolderArtistHelper;->artistID:J

    invoke-static {p1, v2, v3}, Lcom/pantech/app/music/library/helper/DBProviderHelper;->getAlbumIdWithArtistId(Landroid/content/Context;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/pantech/app/music/library/holder/ListHolderArtistHelper;->albumID:J

    .line 41
    iget-object v1, p0, Lcom/pantech/app/music/library/holder/ListHolderArtistHelper;->mTextMain:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/pantech/app/music/library/holder/ListHolderArtistHelper;->artistName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 42
    iget-object v1, p0, Lcom/pantech/app/music/library/holder/ListHolderArtistHelper;->mTextSub:Landroid/widget/TextView;

    invoke-static {p1, v0}, Lcom/pantech/app/music/library/helper/DBProviderHelper;->getDetailWithArtistCursor(Landroid/content/Context;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 43
    return-void
.end method
