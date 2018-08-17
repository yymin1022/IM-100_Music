.class Lcom/pantech/app/music/library/ListFragment$13;
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

.field final synthetic val$groupArray:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/pantech/app/music/library/ListFragment;Ljava/util/ArrayList;)V
    .registers 3

    .prologue
    .line 1345
    iput-object p1, p0, Lcom/pantech/app/music/library/ListFragment$13;->this$0:Lcom/pantech/app/music/library/ListFragment;

    iput-object p2, p0, Lcom/pantech/app/music/library/ListFragment$13;->val$groupArray:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 1348
    iget-object v0, p0, Lcom/pantech/app/music/library/ListFragment$13;->this$0:Lcom/pantech/app/music/library/ListFragment;

    invoke-virtual {v0}, Lcom/pantech/app/music/library/ListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/pantech/app/music/library/ListFragment$13;->val$groupArray:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lcom/pantech/app/music/library/helper/PlaylistHelper;->removePlayLists(Landroid/content/Context;Ljava/util/ArrayList;)I

    .line 1349
    return-void
.end method
