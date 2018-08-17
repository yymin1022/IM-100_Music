.class Lcom/pantech/app/music/library/activity/ListBaseActivity$ListHandler;
.super Landroid/os/Handler;
.source "ListBaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/music/library/activity/ListBaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ListHandler"
.end annotation


# instance fields
.field final reference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/pantech/app/music/library/activity/ListBaseActivity;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/pantech/app/music/library/activity/ListBaseActivity;


# direct methods
.method constructor <init>(Lcom/pantech/app/music/library/activity/ListBaseActivity;Lcom/pantech/app/music/library/activity/ListBaseActivity;)V
    .registers 4
    .param p2, "activity"    # Lcom/pantech/app/music/library/activity/ListBaseActivity;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/pantech/app/music/library/activity/ListBaseActivity$ListHandler;->this$0:Lcom/pantech/app/music/library/activity/ListBaseActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 62
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/pantech/app/music/library/activity/ListBaseActivity$ListHandler;->reference:Ljava/lang/ref/WeakReference;

    .line 63
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 67
    iget-object v1, p0, Lcom/pantech/app/music/library/activity/ListBaseActivity$ListHandler;->reference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/music/library/activity/ListBaseActivity;

    .line 68
    .local v0, "activity":Lcom/pantech/app/music/library/activity/ListBaseActivity;
    if-eqz v0, :cond_d

    .line 69
    invoke-virtual {v0, p1}, Lcom/pantech/app/music/library/activity/ListBaseActivity;->handleMessageForList(Landroid/os/Message;)V

    .line 71
    :cond_d
    return-void
.end method
