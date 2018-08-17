.class Lcom/pantech/app/music/library/ListFragment$8;
.super Ljava/lang/Object;
.source "ListFragment.java"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/app/music/library/ListFragment;->showCategoryActionMenu(Landroid/view/View;Ljava/util/ArrayList;)V
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
    .line 769
    iput-object p1, p0, Lcom/pantech/app/music/library/ListFragment$8;->this$0:Lcom/pantech/app/music/library/ListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .registers 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 772
    iget-object v0, p0, Lcom/pantech/app/music/library/ListFragment$8;->this$0:Lcom/pantech/app/music/library/ListFragment;

    iget-object v0, v0, Lcom/pantech/app/music/library/ListFragment;->iListActivity:Lcom/pantech/app/music/library/IListActivity;

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/pantech/app/music/library/IListActivity;->requestViewPagerPosition(I)V

    .line 773
    const/4 v0, 0x1

    return v0
.end method
