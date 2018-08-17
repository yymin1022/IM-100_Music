.class public Lcom/pantech/app/music/library/holder/ListHolderGenreHelper;
.super Ljava/lang/Object;
.source "ListHolderGenreHelper.java"

# interfaces
.implements Lcom/pantech/app/music/library/IListHolderHelper;


# instance fields
.field private genreID:J

.field private genreName:Ljava/lang/String;

.field private mGenreImage:Landroid/widget/ImageView;

.field public mTextMain:Landroid/widget/TextView;

.field public mTextSub:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .registers 3
    .param p1, "itemView"    # Landroid/view/View;

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const v0, 0x7f1000f7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/pantech/app/music/library/holder/ListHolderGenreHelper;->mTextMain:Landroid/widget/TextView;

    .line 26
    const v0, 0x7f100101

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/pantech/app/music/library/holder/ListHolderGenreHelper;->mTextSub:Landroid/widget/TextView;

    .line 27
    const v0, 0x7f1000f6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/pantech/app/music/library/holder/ListHolderGenreHelper;->mGenreImage:Landroid/widget/ImageView;

    .line 28
    return-void
.end method


# virtual methods
.method public getAlbumID()J
    .registers 3

    .prologue
    .line 43
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getClickBehavior()Lcom/pantech/app/music/library/IListHolderHelper$ClickBehavior;
    .registers 2

    .prologue
    .line 53
    sget-object v0, Lcom/pantech/app/music/library/IListHolderHelper$ClickBehavior;->CLICK_MOVE_DETAIL_WITH_TITLE:Lcom/pantech/app/music/library/IListHolderHelper$ClickBehavior;

    return-object v0
.end method

.method public getDetailListInfo()Lcom/pantech/app/music/library/FragmentInfo;
    .registers 9

    .prologue
    .line 58
    new-instance v1, Lcom/pantech/app/music/library/FragmentInfo;

    sget-object v2, Lcom/pantech/app/music/library/FragmentInfo$Category;->CATEGORY_GENRE_TRACK:Lcom/pantech/app/music/library/FragmentInfo$Category;

    iget-object v3, p0, Lcom/pantech/app/music/library/holder/ListHolderGenreHelper;->genreName:Ljava/lang/String;

    const-wide/16 v4, -0x1

    iget-wide v6, p0, Lcom/pantech/app/music/library/holder/ListHolderGenreHelper;->genreID:J

    invoke-direct/range {v1 .. v7}, Lcom/pantech/app/music/library/FragmentInfo;-><init>(Lcom/pantech/app/music/library/FragmentInfo$Category;Ljava/lang/String;JJ)V

    return-object v1
.end method

.method public getItemInfo()Lcom/pantech/app/music/library/IListHolderHelper$ItemInfo;
    .registers 5

    .prologue
    .line 48
    new-instance v0, Lcom/pantech/app/music/library/IListHolderHelper$ItemInfo;

    iget-wide v2, p0, Lcom/pantech/app/music/library/holder/ListHolderGenreHelper;->genreID:J

    iget-object v1, p0, Lcom/pantech/app/music/library/holder/ListHolderGenreHelper;->genreName:Ljava/lang/String;

    invoke-direct {v0, v2, v3, v1}, Lcom/pantech/app/music/library/IListHolderHelper$ItemInfo;-><init>(JLjava/lang/String;)V

    return-object v0
.end method

.method public updateWithInfo(Landroid/content/Context;Ljava/lang/Object;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "object"    # Ljava/lang/Object;

    .prologue
    .line 32
    move-object v0, p2

    check-cast v0, Landroid/database/Cursor;

    .line 34
    .local v0, "c":Landroid/database/Cursor;
    const-string v1, "_id"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/pantech/app/music/library/holder/ListHolderGenreHelper;->genreID:J

    .line 35
    const-string v1, "name"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/pantech/app/music/library/holder/ListHolderGenreHelper;->genreName:Ljava/lang/String;

    .line 37
    iget-object v1, p0, Lcom/pantech/app/music/library/holder/ListHolderGenreHelper;->mTextMain:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/pantech/app/music/library/holder/ListHolderGenreHelper;->genreName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 38
    iget-object v1, p0, Lcom/pantech/app/music/library/holder/ListHolderGenreHelper;->mGenreImage:Landroid/widget/ImageView;

    const v2, 0x7f0200de

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 39
    return-void
.end method
