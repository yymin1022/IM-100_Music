.class Lcom/pantech/app/music/library/ListFragment$14;
.super Ljava/lang/Object;
.source "ListFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/app/music/library/ListFragment;->requestRemoveGroups()I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/music/library/ListFragment;

.field final synthetic val$itemsCount:I

.field final synthetic val$removeMusicList:[Lcom/pantech/app/music/list/MusicItemInfo;


# direct methods
.method constructor <init>(Lcom/pantech/app/music/library/ListFragment;[Lcom/pantech/app/music/list/MusicItemInfo;I)V
    .registers 4

    .prologue
    .line 1362
    iput-object p1, p0, Lcom/pantech/app/music/library/ListFragment$14;->this$0:Lcom/pantech/app/music/library/ListFragment;

    iput-object p2, p0, Lcom/pantech/app/music/library/ListFragment$14;->val$removeMusicList:[Lcom/pantech/app/music/list/MusicItemInfo;

    iput p3, p0, Lcom/pantech/app/music/library/ListFragment$14;->val$itemsCount:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 1365
    iget-object v0, p0, Lcom/pantech/app/music/library/ListFragment$14;->this$0:Lcom/pantech/app/music/library/ListFragment;

    invoke-virtual {v0}, Lcom/pantech/app/music/library/ListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/pantech/app/music/library/ListFragment$14;->val$removeMusicList:[Lcom/pantech/app/music/list/MusicItemInfo;

    invoke-static {v0, v1}, Lcom/pantech/app/music/library/helper/DBProviderHelper;->deleteSongs(Landroid/content/Context;[Lcom/pantech/app/music/list/MusicItemInfo;)I

    .line 1368
    iget-object v0, p0, Lcom/pantech/app/music/library/ListFragment$14;->this$0:Lcom/pantech/app/music/library/ListFragment;

    invoke-virtual {v0}, Lcom/pantech/app/music/library/ListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f08012b

    invoke-static {v0, v1}, Lcom/pantech/app/music/common/MusicUtils;->showToast(Landroid/content/Context;I)V

    .line 1371
    iget v0, p0, Lcom/pantech/app/music/library/ListFragment$14;->val$itemsCount:I

    iget-object v1, p0, Lcom/pantech/app/music/library/ListFragment$14;->val$removeMusicList:[Lcom/pantech/app/music/list/MusicItemInfo;

    array-length v1, v1

    if-ne v0, v1, :cond_31

    .line 1372
    iget-object v0, p0, Lcom/pantech/app/music/library/ListFragment$14;->this$0:Lcom/pantech/app/music/library/ListFragment;

    invoke-virtual {v0}, Lcom/pantech/app/music/library/ListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/pantech/app/music/library/activity/ListDetailActivity;

    if-eqz v0, :cond_31

    .line 1373
    iget-object v0, p0, Lcom/pantech/app/music/library/ListFragment$14;->this$0:Lcom/pantech/app/music/library/ListFragment;

    invoke-virtual {v0}, Lcom/pantech/app/music/library/ListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 1376
    :cond_31
    return-void
.end method
