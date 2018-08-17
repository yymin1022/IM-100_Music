.class Lcom/pantech/app/music/library/helper/PlaylistHelper$rearrangeRunnable;
.super Ljava/lang/Object;
.source "PlaylistHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/music/library/helper/PlaylistHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "rearrangeRunnable"
.end annotation


# instance fields
.field from:I

.field to:I


# direct methods
.method constructor <init>(II)V
    .registers 3
    .param p1, "from"    # I
    .param p2, "to"    # I

    .prologue
    .line 745
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 746
    iput p1, p0, Lcom/pantech/app/music/library/helper/PlaylistHelper$rearrangeRunnable;->from:I

    .line 747
    iput p2, p0, Lcom/pantech/app/music/library/helper/PlaylistHelper$rearrangeRunnable;->to:I

    .line 748
    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 752
    invoke-static {}, Lcom/pantech/app/music/common/MusicUtils;->getQueue()[Lcom/pantech/app/music/list/MusicItemInfo;

    move-result-object v1

    .line 754
    .local v1, "itemList":[Lcom/pantech/app/music/list/MusicItemInfo;
    const-string v3, "PlaylistHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "rearrangeNowPlaying() from:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/pantech/app/music/library/helper/PlaylistHelper$rearrangeRunnable;->from:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", to:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/pantech/app/music/library/helper/PlaylistHelper$rearrangeRunnable;->to:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/pantech/app/music/utils/MLog;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    .line 757
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 758
    .local v2, "newArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/pantech/app/music/list/MusicItemInfo;>;"
    invoke-static {v2, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 761
    iget v3, p0, Lcom/pantech/app/music/library/helper/PlaylistHelper$rearrangeRunnable;->from:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/music/list/MusicItemInfo;

    .line 762
    .local v0, "fromInfo":Lcom/pantech/app/music/list/MusicItemInfo;
    iget v3, p0, Lcom/pantech/app/music/library/helper/PlaylistHelper$rearrangeRunnable;->to:I

    invoke-virtual {v2, v3, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 764
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 765
    invoke-static {v1}, Lcom/pantech/app/music/common/MusicUtils;->rearrangeQueue([Lcom/pantech/app/music/list/MusicItemInfo;)V

    .line 766
    return-void
.end method
