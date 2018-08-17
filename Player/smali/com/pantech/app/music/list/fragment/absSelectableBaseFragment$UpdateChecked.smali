.class public Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment$UpdateChecked;
.super Ljava/lang/Object;
.source "absSelectableBaseFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "UpdateChecked"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;


# direct methods
.method public constructor <init>(Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;)V
    .registers 2

    .prologue
    .line 1020
    iput-object p1, p0, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment$UpdateChecked;->this$0:Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 1026
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment$UpdateChecked;->this$0:Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;

    iget-object v0, v0, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->mFlag:Lcom/pantech/app/music/list/component/SmartFalg;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/pantech/app/music/list/component/SmartFalg;->check(I)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 1028
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment$UpdateChecked;->this$0:Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;

    iget-object v0, v0, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->mListHandler:Lcom/pantech/app/music/list/fragment/FragmentMainHandler;

    iget-object v1, p0, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment$UpdateChecked;->this$0:Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;

    iget-object v1, v1, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->mUpdateChecked:Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment$UpdateChecked;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Lcom/pantech/app/music/list/fragment/FragmentMainHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1049
    :goto_18
    return-void

    .line 1032
    :cond_19
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment$UpdateChecked;->this$0:Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->invalidateFragment(Z)V

    .line 1038
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment$CalcSelectInfo;

    iget-object v2, p0, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment$UpdateChecked;->this$0:Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;

    new-instance v3, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment$UpdateChecked$1;

    invoke-direct {v3, p0}, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment$UpdateChecked$1;-><init>(Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment$UpdateChecked;)V

    invoke-direct {v1, v2, v3}, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment$CalcSelectInfo;-><init>(Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment$CalcSelectInfoCallback;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_18
.end method
