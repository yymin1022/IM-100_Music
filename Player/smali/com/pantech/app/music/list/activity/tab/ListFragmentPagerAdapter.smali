.class public Lcom/pantech/app/music/list/activity/tab/ListFragmentPagerAdapter;
.super Landroid/support/v13/app/FragmentStatePagerAdapter;
.source "ListFragmentPagerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/app/music/list/activity/tab/ListFragmentPagerAdapter$1;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ListFragmentPagerAdapter"


# instance fields
.field mContext:Landroid/content/Context;

.field mFragmentInfoArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/pantech/app/music/library/FragmentInfo;",
            ">;"
        }
    .end annotation
.end field

.field mFragments:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/app/Fragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/FragmentManager;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fm"    # Landroid/app/FragmentManager;

    .prologue
    .line 27
    invoke-direct {p0, p2}, Landroid/support/v13/app/FragmentStatePagerAdapter;-><init>(Landroid/app/FragmentManager;)V

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/pantech/app/music/list/activity/tab/ListFragmentPagerAdapter;->mFragmentInfoArray:Ljava/util/ArrayList;

    .line 24
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/pantech/app/music/list/activity/tab/ListFragmentPagerAdapter;->mFragments:Ljava/util/concurrent/ConcurrentHashMap;

    .line 29
    iput-object p1, p0, Lcom/pantech/app/music/list/activity/tab/ListFragmentPagerAdapter;->mContext:Landroid/content/Context;

    .line 30
    const/4 v0, 0x0

    const-wide/16 v2, -0x1

    invoke-virtual {p0, v0, v2, v3}, Lcom/pantech/app/music/list/activity/tab/ListFragmentPagerAdapter;->makeFragmentInfoArray(ZJ)V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/app/FragmentManager;ZJ)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fm"    # Landroid/app/FragmentManager;
    .param p3, "selectMode"    # Z
    .param p4, "playlistID"    # J

    .prologue
    .line 34
    invoke-direct {p0, p2}, Landroid/support/v13/app/FragmentStatePagerAdapter;-><init>(Landroid/app/FragmentManager;)V

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/pantech/app/music/list/activity/tab/ListFragmentPagerAdapter;->mFragmentInfoArray:Ljava/util/ArrayList;

    .line 24
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/pantech/app/music/list/activity/tab/ListFragmentPagerAdapter;->mFragments:Ljava/util/concurrent/ConcurrentHashMap;

    .line 36
    iput-object p1, p0, Lcom/pantech/app/music/list/activity/tab/ListFragmentPagerAdapter;->mContext:Landroid/content/Context;

    .line 37
    invoke-virtual {p0, p3, p4, p5}, Lcom/pantech/app/music/list/activity/tab/ListFragmentPagerAdapter;->makeFragmentInfoArray(ZJ)V

    .line 38
    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .registers 4
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    .line 109
    invoke-super {p0, p1, p2, p3}, Landroid/support/v13/app/FragmentStatePagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 110
    return-void
.end method

.method public getCount()I
    .registers 2

    .prologue
    .line 114
    iget-object v0, p0, Lcom/pantech/app/music/list/activity/tab/ListFragmentPagerAdapter;->mFragmentInfoArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getFragments()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Landroid/app/Fragment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 118
    iget-object v0, p0, Lcom/pantech/app/music/list/activity/tab/ListFragmentPagerAdapter;->mFragments:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getItem(I)Landroid/app/Fragment;
    .registers 6
    .param p1, "position"    # I

    .prologue
    .line 81
    iget-object v2, p0, Lcom/pantech/app/music/list/activity/tab/ListFragmentPagerAdapter;->mFragments:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_37

    .line 83
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 84
    .local v0, "args":Landroid/os/Bundle;
    const-string v3, "bundle.key.fragment"

    iget-object v2, p0, Lcom/pantech/app/music/list/activity/tab/ListFragmentPagerAdapter;->mFragmentInfoArray:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Parcelable;

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 87
    iget-object v2, p0, Lcom/pantech/app/music/list/activity/tab/ListFragmentPagerAdapter;->mContext:Landroid/content/Context;

    const-class v3, Lcom/pantech/app/music/library/ListFragment;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/app/Fragment;

    move-result-object v1

    .line 88
    .local v1, "fragment":Landroid/app/Fragment;
    invoke-virtual {v1, v0}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 89
    iget-object v2, p0, Lcom/pantech/app/music/list/activity/tab/ListFragmentPagerAdapter;->mFragments:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    .end local v0    # "args":Landroid/os/Bundle;
    :goto_36
    return-object v1

    .line 94
    .end local v1    # "fragment":Landroid/app/Fragment;
    :cond_37
    iget-object v2, p0, Lcom/pantech/app/music/list/activity/tab/ListFragmentPagerAdapter;->mFragments:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Fragment;

    .restart local v1    # "fragment":Landroid/app/Fragment;
    goto :goto_36
.end method

.method public getItemInfo(I)Lcom/pantech/app/music/library/FragmentInfo;
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 122
    iget-object v0, p0, Lcom/pantech/app/music/list/activity/tab/ListFragmentPagerAdapter;->mFragmentInfoArray:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/music/library/FragmentInfo;

    return-object v0
.end method

.method public getItemPosition(Lcom/pantech/app/music/library/FragmentInfo$Category;)I
    .registers 4
    .param p1, "category"    # Lcom/pantech/app/music/library/FragmentInfo$Category;

    .prologue
    .line 126
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/pantech/app/music/list/activity/tab/ListFragmentPagerAdapter;->mFragmentInfoArray:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1b

    .line 127
    iget-object v1, p0, Lcom/pantech/app/music/list/activity/tab/ListFragmentPagerAdapter;->mFragmentInfoArray:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pantech/app/music/library/FragmentInfo;

    invoke-virtual {v1}, Lcom/pantech/app/music/library/FragmentInfo;->getCategory()Lcom/pantech/app/music/library/FragmentInfo$Category;

    move-result-object v1

    if-ne v1, p1, :cond_18

    .line 130
    .end local v0    # "i":I
    :goto_17
    return v0

    .line 126
    .restart local v0    # "i":I
    :cond_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 130
    :cond_1b
    const/4 v0, 0x0

    goto :goto_17
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .registers 5
    .param p1, "position"    # I

    .prologue
    .line 71
    iget-object v1, p0, Lcom/pantech/app/music/list/activity/tab/ListFragmentPagerAdapter;->mFragmentInfoArray:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/music/library/FragmentInfo;

    .line 72
    .local v0, "info":Lcom/pantech/app/music/library/FragmentInfo;
    if-eqz v0, :cond_15

    .line 73
    invoke-virtual {v0}, Lcom/pantech/app/music/library/FragmentInfo;->getCategory()Lcom/pantech/app/music/library/FragmentInfo$Category;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/music/list/activity/tab/ListFragmentPagerAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/pantech/app/music/library/FragmentInfo$Category;->toString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 75
    :goto_14
    return-object v1

    :cond_15
    invoke-super {p0, p1}, Landroid/support/v13/app/FragmentStatePagerAdapter;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_14
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .registers 4
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I

    .prologue
    .line 103
    invoke-super {p0, p1, p2}, Landroid/support/v13/app/FragmentStatePagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method makeFragmentInfoArray(ZJ)V
    .registers 12
    .param p1, "selectMode"    # Z
    .param p2, "playlistID"    # J

    .prologue
    .line 42
    if-eqz p1, :cond_2b

    .line 43
    invoke-static {}, Lcom/pantech/app/music/library/helper/TabListHelper;->getTabListForSelect()Ljava/util/ArrayList;

    move-result-object v4

    .line 44
    .local v4, "tabArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/pantech/app/music/library/FragmentInfo$Category;>;"
    const/16 v3, 0x81

    .line 45
    .local v3, "options":I
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_60

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/music/library/FragmentInfo$Category;

    .line 46
    .local v0, "category":Lcom/pantech/app/music/library/FragmentInfo$Category;
    new-instance v1, Lcom/pantech/app/music/library/FragmentInfo;

    const-string v5, ""

    invoke-direct {v1, v0, v5}, Lcom/pantech/app/music/library/FragmentInfo;-><init>(Lcom/pantech/app/music/library/FragmentInfo$Category;Ljava/lang/String;)V

    .line 47
    .local v1, "fragmentInfo":Lcom/pantech/app/music/library/FragmentInfo;
    invoke-virtual {v1, v3}, Lcom/pantech/app/music/library/FragmentInfo;->addOptions(I)V

    .line 48
    invoke-virtual {v1, p2, p3}, Lcom/pantech/app/music/library/FragmentInfo;->setPlayListID(J)V

    .line 49
    iget-object v5, p0, Lcom/pantech/app/music/list/activity/tab/ListFragmentPagerAdapter;->mFragmentInfoArray:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_c

    .line 53
    .end local v0    # "category":Lcom/pantech/app/music/library/FragmentInfo$Category;
    .end local v1    # "fragmentInfo":Lcom/pantech/app/music/library/FragmentInfo;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "options":I
    .end local v4    # "tabArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/pantech/app/music/library/FragmentInfo$Category;>;"
    :cond_2b
    iget-object v5, p0, Lcom/pantech/app/music/list/activity/tab/ListFragmentPagerAdapter;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/pantech/app/music/library/helper/TabListHelper;->getTabListEnable(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v4

    .line 54
    .restart local v4    # "tabArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/pantech/app/music/library/FragmentInfo$Category;>;"
    const/4 v3, 0x0

    .line 55
    .restart local v3    # "options":I
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2    # "i$":Ljava/util/Iterator;
    :goto_36
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_60

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/music/library/FragmentInfo$Category;

    .line 56
    .restart local v0    # "category":Lcom/pantech/app/music/library/FragmentInfo$Category;
    sget-object v5, Lcom/pantech/app/music/list/activity/tab/ListFragmentPagerAdapter$1;->$SwitchMap$com$pantech$app$music$library$FragmentInfo$Category:[I

    invoke-virtual {v0}, Lcom/pantech/app/music/library/FragmentInfo$Category;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_62

    .line 62
    :goto_4d
    new-instance v1, Lcom/pantech/app/music/library/FragmentInfo;

    const-string v5, ""

    invoke-direct {v1, v0, v5}, Lcom/pantech/app/music/library/FragmentInfo;-><init>(Lcom/pantech/app/music/library/FragmentInfo$Category;Ljava/lang/String;)V

    .line 63
    .restart local v1    # "fragmentInfo":Lcom/pantech/app/music/library/FragmentInfo;
    invoke-virtual {v1, v3}, Lcom/pantech/app/music/library/FragmentInfo;->addOptions(I)V

    .line 64
    iget-object v5, p0, Lcom/pantech/app/music/list/activity/tab/ListFragmentPagerAdapter;->mFragmentInfoArray:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_36

    .line 59
    .end local v1    # "fragmentInfo":Lcom/pantech/app/music/library/FragmentInfo;
    :pswitch_5d
    or-int/lit8 v3, v3, 0x20

    goto :goto_4d

    .line 67
    .end local v0    # "category":Lcom/pantech/app/music/library/FragmentInfo$Category;
    :cond_60
    return-void

    .line 56
    nop

    :pswitch_data_62
    .packed-switch 0x1
        :pswitch_5d
        :pswitch_5d
    .end packed-switch
.end method
