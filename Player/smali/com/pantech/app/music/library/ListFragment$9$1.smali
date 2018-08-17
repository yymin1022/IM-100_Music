.class Lcom/pantech/app/music/library/ListFragment$9$1;
.super Ljava/lang/Object;
.source "ListFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/app/music/library/ListFragment$9;->onItemRemoved(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/pantech/app/music/library/ListFragment$9;

.field final synthetic val$itemArray:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/pantech/app/music/library/ListFragment$9;Ljava/util/ArrayList;)V
    .registers 3

    .prologue
    .line 820
    iput-object p1, p0, Lcom/pantech/app/music/library/ListFragment$9$1;->this$1:Lcom/pantech/app/music/library/ListFragment$9;

    iput-object p2, p0, Lcom/pantech/app/music/library/ListFragment$9$1;->val$itemArray:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 823
    sget-object v0, Lcom/pantech/app/music/library/ListFragment$17;->$SwitchMap$com$pantech$app$music$library$FragmentInfo$Category:[I

    iget-object v1, p0, Lcom/pantech/app/music/library/ListFragment$9$1;->this$1:Lcom/pantech/app/music/library/ListFragment$9;

    iget-object v1, v1, Lcom/pantech/app/music/library/ListFragment$9;->this$0:Lcom/pantech/app/music/library/ListFragment;

    iget-object v1, v1, Lcom/pantech/app/music/library/ListFragment;->mFragmentInfo:Lcom/pantech/app/music/library/FragmentInfo;

    invoke-virtual {v1}, Lcom/pantech/app/music/library/FragmentInfo;->getCategory()Lcom/pantech/app/music/library/FragmentInfo$Category;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pantech/app/music/library/FragmentInfo$Category;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_32

    .line 828
    :goto_15
    return-void

    .line 825
    :pswitch_16
    iget-object v0, p0, Lcom/pantech/app/music/library/ListFragment$9$1;->this$1:Lcom/pantech/app/music/library/ListFragment$9;

    iget-object v0, v0, Lcom/pantech/app/music/library/ListFragment$9;->this$0:Lcom/pantech/app/music/library/ListFragment;

    invoke-virtual {v0}, Lcom/pantech/app/music/library/ListFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/pantech/app/music/db/SearchHistoryStore$SearchHistory;->LOCAL_URI:Landroid/net/Uri;

    iget-object v0, p0, Lcom/pantech/app/music/library/ListFragment$9$1;->val$itemArray:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v1, v2, v4, v5}, Lcom/pantech/app/music/db/SearchHistoryManager;->deleteHistory(Landroid/content/Context;Landroid/net/Uri;J)I

    goto :goto_15

    .line 823
    nop

    :pswitch_data_32
    .packed-switch 0x1
        :pswitch_16
    .end packed-switch
.end method
