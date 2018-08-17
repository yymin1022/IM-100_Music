.class Lcom/pantech/app/music/list/fragment/SearchListFragment$5;
.super Ljava/lang/Object;
.source "SearchListFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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
    .line 481
    iput-object p1, p0, Lcom/pantech/app/music/list/fragment/SearchListFragment$5;->this$0:Lcom/pantech/app/music/list/fragment/SearchListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 12
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 486
    .local p1, "listview":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v4, p0, Lcom/pantech/app/music/list/fragment/SearchListFragment$5;->this$0:Lcom/pantech/app/music/list/fragment/SearchListFragment;

    iget-object v4, v4, Lcom/pantech/app/music/list/fragment/SearchListFragment;->mSeachHistoryAdapter:Lcom/pantech/app/music/list/adapter/SearchHistoryAdapter;

    iget-object v5, p0, Lcom/pantech/app/music/list/fragment/SearchListFragment$5;->this$0:Lcom/pantech/app/music/list/fragment/SearchListFragment;

    iget-object v5, v5, Lcom/pantech/app/music/list/fragment/SearchListFragment;->mSeachHistoryListView:Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v5

    sub-int v5, p3, v5

    invoke-virtual {v4, v5}, Lcom/pantech/app/music/list/adapter/SearchHistoryAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 487
    .local v0, "cursor":Landroid/database/Cursor;
    const-string v4, "search_word"

    invoke-static {v0, v4}, Lcom/pantech/app/music/list/db/CursorUtils;->getCursorString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 490
    .local v1, "searchKeyword":Ljava/lang/String;
    const-string v4, "_id"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 491
    .local v2, "updateItemId":J
    iget-object v4, p0, Lcom/pantech/app/music/list/fragment/SearchListFragment$5;->this$0:Lcom/pantech/app/music/list/fragment/SearchListFragment;

    invoke-virtual {v4}, Lcom/pantech/app/music/list/fragment/SearchListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    iget-object v5, p0, Lcom/pantech/app/music/list/fragment/SearchListFragment$5;->this$0:Lcom/pantech/app/music/list/fragment/SearchListFragment;

    invoke-static {v5}, Lcom/pantech/app/music/list/fragment/SearchListFragment;->access$000(Lcom/pantech/app/music/list/fragment/SearchListFragment;)Landroid/net/Uri;

    move-result-object v5

    invoke-static {v4, v5, v2, v3}, Lcom/pantech/app/music/db/SearchHistoryManager;->updateHistoryDate(Landroid/content/Context;Landroid/net/Uri;J)I

    .line 493
    iget-object v4, p0, Lcom/pantech/app/music/list/fragment/SearchListFragment$5;->this$0:Lcom/pantech/app/music/list/fragment/SearchListFragment;

    invoke-static {v4, v1}, Lcom/pantech/app/music/list/fragment/SearchListFragment;->access$300(Lcom/pantech/app/music/list/fragment/SearchListFragment;Ljava/lang/String;)V

    .line 495
    iget-object v4, p0, Lcom/pantech/app/music/list/fragment/SearchListFragment$5;->this$0:Lcom/pantech/app/music/list/fragment/SearchListFragment;

    invoke-static {v4}, Lcom/pantech/app/music/list/fragment/SearchListFragment;->access$100(Lcom/pantech/app/music/list/fragment/SearchListFragment;)V

    .line 496
    return-void
.end method
