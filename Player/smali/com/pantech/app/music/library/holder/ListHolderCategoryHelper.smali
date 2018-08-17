.class public Lcom/pantech/app/music/library/holder/ListHolderCategoryHelper;
.super Ljava/lang/Object;
.source "ListHolderCategoryHelper.java"

# interfaces
.implements Lcom/pantech/app/music/library/IListHolderHelper;


# instance fields
.field private itemInfo:Lcom/pantech/app/music/library/IListHolderHelper$ItemInfo;

.field public mTextMain:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .registers 3
    .param p1, "itemView"    # Landroid/view/View;

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const v0, 0x7f1000f7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/pantech/app/music/library/holder/ListHolderCategoryHelper;->mTextMain:Landroid/widget/TextView;

    .line 20
    return-void
.end method


# virtual methods
.method public getAlbumID()J
    .registers 3

    .prologue
    .line 32
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getClickBehavior()Lcom/pantech/app/music/library/IListHolderHelper$ClickBehavior;
    .registers 2

    .prologue
    .line 42
    sget-object v0, Lcom/pantech/app/music/library/IListHolderHelper$ClickBehavior;->CLICK_SEND_ITEM_INFO:Lcom/pantech/app/music/library/IListHolderHelper$ClickBehavior;

    return-object v0
.end method

.method public getDetailListInfo()Lcom/pantech/app/music/library/FragmentInfo;
    .registers 2

    .prologue
    .line 47
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemInfo()Lcom/pantech/app/music/library/IListHolderHelper$ItemInfo;
    .registers 2

    .prologue
    .line 37
    iget-object v0, p0, Lcom/pantech/app/music/library/holder/ListHolderCategoryHelper;->itemInfo:Lcom/pantech/app/music/library/IListHolderHelper$ItemInfo;

    return-object v0
.end method

.method public updateWithInfo(Landroid/content/Context;Ljava/lang/Object;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "object"    # Ljava/lang/Object;

    .prologue
    .line 24
    check-cast p2, Lcom/pantech/app/music/library/IListHolderHelper$ItemInfo;

    .end local p2    # "object":Ljava/lang/Object;
    iput-object p2, p0, Lcom/pantech/app/music/library/holder/ListHolderCategoryHelper;->itemInfo:Lcom/pantech/app/music/library/IListHolderHelper$ItemInfo;

    .line 25
    iget-object v0, p0, Lcom/pantech/app/music/library/holder/ListHolderCategoryHelper;->itemInfo:Lcom/pantech/app/music/library/IListHolderHelper$ItemInfo;

    if-nez v0, :cond_9

    .line 28
    :goto_8
    return-void

    .line 27
    :cond_9
    iget-object v0, p0, Lcom/pantech/app/music/library/holder/ListHolderCategoryHelper;->mTextMain:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/pantech/app/music/library/holder/ListHolderCategoryHelper;->itemInfo:Lcom/pantech/app/music/library/IListHolderHelper$ItemInfo;

    invoke-virtual {v1}, Lcom/pantech/app/music/library/IListHolderHelper$ItemInfo;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_8
.end method
