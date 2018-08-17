.class public Lcom/pantech/app/music/list/module/InvalidateEmptyPage;
.super Ljava/lang/Object;
.source "InvalidateEmptyPage.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field mBackupFlagIsCursorEmpty:Z

.field mFragmentRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/pantech/app/music/list/fragment/absBaseFragment;",
            ">;"
        }
    .end annotation
.end field

.field mPageInfo:Lcom/pantech/app/music/list/PageInfoType;


# direct methods
.method public constructor <init>(Lcom/pantech/app/music/list/fragment/absBaseFragment;Lcom/pantech/app/music/list/PageInfoType;)V
    .registers 5
    .param p1, "fragment"    # Lcom/pantech/app/music/list/fragment/absBaseFragment;
    .param p2, "pageInfo"    # Lcom/pantech/app/music/list/PageInfoType;

    .prologue
    const/4 v1, 0x0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-boolean v1, p0, Lcom/pantech/app/music/list/module/InvalidateEmptyPage;->mBackupFlagIsCursorEmpty:Z

    .line 32
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/pantech/app/music/list/module/InvalidateEmptyPage;->mFragmentRef:Ljava/lang/ref/WeakReference;

    .line 33
    iput-object p2, p0, Lcom/pantech/app/music/list/module/InvalidateEmptyPage;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    .line 34
    iput-boolean v1, p0, Lcom/pantech/app/music/list/module/InvalidateEmptyPage;->mBackupFlagIsCursorEmpty:Z

    .line 35
    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 41
    iget-object v2, p0, Lcom/pantech/app/music/list/module/InvalidateEmptyPage;->mFragmentRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pantech/app/music/list/fragment/absBaseFragment;

    invoke-virtual {v2}, Lcom/pantech/app/music/list/fragment/absBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    if-nez v2, :cond_10

    .line 79
    :goto_f
    return-void

    .line 44
    :cond_10
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onViewHierachyChanged // InvalidateEmptyPage "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, p0, Lcom/pantech/app/music/list/module/InvalidateEmptyPage;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    if-nez v2, :cond_dc

    const-string v2, ""

    :goto_21
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/pantech/app/music/utils/MLog;->i(Ljava/lang/String;)V

    .line 46
    iget-object v2, p0, Lcom/pantech/app/music/list/module/InvalidateEmptyPage;->mFragmentRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pantech/app/music/list/fragment/absBaseFragment;

    invoke-virtual {v2}, Lcom/pantech/app/music/list/fragment/absBaseFragment;->getIAdapter()Lcom/pantech/app/music/list/adapter/IAdapterCommon;

    move-result-object v2

    invoke-interface {v2}, Lcom/pantech/app/music/list/adapter/IAdapterCommon;->cmGetCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 47
    .local v0, "cursor":Landroid/database/Cursor;
    invoke-static {v0}, Lcom/pantech/app/music/list/utility/ListUtil;->isEmptyCursor(Landroid/database/Cursor;)Z

    move-result v1

    .line 49
    .local v1, "isEmptyCursor":Z
    const-string v2, "#####################################"

    invoke-static {v2}, Lcom/pantech/app/music/utils/MLog;->w(Ljava/lang/String;)V

    .line 50
    const-string v2, "#######  InvalidateEmptyPage  #######"

    invoke-static {v2}, Lcom/pantech/app/music/utils/MLog;->w(Ljava/lang/String;)V

    .line 51
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "#######     "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-nez v0, :cond_e4

    move v2, v3

    :goto_58
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "     #######"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/pantech/app/music/utils/MLog;->w(Ljava/lang/String;)V

    .line 52
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "#######     "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/pantech/app/music/list/module/InvalidateEmptyPage;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "     #######"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/pantech/app/music/utils/MLog;->w(Ljava/lang/String;)V

    .line 53
    const-string v2, "#####################################"

    invoke-static {v2}, Lcom/pantech/app/music/utils/MLog;->w(Ljava/lang/String;)V

    .line 56
    iget-object v2, p0, Lcom/pantech/app/music/list/module/InvalidateEmptyPage;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v2}, Lcom/pantech/app/music/list/PageInfoType;->getCategoryType()Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->isSearch()Z

    move-result v2

    if-eqz v2, :cond_ea

    if-eqz v0, :cond_b0

    iget-object v2, p0, Lcom/pantech/app/music/list/module/InvalidateEmptyPage;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v2}, Lcom/pantech/app/music/list/PageInfoType;->getExtraValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_ea

    .line 57
    :cond_b0
    iget-object v2, p0, Lcom/pantech/app/music/list/module/InvalidateEmptyPage;->mFragmentRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pantech/app/music/list/fragment/absBaseFragment;

    invoke-virtual {v2, v3}, Lcom/pantech/app/music/list/fragment/absBaseFragment;->drawNoContentsPage(Z)V

    .line 66
    :goto_bb
    if-nez v1, :cond_c4

    iget-boolean v2, p0, Lcom/pantech/app/music/list/module/InvalidateEmptyPage;->mBackupFlagIsCursorEmpty:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_d8

    if-nez v1, :cond_d8

    .line 68
    :cond_c4
    const-string v2, "Invalidate Options Menu"

    invoke-static {v2}, Lcom/pantech/app/music/utils/MLog;->i(Ljava/lang/String;)V

    .line 69
    iget-object v2, p0, Lcom/pantech/app/music/list/module/InvalidateEmptyPage;->mFragmentRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pantech/app/music/list/fragment/absBaseFragment;

    invoke-virtual {v2}, Lcom/pantech/app/music/list/fragment/absBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 78
    :cond_d8
    iput-boolean v1, p0, Lcom/pantech/app/music/list/module/InvalidateEmptyPage;->mBackupFlagIsCursorEmpty:Z

    goto/16 :goto_f

    .line 44
    .end local v0    # "cursor":Landroid/database/Cursor;
    .end local v1    # "isEmptyCursor":Z
    :cond_dc
    iget-object v2, p0, Lcom/pantech/app/music/list/module/InvalidateEmptyPage;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v2}, Lcom/pantech/app/music/list/PageInfoType;->getCategoryType()Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    move-result-object v2

    goto/16 :goto_21

    .line 51
    .restart local v0    # "cursor":Landroid/database/Cursor;
    .restart local v1    # "isEmptyCursor":Z
    :cond_e4
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    goto/16 :goto_58

    .line 59
    :cond_ea
    iget-object v2, p0, Lcom/pantech/app/music/list/module/InvalidateEmptyPage;->mFragmentRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pantech/app/music/list/fragment/absBaseFragment;

    invoke-virtual {v2, v1}, Lcom/pantech/app/music/list/fragment/absBaseFragment;->drawNoContentsPage(Z)V

    goto :goto_bb
.end method
