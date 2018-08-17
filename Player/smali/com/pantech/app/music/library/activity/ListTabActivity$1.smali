.class Lcom/pantech/app/music/library/activity/ListTabActivity$1;
.super Ljava/lang/Object;
.source "ListTabActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/app/music/library/activity/ListTabActivity;->attachFragment(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/music/library/activity/ListTabActivity;


# direct methods
.method constructor <init>(Lcom/pantech/app/music/library/activity/ListTabActivity;)V
    .registers 2

    .prologue
    .line 213
    iput-object p1, p0, Lcom/pantech/app/music/library/activity/ListTabActivity$1;->this$0:Lcom/pantech/app/music/library/activity/ListTabActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 216
    iget-object v0, p0, Lcom/pantech/app/music/library/activity/ListTabActivity$1;->this$0:Lcom/pantech/app/music/library/activity/ListTabActivity;

    invoke-virtual {v0}, Lcom/pantech/app/music/library/activity/ListTabActivity;->getFragment()Lcom/pantech/app/music/library/IListFragment;

    move-result-object v0

    invoke-interface {v0}, Lcom/pantech/app/music/library/IListFragment;->onBubbleTipDummyLayoutTouched()V

    .line 217
    const/4 v0, 0x0

    return v0
.end method
