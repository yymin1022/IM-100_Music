.class Lcom/pantech/app/music/list/component/view/AnimImageView$AnimHandler;
.super Landroid/os/Handler;
.source "AnimImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/music/list/component/view/AnimImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AnimHandler"
.end annotation


# instance fields
.field reference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/pantech/app/music/list/component/view/AnimImageView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/pantech/app/music/list/component/view/AnimImageView;)V
    .registers 3
    .param p1, "view"    # Lcom/pantech/app/music/list/component/view/AnimImageView;

    .prologue
    .line 173
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 174
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/pantech/app/music/list/component/view/AnimImageView$AnimHandler;->reference:Ljava/lang/ref/WeakReference;

    .line 175
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 179
    iget-object v1, p0, Lcom/pantech/app/music/list/component/view/AnimImageView$AnimHandler;->reference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/music/list/component/view/AnimImageView;

    .line 180
    .local v0, "animImageView":Lcom/pantech/app/music/list/component/view/AnimImageView;
    if-eqz v0, :cond_d

    .line 181
    invoke-static {v0, p1}, Lcom/pantech/app/music/list/component/view/AnimImageView;->access$000(Lcom/pantech/app/music/list/component/view/AnimImageView;Landroid/os/Message;)V

    .line 183
    :cond_d
    return-void
.end method
