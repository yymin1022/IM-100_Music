.class public Lcom/pantech/app/music/list/component/view/ArrangeListViewExt;
.super Lcom/pantech/app/music/list/component/view/ArrangeListView;
.source "ArrangeListViewExt.java"


# instance fields
.field mCursorLock:Ljava/lang/Object;

.field mListCategory:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Lcom/pantech/app/music/list/component/view/ArrangeListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 13
    sget-object v0, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_SONG:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    iput-object v0, p0, Lcom/pantech/app/music/list/component/view/ArrangeListViewExt;->mListCategory:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    .line 14
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/pantech/app/music/list/component/view/ArrangeListViewExt;->mCursorLock:Ljava/lang/Object;

    .line 18
    return-void
.end method

.method private processChangeCursor(Landroid/widget/CursorAdapter;Landroid/database/Cursor;)V
    .registers 5
    .param p1, "adapter"    # Landroid/widget/CursorAdapter;
    .param p2, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 104
    invoke-virtual {p0}, Lcom/pantech/app/music/list/component/view/ArrangeListViewExt;->getListCategory()Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    move-result-object v0

    sget-object v1, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_PLAYLIST_SONG:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    if-eq v0, v1, :cond_10

    invoke-virtual {p0}, Lcom/pantech/app/music/list/component/view/ArrangeListViewExt;->getListCategory()Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    move-result-object v0

    sget-object v1, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_UBOX_PLAYLIST_SONG:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    if-ne v0, v1, :cond_1a

    .line 106
    :cond_10
    iget-object v0, p0, Lcom/pantech/app/music/list/component/view/ArrangeListViewExt;->mCursorLock:Ljava/lang/Object;

    invoke-static {p2, v0}, Lcom/pantech/app/music/list/db/CursorUtils;->CopyCursor(Landroid/database/Cursor;Ljava/lang/Object;)Landroid/database/Cursor;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/CursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 111
    :goto_19
    return-void

    .line 108
    :cond_1a
    invoke-virtual {p1, p2}, Landroid/widget/CursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    goto :goto_19
.end method


# virtual methods
.method protected changeAdapter(II)V
    .registers 8
    .param p1, "from"    # I
    .param p2, "dest"    # I

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/pantech/app/music/list/component/view/ArrangeListViewExt;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/CursorAdapter;

    .line 36
    .local v0, "adapter":Landroid/widget/CursorAdapter;
    if-eqz v0, :cond_2a

    .line 37
    iget-object v3, p0, Lcom/pantech/app/music/list/component/view/ArrangeListViewExt;->mCursorLock:Ljava/lang/Object;

    monitor-enter v3

    .line 38
    :try_start_b
    iget-object v2, p0, Lcom/pantech/app/music/list/component/view/ArrangeListViewExt;->m_BackupCursor:Lcom/pantech/app/music/common/ArrayListCursor;

    const/4 v4, 0x0

    invoke-static {v2, v4}, Lcom/pantech/app/music/list/db/CursorUtils;->CopyCursor(Landroid/database/Cursor;Ljava/lang/Object;)Landroid/database/Cursor;

    move-result-object v1

    check-cast v1, Lcom/pantech/app/music/common/ArrayListCursor;

    .line 40
    .local v1, "c":Lcom/pantech/app/music/common/ArrayListCursor;
    if-eqz v1, :cond_29

    .line 41
    invoke-virtual {v1, p1, p2}, Lcom/pantech/app/music/common/ArrayListCursor;->ExchangeForRearrange(II)Z

    .line 42
    invoke-virtual {v0, v1}, Landroid/widget/CursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 44
    iget-boolean v2, p0, Lcom/pantech/app/music/list/component/view/ArrangeListViewExt;->changeFlag:Z

    if-eqz v2, :cond_29

    .line 45
    if-lt p1, p2, :cond_2b

    sget v2, Lcom/pantech/app/music/list/component/view/ArrangeListViewExt;->HALF_HEIGHT:I

    :goto_24
    iput v2, p0, Lcom/pantech/app/music/list/component/view/ArrangeListViewExt;->mItemHeightHalf:I

    .line 46
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/pantech/app/music/list/component/view/ArrangeListViewExt;->changeFlag:Z

    .line 49
    :cond_29
    monitor-exit v3

    .line 51
    .end local v1    # "c":Lcom/pantech/app/music/common/ArrayListCursor;
    :cond_2a
    return-void

    .line 45
    .restart local v1    # "c":Lcom/pantech/app/music/common/ArrayListCursor;
    :cond_2b
    const/16 v2, -0x14

    goto :goto_24

    .line 49
    .end local v1    # "c":Lcom/pantech/app/music/common/ArrayListCursor;
    :catchall_2e
    move-exception v2

    monitor-exit v3
    :try_end_30
    .catchall {:try_start_b .. :try_end_30} :catchall_2e

    throw v2
.end method

.method protected changeAdapterForDelete(I)V
    .registers 7
    .param p1, "pos"    # I

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/pantech/app/music/list/component/view/ArrangeListViewExt;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/CursorAdapter;

    .line 56
    .local v0, "adapter":Landroid/widget/CursorAdapter;
    if-eqz v0, :cond_1d

    .line 57
    iget-object v3, p0, Lcom/pantech/app/music/list/component/view/ArrangeListViewExt;->mCursorLock:Ljava/lang/Object;

    monitor-enter v3

    .line 58
    :try_start_b
    iget-object v2, p0, Lcom/pantech/app/music/list/component/view/ArrangeListViewExt;->m_BackupCursor:Lcom/pantech/app/music/common/ArrayListCursor;

    const/4 v4, 0x0

    invoke-static {v2, v4}, Lcom/pantech/app/music/list/db/CursorUtils;->CopyCursor(Landroid/database/Cursor;Ljava/lang/Object;)Landroid/database/Cursor;

    move-result-object v1

    check-cast v1, Lcom/pantech/app/music/common/ArrayListCursor;

    .line 59
    .local v1, "c":Lcom/pantech/app/music/common/ArrayListCursor;
    if-eqz v1, :cond_1c

    .line 60
    invoke-virtual {v1, p1}, Lcom/pantech/app/music/common/ArrayListCursor;->Delete(I)Z

    .line 61
    invoke-direct {p0, v0, v1}, Lcom/pantech/app/music/list/component/view/ArrangeListViewExt;->processChangeCursor(Landroid/widget/CursorAdapter;Landroid/database/Cursor;)V

    .line 63
    :cond_1c
    monitor-exit v3

    .line 65
    .end local v1    # "c":Lcom/pantech/app/music/common/ArrayListCursor;
    :cond_1d
    return-void

    .line 63
    :catchall_1e
    move-exception v2

    monitor-exit v3
    :try_end_20
    .catchall {:try_start_b .. :try_end_20} :catchall_1e

    throw v2
.end method

.method public getListCategory()Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;
    .registers 2

    .prologue
    .line 25
    iget-object v0, p0, Lcom/pantech/app/music/list/component/view/ArrangeListViewExt;->mListCategory:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    return-object v0
.end method

.method protected initListForMove()V
    .registers 2

    .prologue
    .line 30
    invoke-virtual {p0}, Lcom/pantech/app/music/list/component/view/ArrangeListViewExt;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/CursorAdapter;

    invoke-virtual {v0}, Landroid/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/music/common/ArrayListCursor;

    iput-object v0, p0, Lcom/pantech/app/music/list/component/view/ArrangeListViewExt;->m_BackupCursor:Lcom/pantech/app/music/common/ArrayListCursor;

    .line 31
    return-void
.end method

.method public setListCategory(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;)V
    .registers 2
    .param p1, "category"    # Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    .prologue
    .line 21
    iput-object p1, p0, Lcom/pantech/app/music/list/component/view/ArrangeListViewExt;->mListCategory:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    .line 22
    return-void
.end method
