.class Lcom/pantech/app/music/list/module/PlayInterface$MakePlayInfoForSelected;
.super Ljava/lang/Object;
.source "PlayInterface.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/music/list/module/PlayInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MakePlayInfoForSelected"
.end annotation


# instance fields
.field mCallback:Lcom/pantech/app/music/list/module/PlayInterface$MakePlayInfoCallback;

.field mContext:Landroid/content/Context;

.field mParam:Lcom/pantech/app/music/list/module/PlayInterface$MakePlayInfoParam;

.field mSelectedList:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/pantech/app/music/list/db/SelectManager$SelectInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/pantech/app/music/list/module/PlayInterface$MakePlayInfoParam;Ljava/util/Collection;Lcom/pantech/app/music/list/module/PlayInterface$MakePlayInfoCallback;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "param"    # Lcom/pantech/app/music/list/module/PlayInterface$MakePlayInfoParam;
    .param p4, "callback"    # Lcom/pantech/app/music/list/module/PlayInterface$MakePlayInfoCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/pantech/app/music/list/module/PlayInterface$MakePlayInfoParam;",
            "Ljava/util/Collection",
            "<",
            "Lcom/pantech/app/music/list/db/SelectManager$SelectInfo;",
            ">;",
            "Lcom/pantech/app/music/list/module/PlayInterface$MakePlayInfoCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 379
    .local p3, "selectedList":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/pantech/app/music/list/db/SelectManager$SelectInfo;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 380
    iput-object p1, p0, Lcom/pantech/app/music/list/module/PlayInterface$MakePlayInfoForSelected;->mContext:Landroid/content/Context;

    .line 382
    iput-object p4, p0, Lcom/pantech/app/music/list/module/PlayInterface$MakePlayInfoForSelected;->mCallback:Lcom/pantech/app/music/list/module/PlayInterface$MakePlayInfoCallback;

    .line 384
    iput-object p2, p0, Lcom/pantech/app/music/list/module/PlayInterface$MakePlayInfoForSelected;->mParam:Lcom/pantech/app/music/list/module/PlayInterface$MakePlayInfoParam;

    .line 386
    iput-object p3, p0, Lcom/pantech/app/music/list/module/PlayInterface$MakePlayInfoForSelected;->mSelectedList:Ljava/util/Collection;

    .line 387
    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 393
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 395
    .local v0, "playItemlist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/pantech/app/music/list/MusicItemInfo;>;"
    iget-object v2, p0, Lcom/pantech/app/music/list/module/PlayInterface$MakePlayInfoForSelected;->mSelectedList:Ljava/util/Collection;

    new-instance v3, Lcom/pantech/app/music/list/module/PlayInterface$MakePlayInfoForSelected$1;

    invoke-direct {v3, p0, v0}, Lcom/pantech/app/music/list/module/PlayInterface$MakePlayInfoForSelected$1;-><init>(Lcom/pantech/app/music/list/module/PlayInterface$MakePlayInfoForSelected;Ljava/util/ArrayList;)V

    invoke-static {v2, v3}, Lcom/pantech/app/music/list/db/SelectManager;->makeContentSelectInfoList(Ljava/util/Collection;Lcom/pantech/app/music/list/db/SelectManager$MakeSelectListTemplate;)V

    .line 405
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Lcom/pantech/app/music/list/MusicItemInfo;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/pantech/app/music/list/MusicItemInfo;

    .line 407
    .local v1, "playList":[Lcom/pantech/app/music/list/MusicItemInfo;
    iget-object v2, p0, Lcom/pantech/app/music/list/module/PlayInterface$MakePlayInfoForSelected;->mCallback:Lcom/pantech/app/music/list/module/PlayInterface$MakePlayInfoCallback;

    new-instance v3, Lcom/pantech/app/music/list/module/PlayInterface$PlayInfo;

    iget-object v4, p0, Lcom/pantech/app/music/list/module/PlayInterface$MakePlayInfoForSelected;->mParam:Lcom/pantech/app/music/list/module/PlayInterface$MakePlayInfoParam;

    invoke-direct {v3, v1, v4}, Lcom/pantech/app/music/list/module/PlayInterface$PlayInfo;-><init>([Lcom/pantech/app/music/list/MusicItemInfo;Lcom/pantech/app/music/list/module/PlayInterface$MakePlayInfoParam;)V

    iget-object v4, p0, Lcom/pantech/app/music/list/module/PlayInterface$MakePlayInfoForSelected;->mParam:Lcom/pantech/app/music/list/module/PlayInterface$MakePlayInfoParam;

    iget-object v4, v4, Lcom/pantech/app/music/list/module/PlayInterface$MakePlayInfoParam;->mPlayType:Lcom/pantech/app/music/list/module/PlayInterface$PlayType;

    invoke-interface {v2, v3, v4}, Lcom/pantech/app/music/list/module/PlayInterface$MakePlayInfoCallback;->onMakePlayInfoComplele(Lcom/pantech/app/music/list/module/PlayInterface$PlayInfo;Lcom/pantech/app/music/list/module/PlayInterface$PlayType;)V

    .line 408
    return-void
.end method
