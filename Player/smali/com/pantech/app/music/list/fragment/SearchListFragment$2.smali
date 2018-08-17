.class Lcom/pantech/app/music/list/fragment/SearchListFragment$2;
.super Ljava/lang/Object;
.source "SearchListFragment.java"

# interfaces
.implements Landroid/widget/SearchView$OnCloseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/music/list/fragment/SearchListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/music/list/fragment/SearchListFragment;


# direct methods
.method constructor <init>(Lcom/pantech/app/music/list/fragment/SearchListFragment;)V
    .registers 2

    .prologue
    .line 317
    iput-object p1, p0, Lcom/pantech/app/music/list/fragment/SearchListFragment$2;->this$0:Lcom/pantech/app/music/list/fragment/SearchListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClose()Z
    .registers 2

    .prologue
    .line 321
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/SearchListFragment$2;->this$0:Lcom/pantech/app/music/list/fragment/SearchListFragment;

    iget-object v0, v0, Lcom/pantech/app/music/list/fragment/SearchListFragment;->mCloseListener:Landroid/widget/SearchView$OnCloseListener;

    if-eqz v0, :cond_f

    .line 322
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/SearchListFragment$2;->this$0:Lcom/pantech/app/music/list/fragment/SearchListFragment;

    iget-object v0, v0, Lcom/pantech/app/music/list/fragment/SearchListFragment;->mCloseListener:Landroid/widget/SearchView$OnCloseListener;

    invoke-interface {v0}, Landroid/widget/SearchView$OnCloseListener;->onClose()Z

    move-result v0

    .line 324
    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method
