.class Lcom/pantech/app/music/list/fragment/SearchListFragment$4;
.super Ljava/lang/Object;
.source "SearchListFragment.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/app/music/list/fragment/SearchListFragment;->setListAdapter(Landroid/view/View;)V
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
    .line 461
    iput-object p1, p0, Lcom/pantech/app/music/list/fragment/SearchListFragment$4;->this$0:Lcom/pantech/app/music/list/fragment/SearchListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .registers 5
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 477
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .registers 5
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 466
    const/4 v0, 0x1

    if-ne p2, v0, :cond_f

    .line 468
    const-string v0, "VMusicSearchTag"

    const-string v1, "onScrollStateChanged: TOUCH SCROLL >> Hide IME"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 469
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/SearchListFragment$4;->this$0:Lcom/pantech/app/music/list/fragment/SearchListFragment;

    invoke-static {v0}, Lcom/pantech/app/music/list/fragment/SearchListFragment;->access$100(Lcom/pantech/app/music/list/fragment/SearchListFragment;)V

    .line 471
    :cond_f
    return-void
.end method
