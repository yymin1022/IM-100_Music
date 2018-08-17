.class Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl$AlbumartAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "MusicPlaybackActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AlbumartAdapter"
.end annotation


# instance fields
.field private mInflater:Landroid/view/LayoutInflater;

.field private final mViewArray:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$1:Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;


# direct methods
.method public constructor <init>(Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;Landroid/content/Context;)V
    .registers 4
    .param p2, "c"    # Landroid/content/Context;

    .prologue
    .line 2687
    iput-object p1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl$AlbumartAdapter;->this$1:Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;

    .line 2688
    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 2684
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl$AlbumartAdapter;->mViewArray:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2689
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl$AlbumartAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 2690
    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .registers 4
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    .line 2728
    invoke-virtual {p0, p1, p2, p3}, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl$AlbumartAdapter;->destroyTheItem(Landroid/view/View;ILjava/lang/Object;)V

    .line 2729
    return-void
.end method

.method public destroyTheItem(Landroid/view/View;ILjava/lang/Object;)V
    .registers 7
    .param p1, "pager"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "view"    # Ljava/lang/Object;

    .prologue
    .line 2735
    const-string v0, "MusicPlaybackActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "destroyItem("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2736
    check-cast p1, Landroid/support/v4/view/ViewPager;

    .end local p1    # "pager":Landroid/view/View;
    check-cast p3, Landroid/view/View;

    .end local p3    # "view":Ljava/lang/Object;
    invoke-virtual {p1, p3}, Landroid/support/v4/view/ViewPager;->removeView(Landroid/view/View;)V

    .line 2738
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl$AlbumartAdapter;->mViewArray:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter v1

    .line 2739
    :try_start_28
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl$AlbumartAdapter;->mViewArray:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2740
    monitor-exit v1

    .line 2741
    return-void

    .line 2740
    :catchall_33
    move-exception v0

    monitor-exit v1
    :try_end_35
    .catchall {:try_start_28 .. :try_end_35} :catchall_33

    throw v0
.end method

.method public getCount()I
    .registers 2

    .prologue
    .line 2695
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl$AlbumartAdapter;->this$1:Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;

    iget-object v0, v0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    invoke-static {v0}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->access$200(Lcom/pantech/app/music/player/MusicPlaybackActivity;)Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicServiceClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicServiceClient;->getQueueLength()I

    move-result v0

    return v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .registers 4
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I

    .prologue
    .line 2700
    invoke-virtual {p0, p1, p2}, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl$AlbumartAdapter;->instantiateTheItem(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public instantiateTheItem(Landroid/view/View;I)Ljava/lang/Object;
    .registers 12
    .param p1, "pager"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    const/4 v8, 0x0

    .line 2708
    const-string v2, "MusicPlaybackActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "instantiateItem("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pantech/app/music/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2709
    iget-object v2, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl$AlbumartAdapter;->this$1:Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;

    iget-object v2, v2, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    invoke-static {v2}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->access$3400(Lcom/pantech/app/music/player/MusicPlaybackActivity;)Z

    move-result v2

    if-eqz v2, :cond_4e

    .line 2710
    const-string v2, "MusicPlaybackActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "time->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v6, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl$AlbumartAdapter;->this$1:Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;

    iget-object v6, v6, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    invoke-static {v6}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->access$3500(Lcom/pantech/app/music/player/MusicPlaybackActivity;)J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pantech/app/music/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2714
    :cond_4e
    iget-object v2, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl$AlbumartAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f0300a1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 2716
    .local v1, "v":Landroid/view/View;
    const v2, 0x7f10017a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 2717
    .local v0, "iv":Landroid/widget/ImageView;
    iget-object v2, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl$AlbumartAdapter;->this$1:Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;

    iget-object v3, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl$AlbumartAdapter;->this$1:Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;

    iget-object v3, v3, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    invoke-static {v3}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->access$200(Lcom/pantech/app/music/player/MusicPlaybackActivity;)Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicServiceClient;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicServiceClient;->getQueueAt(I)Lcom/pantech/app/music/list/MusicItemInfo;

    move-result-object v3

    invoke-virtual {v2, v0, v3, v8}, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;->setAlbumart(Landroid/widget/ImageView;Lcom/pantech/app/music/list/MusicItemInfo;Z)V

    .line 2718
    check-cast p1, Landroid/support/v4/view/ViewPager;

    .end local p1    # "pager":Landroid/view/View;
    invoke-virtual {p1, v1, v8}, Landroid/support/v4/view/ViewPager;->addView(Landroid/view/View;I)V

    .line 2720
    iget-object v3, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl$AlbumartAdapter;->mViewArray:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter v3

    .line 2721
    :try_start_7a
    iget-object v2, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl$AlbumartAdapter;->mViewArray:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2722
    monitor-exit v3

    .line 2723
    return-object v1

    .line 2722
    :catchall_85
    move-exception v2

    monitor-exit v3
    :try_end_87
    .catchall {:try_start_7a .. :try_end_87} :catchall_85

    throw v2
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .registers 4
    .param p1, "pager"    # Landroid/view/View;
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    .line 2775
    if-ne p1, p2, :cond_4

    const/4 v0, 0x1

    :goto_3
    return v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V
    .registers 3
    .param p1, "arg0"    # Landroid/os/Parcelable;
    .param p2, "arg1"    # Ljava/lang/ClassLoader;

    .prologue
    .line 2780
    return-void
.end method

.method public saveState()Landroid/os/Parcelable;
    .registers 2

    .prologue
    .line 2784
    const/4 v0, 0x0

    return-object v0
.end method

.method public updateImageView(ZI)V
    .registers 8
    .param p1, "bSet"    # Z
    .param p2, "position"    # I

    .prologue
    .line 2744
    const-string v2, "MusicPlaybackActivity"

    const-string v3, "updateImageView"

    invoke-static {v2, v3}, Lcom/pantech/app/music/utils/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2747
    iget-object v3, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl$AlbumartAdapter;->mViewArray:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter v3

    .line 2748
    add-int/lit8 v0, p2, -0x1

    .local v0, "i":I
    :goto_c
    add-int/lit8 v2, p2, 0x1

    if-gt v0, v2, :cond_36

    .line 2749
    if-ltz v0, :cond_18

    :try_start_12
    invoke-virtual {p0}, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl$AlbumartAdapter;->getCount()I

    move-result v2

    if-lt v0, v2, :cond_1b

    .line 2748
    :cond_18
    :goto_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 2751
    :cond_1b
    iget-object v2, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl$AlbumartAdapter;->mViewArray:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 2752
    .local v1, "iv":Landroid/widget/ImageView;
    iget-object v2, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl$AlbumartAdapter;->this$1:Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;

    iget-object v2, v2, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    invoke-static {v2}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->access$200(Lcom/pantech/app/music/player/MusicPlaybackActivity;)Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicServiceClient;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicServiceClient;->getQueueAt(I)Lcom/pantech/app/music/list/MusicItemInfo;

    goto :goto_18

    .line 2763
    .end local v1    # "iv":Landroid/widget/ImageView;
    :catchall_33
    move-exception v2

    monitor-exit v3
    :try_end_35
    .catchall {:try_start_12 .. :try_end_35} :catchall_33

    throw v2

    :cond_36
    :try_start_36
    monitor-exit v3
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_33

    .line 2764
    return-void
.end method

.method public updateLargeAlbumart(I)V
    .registers 7
    .param p1, "position"    # I

    .prologue
    .line 2767
    const-string v2, "MusicPlaybackActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateLargeAlbumart()  position: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pantech/app/music/utils/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2768
    iget-object v2, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl$AlbumartAdapter;->this$1:Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;

    iget-object v2, v2, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    invoke-static {v2}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->access$200(Lcom/pantech/app/music/player/MusicPlaybackActivity;)Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicServiceClient;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicServiceClient;->getQueueAt(I)Lcom/pantech/app/music/list/MusicItemInfo;

    move-result-object v0

    .line 2769
    .local v0, "item":Lcom/pantech/app/music/list/MusicItemInfo;
    iget-object v2, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl$AlbumartAdapter;->mViewArray:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 2770
    .local v1, "iv":Landroid/widget/ImageView;
    iget-object v2, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl$AlbumartAdapter;->this$1:Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v0, v3}, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;->setAlbumart(Landroid/widget/ImageView;Lcom/pantech/app/music/list/MusicItemInfo;Z)V

    .line 2771
    return-void
.end method
