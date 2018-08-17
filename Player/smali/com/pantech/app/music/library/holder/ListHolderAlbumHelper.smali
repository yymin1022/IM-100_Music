.class public Lcom/pantech/app/music/library/holder/ListHolderAlbumHelper;
.super Ljava/lang/Object;
.source "ListHolderAlbumHelper.java"

# interfaces
.implements Lcom/pantech/app/music/library/IListHolderHelper;


# instance fields
.field private albumID:J

.field private albumName:Ljava/lang/String;

.field private artist:Ljava/lang/String;

.field private mTextMain:Landroid/widget/TextView;

.field private mTextSub:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .registers 3
    .param p1, "itemView"    # Landroid/view/View;

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const v0, 0x7f1000f7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/pantech/app/music/library/holder/ListHolderAlbumHelper;->mTextMain:Landroid/widget/TextView;

    .line 25
    const v0, 0x7f100101

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/pantech/app/music/library/holder/ListHolderAlbumHelper;->mTextSub:Landroid/widget/TextView;

    .line 26
    return-void
.end method


# virtual methods
.method public getAlbumID()J
    .registers 3

    .prologue
    .line 45
    iget-wide v0, p0, Lcom/pantech/app/music/library/holder/ListHolderAlbumHelper;->albumID:J

    return-wide v0
.end method

.method public getClickBehavior()Lcom/pantech/app/music/library/IListHolderHelper$ClickBehavior;
    .registers 2

    .prologue
    .line 55
    sget-object v0, Lcom/pantech/app/music/library/IListHolderHelper$ClickBehavior;->CLICK_MOVE_DETAIL_WITH_IMAGE:Lcom/pantech/app/music/library/IListHolderHelper$ClickBehavior;

    return-object v0
.end method

.method public getDetailListInfo()Lcom/pantech/app/music/library/FragmentInfo;
    .registers 9

    .prologue
    .line 60
    new-instance v0, Lcom/pantech/app/music/library/FragmentInfo;

    sget-object v1, Lcom/pantech/app/music/library/FragmentInfo$Category;->CATEGORY_ALBUM_TRACK:Lcom/pantech/app/music/library/FragmentInfo$Category;

    iget-object v2, p0, Lcom/pantech/app/music/library/holder/ListHolderAlbumHelper;->albumName:Ljava/lang/String;

    iget-object v3, p0, Lcom/pantech/app/music/library/holder/ListHolderAlbumHelper;->artist:Ljava/lang/String;

    iget-wide v4, p0, Lcom/pantech/app/music/library/holder/ListHolderAlbumHelper;->albumID:J

    iget-wide v6, p0, Lcom/pantech/app/music/library/holder/ListHolderAlbumHelper;->albumID:J

    invoke-direct/range {v0 .. v7}, Lcom/pantech/app/music/library/FragmentInfo;-><init>(Lcom/pantech/app/music/library/FragmentInfo$Category;Ljava/lang/String;Ljava/lang/String;JJ)V

    return-object v0
.end method

.method public getItemInfo()Lcom/pantech/app/music/library/IListHolderHelper$ItemInfo;
    .registers 5

    .prologue
    .line 50
    new-instance v0, Lcom/pantech/app/music/library/IListHolderHelper$ItemInfo;

    iget-wide v2, p0, Lcom/pantech/app/music/library/holder/ListHolderAlbumHelper;->albumID:J

    iget-object v1, p0, Lcom/pantech/app/music/library/holder/ListHolderAlbumHelper;->albumName:Ljava/lang/String;

    invoke-direct {v0, v2, v3, v1}, Lcom/pantech/app/music/library/IListHolderHelper$ItemInfo;-><init>(JLjava/lang/String;)V

    return-object v0
.end method

.method public updateWithInfo(Landroid/content/Context;Ljava/lang/Object;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "object"    # Ljava/lang/Object;

    .prologue
    .line 30
    move-object v0, p2

    check-cast v0, Landroid/database/Cursor;

    .line 32
    .local v0, "c":Landroid/database/Cursor;
    const-string v1, "_id"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/pantech/app/music/library/holder/ListHolderAlbumHelper;->albumID:J

    .line 33
    const-string v1, "album"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/pantech/app/music/library/holder/ListHolderAlbumHelper;->albumName:Ljava/lang/String;

    .line 36
    const-string v1, "artist"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/pantech/app/music/library/holder/ListHolderAlbumHelper;->artist:Ljava/lang/String;

    .line 39
    iget-object v1, p0, Lcom/pantech/app/music/library/holder/ListHolderAlbumHelper;->mTextMain:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/pantech/app/music/library/holder/ListHolderAlbumHelper;->albumName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 40
    iget-object v1, p0, Lcom/pantech/app/music/library/holder/ListHolderAlbumHelper;->mTextSub:Landroid/widget/TextView;

    const-string v2, "artist"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 41
    return-void
.end method
