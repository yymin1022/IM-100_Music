.class Lcom/pantech/app/music/list/fragment/SearchListFragment$3;
.super Ljava/lang/Object;
.source "SearchListFragment.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


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
    .line 329
    iput-object p1, p0, Lcom/pantech/app/music/list/fragment/SearchListFragment$3;->this$0:Lcom/pantech/app/music/list/fragment/SearchListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .registers 8
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 333
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 336
    .local v0, "query":Ljava/lang/CharSequence;
    const/4 v2, 0x3

    if-eq p2, v2, :cond_f

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v3, 0x42

    if-ne v2, v3, :cond_4c

    :cond_f
    if-eqz v0, :cond_4c

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4c

    .line 339
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/pantech/app/music/list/utility/MusicLibraryUtils;->getTextString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 340
    .local v1, "searchKeyword":Ljava/lang/String;
    iget-object v2, p0, Lcom/pantech/app/music/list/fragment/SearchListFragment$3;->this$0:Lcom/pantech/app/music/list/fragment/SearchListFragment;

    invoke-virtual {v2}, Lcom/pantech/app/music/list/fragment/SearchListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/pantech/app/music/list/fragment/SearchListFragment$3;->this$0:Lcom/pantech/app/music/list/fragment/SearchListFragment;

    invoke-static {v3}, Lcom/pantech/app/music/list/fragment/SearchListFragment;->access$000(Lcom/pantech/app/music/list/fragment/SearchListFragment;)Landroid/net/Uri;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/pantech/app/music/db/SearchHistoryManager;->checkAndUpdateHistoryKeyword(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)V

    .line 342
    iget-object v2, p0, Lcom/pantech/app/music/list/fragment/SearchListFragment$3;->this$0:Lcom/pantech/app/music/list/fragment/SearchListFragment;

    invoke-static {v2}, Lcom/pantech/app/music/list/fragment/SearchListFragment;->access$100(Lcom/pantech/app/music/list/fragment/SearchListFragment;)V

    .line 345
    iget-object v2, p0, Lcom/pantech/app/music/list/fragment/SearchListFragment$3;->this$0:Lcom/pantech/app/music/list/fragment/SearchListFragment;

    iget-object v3, p0, Lcom/pantech/app/music/list/fragment/SearchListFragment$3;->this$0:Lcom/pantech/app/music/list/fragment/SearchListFragment;

    iget v3, v3, Lcom/pantech/app/music/list/fragment/SearchListFragment;->mSearchType:I

    invoke-static {v2, v3}, Lcom/pantech/app/music/list/fragment/SearchListFragment;->access$200(Lcom/pantech/app/music/list/fragment/SearchListFragment;I)Landroid/widget/SearchView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/SearchView;->clearFocus()V

    .line 347
    const/4 v2, 0x1

    .line 350
    .end local v1    # "searchKeyword":Ljava/lang/String;
    :goto_4b
    return v2

    :cond_4c
    const/4 v2, 0x0

    goto :goto_4b
.end method
