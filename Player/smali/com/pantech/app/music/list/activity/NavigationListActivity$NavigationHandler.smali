.class Lcom/pantech/app/music/list/activity/NavigationListActivity$NavigationHandler;
.super Lcom/pantech/app/music/list/activity/BaseListActivity$MainHandler;
.source "NavigationListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/music/list/activity/NavigationListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "NavigationHandler"
.end annotation


# static fields
.field private static final MSG_NAVIGATION_BASE:I = 0x3

.field public static final MSG_ON_PAGE_CHANGED:I = 0x4


# instance fields
.field final synthetic this$0:Lcom/pantech/app/music/list/activity/NavigationListActivity;


# direct methods
.method constructor <init>(Lcom/pantech/app/music/list/activity/NavigationListActivity;)V
    .registers 2

    .prologue
    .line 553
    iput-object p1, p0, Lcom/pantech/app/music/list/activity/NavigationListActivity$NavigationHandler;->this$0:Lcom/pantech/app/music/list/activity/NavigationListActivity;

    invoke-direct {p0, p1}, Lcom/pantech/app/music/list/activity/BaseListActivity$MainHandler;-><init>(Lcom/pantech/app/music/list/activity/BaseListActivity;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 561
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_3e

    .line 584
    :cond_5
    :goto_5
    invoke-super {p0, p1}, Lcom/pantech/app/music/list/activity/BaseListActivity$MainHandler;->handleMessage(Landroid/os/Message;)V

    .line 585
    return-void

    .line 564
    :pswitch_9
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v2, :cond_5

    .line 566
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/app/Fragment;

    .line 568
    .local v0, "fragment":Landroid/app/Fragment;
    invoke-virtual {v0}, Landroid/app/Fragment;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 570
    iget-object v2, p0, Lcom/pantech/app/music/list/activity/NavigationListActivity$NavigationHandler;->this$0:Lcom/pantech/app/music/list/activity/NavigationListActivity;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-static {v2, v3}, Lcom/pantech/app/music/list/activity/NavigationListActivity;->access$000(Lcom/pantech/app/music/list/activity/NavigationListActivity;I)Z

    goto :goto_5

    .line 574
    :cond_1f
    const-string v2, "VMusicNavi"

    const-string v3, "MSG_ON_PAGE_CHANGED >> fragment isn\'t visible yet. retry"

    invoke-static {v2, v3}, Lcom/pantech/app/music/utils/MLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 575
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 576
    .local v1, "msg2":Landroid/os/Message;
    iget v2, p1, Landroid/os/Message;->what:I

    iput v2, v1, Landroid/os/Message;->what:I

    .line 577
    iget v2, p1, Landroid/os/Message;->arg1:I

    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 578
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 579
    const-wide/16 v2, 0x1f4

    invoke-virtual {p0, v1, v2, v3}, Lcom/pantech/app/music/list/activity/NavigationListActivity$NavigationHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_5

    .line 561
    nop

    :pswitch_data_3e
    .packed-switch 0x4
        :pswitch_9
    .end packed-switch
.end method
