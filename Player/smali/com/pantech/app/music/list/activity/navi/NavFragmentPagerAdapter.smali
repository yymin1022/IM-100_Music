.class public Lcom/pantech/app/music/list/activity/navi/NavFragmentPagerAdapter;
.super Landroid/support/v13/app/FragmentStatePagerAdapter;
.source "NavFragmentPagerAdapter.java"


# instance fields
.field mContext:Landroid/content/Context;

.field mDebug:Z

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

.field mNavItemInfo:Lcom/pantech/app/music/list/activity/navi/ListNaviItemInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/FragmentManager;Lcom/pantech/app/music/list/activity/navi/ListNaviItemInfo;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fragmentManager"    # Landroid/app/FragmentManager;
    .param p3, "navItemInfo"    # Lcom/pantech/app/music/list/activity/navi/ListNaviItemInfo;

    .prologue
    .line 26
    invoke-direct {p0, p2}, Landroid/support/v13/app/FragmentStatePagerAdapter;-><init>(Landroid/app/FragmentManager;)V

    .line 18
    invoke-static {}, Lcom/pantech/app/music/common/ModelInfo;->isReleaseModel()Z

    move-result v0

    iput-boolean v0, p0, Lcom/pantech/app/music/list/activity/navi/NavFragmentPagerAdapter;->mDebug:Z

    .line 23
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/pantech/app/music/list/activity/navi/NavFragmentPagerAdapter;->mFragments:Ljava/util/concurrent/ConcurrentHashMap;

    .line 28
    iput-object p1, p0, Lcom/pantech/app/music/list/activity/navi/NavFragmentPagerAdapter;->mContext:Landroid/content/Context;

    .line 30
    iput-object p3, p0, Lcom/pantech/app/music/list/activity/navi/NavFragmentPagerAdapter;->mNavItemInfo:Lcom/pantech/app/music/list/activity/navi/ListNaviItemInfo;

    .line 32
    const-string v0, "NavFragmentPagerAdapter"

    invoke-static {v0}, Lcom/pantech/app/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 33
    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .registers 7
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    .line 64
    invoke-super {p0, p1, p2, p3}, Landroid/support/v13/app/FragmentStatePagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 66
    iget-boolean v0, p0, Lcom/pantech/app/music/list/activity/navi/NavFragmentPagerAdapter;->mDebug:Z

    if-eqz v0, :cond_29

    .line 67
    const-string v0, "VMusicPageApapterTag"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "destroyItem:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    :cond_29
    iget-object v0, p0, Lcom/pantech/app/music/list/activity/navi/NavFragmentPagerAdapter;->mFragments:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    return-void
.end method

.method public getCount()I
    .registers 2

    .prologue
    .line 74
    iget-object v0, p0, Lcom/pantech/app/music/list/activity/navi/NavFragmentPagerAdapter;->mNavItemInfo:Lcom/pantech/app/music/list/activity/navi/ListNaviItemInfo;

    invoke-virtual {v0}, Lcom/pantech/app/music/list/activity/navi/ListNaviItemInfo;->getItemSize()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public getFragment(I)Landroid/app/Fragment;
    .registers 4
    .param p1, "position"    # I

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/pantech/app/music/list/activity/navi/NavFragmentPagerAdapter;->mDebug:Z

    if-eqz v0, :cond_2a

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getFragment pos:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " list:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/pantech/app/music/list/activity/navi/NavFragmentPagerAdapter;->mFragments:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/pantech/app/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 82
    :cond_2a
    iget-object v0, p0, Lcom/pantech/app/music/list/activity/navi/NavFragmentPagerAdapter;->mFragments:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Fragment;

    return-object v0
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
    .line 87
    iget-object v0, p0, Lcom/pantech/app/music/list/activity/navi/NavFragmentPagerAdapter;->mFragments:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getItem(I)Landroid/app/Fragment;
    .registers 7
    .param p1, "position"    # I

    .prologue
    .line 37
    iget-object v2, p0, Lcom/pantech/app/music/list/activity/navi/NavFragmentPagerAdapter;->mNavItemInfo:Lcom/pantech/app/music/list/activity/navi/ListNaviItemInfo;

    invoke-virtual {v2, p1}, Lcom/pantech/app/music/list/activity/navi/ListNaviItemInfo;->getNaviInfo(I)Lcom/pantech/app/music/list/activity/navi/ListNaviItemInfo$NaviInfo;

    move-result-object v1

    .line 39
    .local v1, "info":Lcom/pantech/app/music/list/activity/navi/ListNaviItemInfo$NaviInfo;
    iget-object v2, p0, Lcom/pantech/app/music/list/activity/navi/NavFragmentPagerAdapter;->mContext:Landroid/content/Context;

    iget-object v3, v1, Lcom/pantech/app/music/list/activity/navi/ListNaviItemInfo$NaviInfo;->mClazz:Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v1, Lcom/pantech/app/music/list/activity/navi/ListNaviItemInfo$NaviInfo;->mArgs:Landroid/os/Bundle;

    invoke-static {v2, v3, v4}, Landroid/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/app/Fragment;

    move-result-object v0

    .line 40
    .local v0, "fragment":Landroid/app/Fragment;
    iget-object v2, v1, Lcom/pantech/app/music/list/activity/navi/ListNaviItemInfo$NaviInfo;->mArgs:Landroid/os/Bundle;

    invoke-virtual {v0, v2}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 42
    return-object v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .registers 7
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I

    .prologue
    .line 51
    invoke-super {p0, p1, p2}, Landroid/support/v13/app/FragmentStatePagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Fragment;

    .line 53
    .local v0, "fragment":Landroid/app/Fragment;
    iget-boolean v1, p0, Lcom/pantech/app/music/list/activity/navi/NavFragmentPagerAdapter;->mDebug:Z

    if-eqz v1, :cond_2c

    .line 54
    const-string v1, "VMusicPageApapterTag"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "instantiateItem:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/music/utils/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    :cond_2c
    iget-object v1, p0, Lcom/pantech/app/music/list/activity/navi/NavFragmentPagerAdapter;->mFragments:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    return-object v0
.end method
