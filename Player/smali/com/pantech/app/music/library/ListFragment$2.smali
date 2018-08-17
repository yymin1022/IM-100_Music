.class Lcom/pantech/app/music/library/ListFragment$2;
.super Ljava/lang/Object;
.source "ListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/app/music/library/ListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/music/library/ListFragment;


# direct methods
.method constructor <init>(Lcom/pantech/app/music/library/ListFragment;)V
    .registers 2

    .prologue
    .line 240
    iput-object p1, p0, Lcom/pantech/app/music/library/ListFragment$2;->this$0:Lcom/pantech/app/music/library/ListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 243
    sget-object v1, Lcom/pantech/app/music/library/ListFragment$17;->$SwitchMap$com$pantech$app$music$library$FragmentInfo$Category:[I

    iget-object v2, p0, Lcom/pantech/app/music/library/ListFragment$2;->this$0:Lcom/pantech/app/music/library/ListFragment;

    iget-object v2, v2, Lcom/pantech/app/music/library/ListFragment;->mFragmentInfo:Lcom/pantech/app/music/library/FragmentInfo;

    invoke-virtual {v2}, Lcom/pantech/app/music/library/FragmentInfo;->getCategory()Lcom/pantech/app/music/library/FragmentInfo$Category;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pantech/app/music/library/FragmentInfo$Category;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_3c

    .line 252
    :goto_13
    return-void

    .line 245
    :pswitch_14
    new-instance v0, Lcom/pantech/app/music/library/helper/PlaylistHelper;

    iget-object v1, p0, Lcom/pantech/app/music/library/ListFragment$2;->this$0:Lcom/pantech/app/music/library/ListFragment;

    invoke-virtual {v1}, Lcom/pantech/app/music/library/ListFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/pantech/app/music/library/helper/PlaylistHelper;-><init>(Landroid/content/Context;)V

    .line 246
    .local v0, "helper":Lcom/pantech/app/music/library/helper/PlaylistHelper;
    const-wide/16 v2, -0x1

    const v1, 0x7f080045

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v1, v4}, Lcom/pantech/app/music/library/helper/PlaylistHelper;->showPlayListEditDialog(JILcom/pantech/app/music/library/helper/PlaylistHelper$OnListener;)V

    goto :goto_13

    .line 249
    .end local v0    # "helper":Lcom/pantech/app/music/library/helper/PlaylistHelper;
    :pswitch_29
    iget-object v1, p0, Lcom/pantech/app/music/library/ListFragment$2;->this$0:Lcom/pantech/app/music/library/ListFragment;

    invoke-virtual {v1}, Lcom/pantech/app/music/library/ListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/music/library/ListFragment$2;->this$0:Lcom/pantech/app/music/library/ListFragment;

    iget-object v2, v2, Lcom/pantech/app/music/library/ListFragment;->mFragmentInfo:Lcom/pantech/app/music/library/FragmentInfo;

    invoke-virtual {v2}, Lcom/pantech/app/music/library/FragmentInfo;->getGroupID()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/pantech/app/music/utils/IntentUtils;->gotoSelectList(Landroid/app/Activity;J)V

    goto :goto_13

    .line 243
    nop

    :pswitch_data_3c
    .packed-switch 0x2
        :pswitch_14
        :pswitch_29
    .end packed-switch
.end method
