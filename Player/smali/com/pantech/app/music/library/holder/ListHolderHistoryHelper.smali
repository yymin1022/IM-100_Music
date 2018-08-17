.class public Lcom/pantech/app/music/library/holder/ListHolderHistoryHelper;
.super Ljava/lang/Object;
.source "ListHolderHistoryHelper.java"

# interfaces
.implements Lcom/pantech/app/music/library/IListHolderHelper;


# instance fields
.field private itemID:J

.field public mTextMain:Landroid/widget/TextView;

.field private searchWord:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .registers 3
    .param p1, "itemView"    # Landroid/view/View;

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const v0, 0x7f1000f7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/pantech/app/music/library/holder/ListHolderHistoryHelper;->mTextMain:Landroid/widget/TextView;

    .line 21
    return-void
.end method


# virtual methods
.method public getAlbumID()J
    .registers 3

    .prologue
    .line 33
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getClickBehavior()Lcom/pantech/app/music/library/IListHolderHelper$ClickBehavior;
    .registers 2

    .prologue
    .line 43
    sget-object v0, Lcom/pantech/app/music/library/IListHolderHelper$ClickBehavior;->CLICK_SEND_ITEM_INFO:Lcom/pantech/app/music/library/IListHolderHelper$ClickBehavior;

    return-object v0
.end method

.method public getDetailListInfo()Lcom/pantech/app/music/library/FragmentInfo;
    .registers 2

    .prologue
    .line 48
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemInfo()Lcom/pantech/app/music/library/IListHolderHelper$ItemInfo;
    .registers 5

    .prologue
    .line 38
    new-instance v0, Lcom/pantech/app/music/library/IListHolderHelper$ItemInfo;

    iget-wide v2, p0, Lcom/pantech/app/music/library/holder/ListHolderHistoryHelper;->itemID:J

    iget-object v1, p0, Lcom/pantech/app/music/library/holder/ListHolderHistoryHelper;->searchWord:Ljava/lang/String;

    invoke-direct {v0, v2, v3, v1}, Lcom/pantech/app/music/library/IListHolderHelper$ItemInfo;-><init>(JLjava/lang/String;)V

    return-object v0
.end method

.method public updateWithInfo(Landroid/content/Context;Ljava/lang/Object;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "object"    # Ljava/lang/Object;

    .prologue
    .line 25
    move-object v0, p2

    check-cast v0, Landroid/database/Cursor;

    .line 26
    .local v0, "c":Landroid/database/Cursor;
    const-string v1, "_id"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    int-to-long v2, v1

    iput-wide v2, p0, Lcom/pantech/app/music/library/holder/ListHolderHistoryHelper;->itemID:J

    .line 27
    const-string v1, "search_word"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/pantech/app/music/library/holder/ListHolderHistoryHelper;->searchWord:Ljava/lang/String;

    .line 28
    iget-object v1, p0, Lcom/pantech/app/music/library/holder/ListHolderHistoryHelper;->mTextMain:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/pantech/app/music/library/holder/ListHolderHistoryHelper;->searchWord:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 29
    return-void
.end method
