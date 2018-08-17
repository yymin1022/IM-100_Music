.class Lcom/pantech/app/music/list/listener/MusicListCallbackRegister$4;
.super Ljava/lang/Object;
.source "MusicListCallbackRegister.java"

# interfaces
.implements Landroid/view/ViewGroup$OnHierarchyChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/app/music/list/listener/MusicListCallbackRegister;->registerViewHierachyChangeListener(Landroid/widget/AbsListView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/music/list/listener/MusicListCallbackRegister;


# direct methods
.method constructor <init>(Lcom/pantech/app/music/list/listener/MusicListCallbackRegister;)V
    .registers 2

    .prologue
    .line 275
    iput-object p1, p0, Lcom/pantech/app/music/list/listener/MusicListCallbackRegister$4;->this$0:Lcom/pantech/app/music/list/listener/MusicListCallbackRegister;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChildViewAdded(Landroid/view/View;Landroid/view/View;)V
    .registers 5
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "child"    # Landroid/view/View;

    .prologue
    .line 287
    iget-object v0, p0, Lcom/pantech/app/music/list/listener/MusicListCallbackRegister$4;->this$0:Lcom/pantech/app/music/list/listener/MusicListCallbackRegister;

    invoke-static {v0}, Lcom/pantech/app/music/list/listener/MusicListCallbackRegister;->access$000(Lcom/pantech/app/music/list/listener/MusicListCallbackRegister;)Lcom/pantech/app/music/list/listener/IBroadcastCallback;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/music/list/fragment/IFragmentCommonCallback;

    const/4 v1, 0x1

    invoke-interface {v0, v1, p1, p2}, Lcom/pantech/app/music/list/fragment/IFragmentCommonCallback;->onViewHierachyChanged(ZLandroid/view/View;Landroid/view/View;)V

    .line 288
    return-void
.end method

.method public onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V
    .registers 5
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "child"    # Landroid/view/View;

    .prologue
    .line 280
    iget-object v0, p0, Lcom/pantech/app/music/list/listener/MusicListCallbackRegister$4;->this$0:Lcom/pantech/app/music/list/listener/MusicListCallbackRegister;

    invoke-static {v0}, Lcom/pantech/app/music/list/listener/MusicListCallbackRegister;->access$000(Lcom/pantech/app/music/list/listener/MusicListCallbackRegister;)Lcom/pantech/app/music/list/listener/IBroadcastCallback;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/music/list/fragment/IFragmentCommonCallback;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1, p2}, Lcom/pantech/app/music/list/fragment/IFragmentCommonCallback;->onViewHierachyChanged(ZLandroid/view/View;Landroid/view/View;)V

    .line 281
    return-void
.end method
