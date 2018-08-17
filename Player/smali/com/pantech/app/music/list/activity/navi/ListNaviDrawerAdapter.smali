.class public Lcom/pantech/app/music/list/activity/navi/ListNaviDrawerAdapter;
.super Landroid/widget/BaseAdapter;
.source "ListNaviDrawerAdapter.java"


# instance fields
.field mContext:Landroid/content/Context;

.field mInflater:Landroid/view/LayoutInflater;

.field mListItem:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/pantech/app/music/list/activity/navi/ListNaviItemInfo$NaviInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/pantech/app/music/list/activity/navi/ListNaviItemInfo$NaviInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 22
    .local p2, "naviItemList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/pantech/app/music/list/activity/navi/ListNaviItemInfo$NaviInfo;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/pantech/app/music/list/activity/navi/ListNaviDrawerAdapter;->mContext:Landroid/content/Context;

    .line 24
    iput-object p2, p0, Lcom/pantech/app/music/list/activity/navi/ListNaviDrawerAdapter;->mListItem:Ljava/util/ArrayList;

    .line 25
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/pantech/app/music/list/activity/navi/ListNaviDrawerAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 26
    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .prologue
    .line 31
    iget-object v0, p0, Lcom/pantech/app/music/list/activity/navi/ListNaviDrawerAdapter;->mListItem:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 37
    iget-object v0, p0, Lcom/pantech/app/music/list/activity/navi/ListNaviDrawerAdapter;->mListItem:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .param p1, "position"    # I

    .prologue
    .line 43
    iget-object v0, p0, Lcom/pantech/app/music/list/activity/navi/ListNaviDrawerAdapter;->mListItem:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/music/list/activity/navi/ListNaviItemInfo$NaviInfo;

    iget v0, v0, Lcom/pantech/app/music/list/activity/navi/ListNaviItemInfo$NaviInfo;->mTabIconResID:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 9
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 49
    const/4 v1, 0x0

    .line 52
    .local v1, "view":Landroid/view/View;
    if-nez p2, :cond_24

    .line 54
    iget-object v2, p0, Lcom/pantech/app/music/list/activity/navi/ListNaviDrawerAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f03006a

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 61
    :goto_d
    const v2, 0x7f100113

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 62
    .local v0, "tv":Landroid/widget/TextView;
    iget-object v2, p0, Lcom/pantech/app/music/list/activity/navi/ListNaviDrawerAdapter;->mListItem:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pantech/app/music/list/activity/navi/ListNaviItemInfo$NaviInfo;

    iget-object v2, v2, Lcom/pantech/app/music/list/activity/navi/ListNaviItemInfo$NaviInfo;->mItemName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    return-object v1

    .line 58
    .end local v0    # "tv":Landroid/widget/TextView;
    :cond_24
    move-object v1, p2

    goto :goto_d
.end method
