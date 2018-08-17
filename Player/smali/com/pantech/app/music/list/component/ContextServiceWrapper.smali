.class public Lcom/pantech/app/music/list/component/ContextServiceWrapper;
.super Ljava/lang/Object;
.source "ContextServiceWrapper.java"

# interfaces
.implements Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;


# instance fields
.field mActivityRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field mServiceRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/pantech/app/music/service/IMusicPlaybackService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/pantech/app/music/service/IMusicPlaybackService;)V
    .registers 4
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "IService"    # Lcom/pantech/app/music/service/IMusicPlaybackService;

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/pantech/app/music/list/component/ContextServiceWrapper;->mActivityRef:Ljava/lang/ref/WeakReference;

    .line 18
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/pantech/app/music/list/component/ContextServiceWrapper;->mServiceRef:Ljava/lang/ref/WeakReference;

    .line 19
    return-void
.end method


# virtual methods
.method public getActivity()Landroid/app/Activity;
    .registers 2

    .prologue
    .line 25
    iget-object v0, p0, Lcom/pantech/app/music/list/component/ContextServiceWrapper;->mActivityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    return-object v0
.end method

.method public getService()Lcom/pantech/app/music/service/IMusicPlaybackService;
    .registers 2

    .prologue
    .line 32
    iget-object v0, p0, Lcom/pantech/app/music/list/component/ContextServiceWrapper;->mServiceRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/music/service/IMusicPlaybackService;

    return-object v0
.end method
