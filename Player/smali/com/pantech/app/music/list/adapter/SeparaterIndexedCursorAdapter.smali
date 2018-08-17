.class public Lcom/pantech/app/music/list/adapter/SeparaterIndexedCursorAdapter;
.super Landroid/support/v4/widget/CursorAdapter;
.source "SeparaterIndexedCursorAdapter.java"

# interfaces
.implements Lcom/pantech/app/music/list/adapter/helper/Indexbar$IndexChangedListener;
.implements Lcom/pantech/app/music/list/adapter/IAdapterCommon;


# static fields
.field static final TAG:Ljava/lang/String; = "VMusicAdapterIndex"


# instance fields
.field mAdapterBinderHelper:Lcom/pantech/app/music/list/adapter/helper/AdapterBindHelper;

.field protected mContext:Landroid/content/Context;

.field mCursorLock:Ljava/lang/Object;

.field mIndexSeparaterHelper:Lcom/pantech/app/music/list/adapter/helper/IndexSeparatorHelper;

.field mLayoutResId:I

.field mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

.field mViewInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/pantech/app/music/list/PageInfoType;ILcom/pantech/app/music/list/fragment/IFragmentCommon;Lcom/pantech/app/music/list/fragment/IFragmentCommonCallback;Ljava/lang/Object;)V
    .registers 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pageInfo"    # Lcom/pantech/app/music/list/PageInfoType;
    .param p3, "resID"    # I
    .param p4, "iface"    # Lcom/pantech/app/music/list/fragment/IFragmentCommon;
    .param p5, "callback"    # Lcom/pantech/app/music/list/fragment/IFragmentCommonCallback;
    .param p6, "cursorLock"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 51
    const/4 v0, 0x0

    invoke-direct {p0, p1, v1, v0}, Landroid/support/v4/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 34
    iput-object v1, p0, Lcom/pantech/app/music/list/adapter/SeparaterIndexedCursorAdapter;->mContext:Landroid/content/Context;

    .line 36
    iput-object v1, p0, Lcom/pantech/app/music/list/adapter/SeparaterIndexedCursorAdapter;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    .line 53
    iput-object p1, p0, Lcom/pantech/app/music/list/adapter/SeparaterIndexedCursorAdapter;->mContext:Landroid/content/Context;

    .line 55
    iput-object p2, p0, Lcom/pantech/app/music/list/adapter/SeparaterIndexedCursorAdapter;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    .line 57
    iput-object p6, p0, Lcom/pantech/app/music/list/adapter/SeparaterIndexedCursorAdapter;->mCursorLock:Ljava/lang/Object;

    .line 59
    new-instance v0, Lcom/pantech/app/music/list/adapter/helper/AdapterBindHelper;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/pantech/app/music/list/adapter/helper/AdapterBindHelper;-><init>(Landroid/content/Context;Lcom/pantech/app/music/list/PageInfoType;Lcom/pantech/app/music/list/fragment/IFragmentCommon;Lcom/pantech/app/music/list/fragment/IFragmentCommonCallback;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/pantech/app/music/list/adapter/SeparaterIndexedCursorAdapter;->mAdapterBinderHelper:Lcom/pantech/app/music/list/adapter/helper/AdapterBindHelper;

    .line 61
    iput p3, p0, Lcom/pantech/app/music/list/adapter/SeparaterIndexedCursorAdapter;->mLayoutResId:I

    .line 63
    iget-object v0, p0, Lcom/pantech/app/music/list/adapter/SeparaterIndexedCursorAdapter;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/pantech/app/music/list/adapter/SeparaterIndexedCursorAdapter;->mViewInflater:Landroid/view/LayoutInflater;

    .line 65
    new-instance v0, Lcom/pantech/app/music/list/adapter/helper/IndexSeparatorHelper;

    invoke-direct {v0, p1, p0, p6}, Lcom/pantech/app/music/list/adapter/helper/IndexSeparatorHelper;-><init>(Landroid/content/Context;Lcom/pantech/app/music/list/adapter/helper/Indexbar$IndexChangedListener;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/pantech/app/music/list/adapter/SeparaterIndexedCursorAdapter;->mIndexSeparaterHelper:Lcom/pantech/app/music/list/adapter/helper/IndexSeparatorHelper;

    .line 66
    return-void
.end method

.method private newView(I)Landroid/view/View;
    .registers 7
    .param p1, "viewType"    # I

    .prologue
    const/4 v3, 0x0

    .line 90
    const/4 v0, 0x0

    .line 92
    .local v0, "view":Landroid/view/View;
    packed-switch p1, :pswitch_data_30

    .line 107
    :goto_5
    return-object v0

    .line 95
    :pswitch_6
    iget-object v1, p0, Lcom/pantech/app/music/list/adapter/SeparaterIndexedCursorAdapter;->mViewInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f030074

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 97
    iget-object v1, p0, Lcom/pantech/app/music/list/adapter/SeparaterIndexedCursorAdapter;->mAdapterBinderHelper:Lcom/pantech/app/music/list/adapter/helper/AdapterBindHelper;

    sget-object v2, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewType;->SEPARATER_VIEW:Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewType;

    sget-object v3, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterBindType;->INDEXED:Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterBindType;

    iget-object v4, p0, Lcom/pantech/app/music/list/adapter/SeparaterIndexedCursorAdapter;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/pantech/app/music/list/adapter/helper/AdapterBindHelper;->newView(Landroid/view/View;Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewType;Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterBindType;Lcom/pantech/app/music/list/PageInfoType;)V

    goto :goto_5

    .line 101
    :pswitch_1b
    iget-object v1, p0, Lcom/pantech/app/music/list/adapter/SeparaterIndexedCursorAdapter;->mViewInflater:Landroid/view/LayoutInflater;

    iget v2, p0, Lcom/pantech/app/music/list/adapter/SeparaterIndexedCursorAdapter;->mLayoutResId:I

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 103
    iget-object v1, p0, Lcom/pantech/app/music/list/adapter/SeparaterIndexedCursorAdapter;->mAdapterBinderHelper:Lcom/pantech/app/music/list/adapter/helper/AdapterBindHelper;

    sget-object v2, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewType;->NORMAL_VIEW:Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewType;

    sget-object v3, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterBindType;->INDEXED:Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterBindType;

    iget-object v4, p0, Lcom/pantech/app/music/list/adapter/SeparaterIndexedCursorAdapter;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/pantech/app/music/list/adapter/helper/AdapterBindHelper;->newView(Landroid/view/View;Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewType;Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterBindType;Lcom/pantech/app/music/list/PageInfoType;)V

    goto :goto_5

    .line 92
    nop

    :pswitch_data_30
    .packed-switch 0x0
        :pswitch_1b
        :pswitch_6
    .end packed-switch
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .registers 2

    .prologue
    .line 349
    const/4 v0, 0x0

    return v0
.end method

.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 363
    return-void
.end method

.method public changeCursor(Landroid/database/Cursor;)V
    .registers 4
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 269
    if-nez p1, :cond_d

    .line 270
    iget-object v0, p0, Lcom/pantech/app/music/list/adapter/SeparaterIndexedCursorAdapter;->mIndexSeparaterHelper:Lcom/pantech/app/music/list/adapter/helper/IndexSeparatorHelper;

    iget-object v1, p0, Lcom/pantech/app/music/list/adapter/SeparaterIndexedCursorAdapter;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v1}, Lcom/pantech/app/music/list/PageInfoType;->getTitleColumn()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/pantech/app/music/list/adapter/helper/IndexSeparatorHelper;->buildIndexBarInformation(Landroid/database/Cursor;Ljava/lang/String;)V

    .line 272
    :cond_d
    invoke-super {p0, p1}, Landroid/support/v4/widget/CursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 273
    return-void
.end method

.method public cmChangeCursor(Landroid/database/Cursor;)V
    .registers 2
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 369
    invoke-virtual {p0, p1}, Lcom/pantech/app/music/list/adapter/SeparaterIndexedCursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 370
    return-void
.end method

.method public cmClearAll()V
    .registers 2

    .prologue
    .line 471
    iget-object v0, p0, Lcom/pantech/app/music/list/adapter/SeparaterIndexedCursorAdapter;->mIndexSeparaterHelper:Lcom/pantech/app/music/list/adapter/helper/IndexSeparatorHelper;

    invoke-virtual {v0}, Lcom/pantech/app/music/list/adapter/helper/IndexSeparatorHelper;->clearAll()V

    .line 473
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pantech/app/music/list/adapter/SeparaterIndexedCursorAdapter;->mViewInflater:Landroid/view/LayoutInflater;

    .line 474
    return-void
.end method

.method public cmGetCount()I
    .registers 2

    .prologue
    .line 430
    invoke-virtual {p0}, Lcom/pantech/app/music/list/adapter/SeparaterIndexedCursorAdapter;->getCount()I

    move-result v0

    return v0
.end method

.method public cmGetCursor()Landroid/database/Cursor;
    .registers 2

    .prologue
    .line 397
    invoke-virtual {p0}, Lcom/pantech/app/music/list/adapter/SeparaterIndexedCursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public cmGetCursorLock()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 404
    iget-object v0, p0, Lcom/pantech/app/music/list/adapter/SeparaterIndexedCursorAdapter;->mCursorLock:Ljava/lang/Object;

    return-object v0
.end method

.method public cmGetIndexBar()Lcom/pantech/app/music/list/adapter/helper/Indexbar;
    .registers 2

    .prologue
    .line 458
    iget-object v0, p0, Lcom/pantech/app/music/list/adapter/SeparaterIndexedCursorAdapter;->mIndexSeparaterHelper:Lcom/pantech/app/music/list/adapter/helper/IndexSeparatorHelper;

    invoke-virtual {v0}, Lcom/pantech/app/music/list/adapter/helper/IndexSeparatorHelper;->getIndexbar()Lcom/pantech/app/music/list/adapter/helper/Indexbar;

    move-result-object v0

    return-object v0
.end method

.method public cmGetIndexSeperaterHelper()Lcom/pantech/app/music/list/adapter/helper/IndexSeparatorHelper;
    .registers 2

    .prologue
    .line 465
    iget-object v0, p0, Lcom/pantech/app/music/list/adapter/SeparaterIndexedCursorAdapter;->mIndexSeparaterHelper:Lcom/pantech/app/music/list/adapter/helper/IndexSeparatorHelper;

    return-object v0
.end method

.method public cmGetItem(I)Landroid/database/Cursor;
    .registers 3
    .param p1, "viewPosition"    # I

    .prologue
    .line 444
    invoke-virtual {p0, p1}, Lcom/pantech/app/music/list/adapter/SeparaterIndexedCursorAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    return-object v0
.end method

.method public cmGetItemCount()I
    .registers 2

    .prologue
    .line 423
    invoke-virtual {p0}, Lcom/pantech/app/music/list/adapter/SeparaterIndexedCursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v0, -0x1

    :goto_7
    return v0

    :cond_8
    invoke-virtual {p0}, Lcom/pantech/app/music/list/adapter/SeparaterIndexedCursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    goto :goto_7
.end method

.method public cmGetItemPosition(I)I
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 417
    invoke-virtual {p0, p1}, Lcom/pantech/app/music/list/adapter/SeparaterIndexedCursorAdapter;->getCursorPosition(I)I

    move-result v0

    return v0
.end method

.method public cmGetPageInfo()Lcom/pantech/app/music/list/PageInfoType;
    .registers 2

    .prologue
    .line 376
    iget-object v0, p0, Lcom/pantech/app/music/list/adapter/SeparaterIndexedCursorAdapter;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    return-object v0
.end method

.method public cmGetViewPosition(I)I
    .registers 3
    .param p1, "cursorPosition"    # I

    .prologue
    .line 410
    invoke-virtual {p0, p1}, Lcom/pantech/app/music/list/adapter/SeparaterIndexedCursorAdapter;->getInternalPosition(I)I

    move-result v0

    return v0
.end method

.method public cmGetViewType(I)Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewType;
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 390
    invoke-virtual {p0, p1}, Lcom/pantech/app/music/list/adapter/SeparaterIndexedCursorAdapter;->getItemViewType(I)I

    move-result v0

    invoke-static {v0}, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewType;->fromOrdinal(I)Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewType;

    move-result-object v0

    return-object v0
.end method

.method public cmNotifyDataSetChanged()V
    .registers 1

    .prologue
    .line 437
    invoke-virtual {p0}, Lcom/pantech/app/music/list/adapter/SeparaterIndexedCursorAdapter;->notifyDataSetChanged()V

    .line 438
    return-void
.end method

.method public cmResetIndexbarPosition()V
    .registers 2

    .prologue
    .line 451
    invoke-virtual {p0}, Lcom/pantech/app/music/list/adapter/SeparaterIndexedCursorAdapter;->getIndexbar()Lcom/pantech/app/music/list/adapter/helper/Indexbar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->clearPosition()V

    .line 452
    return-void
.end method

.method public cmSetPageInfo(Lcom/pantech/app/music/list/PageInfoType;)V
    .registers 2
    .param p1, "pageInfo"    # Lcom/pantech/app/music/list/PageInfoType;

    .prologue
    .line 383
    iput-object p1, p0, Lcom/pantech/app/music/list/adapter/SeparaterIndexedCursorAdapter;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    .line 384
    return-void
.end method

.method public getCount()I
    .registers 3

    .prologue
    .line 179
    invoke-super {p0}, Landroid/support/v4/widget/CursorAdapter;->getCount()I

    move-result v0

    .line 181
    .local v0, "iRet":I
    iget-object v1, p0, Lcom/pantech/app/music/list/adapter/SeparaterIndexedCursorAdapter;->mIndexSeparaterHelper:Lcom/pantech/app/music/list/adapter/helper/IndexSeparatorHelper;

    invoke-virtual {v1}, Lcom/pantech/app/music/list/adapter/helper/IndexSeparatorHelper;->getIndexSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 183
    return v0
.end method

.method public getCursorPosition(I)I
    .registers 3
    .param p1, "iInternalPosition"    # I

    .prologue
    .line 80
    iget-object v0, p0, Lcom/pantech/app/music/list/adapter/SeparaterIndexedCursorAdapter;->mIndexSeparaterHelper:Lcom/pantech/app/music/list/adapter/helper/IndexSeparatorHelper;

    invoke-virtual {v0, p1}, Lcom/pantech/app/music/list/adapter/helper/IndexSeparatorHelper;->getItemPosition(I)I

    move-result v0

    return v0
.end method

.method public getIndexHelper()Lcom/pantech/app/music/list/adapter/helper/IndexSeparatorHelper;
    .registers 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/pantech/app/music/list/adapter/SeparaterIndexedCursorAdapter;->mIndexSeparaterHelper:Lcom/pantech/app/music/list/adapter/helper/IndexSeparatorHelper;

    return-object v0
.end method

.method public getIndexbar()Lcom/pantech/app/music/list/adapter/helper/Indexbar;
    .registers 2

    .prologue
    .line 70
    iget-object v0, p0, Lcom/pantech/app/music/list/adapter/SeparaterIndexedCursorAdapter;->mIndexSeparaterHelper:Lcom/pantech/app/music/list/adapter/helper/IndexSeparatorHelper;

    invoke-virtual {v0}, Lcom/pantech/app/music/list/adapter/helper/IndexSeparatorHelper;->getIndexbar()Lcom/pantech/app/music/list/adapter/helper/Indexbar;

    move-result-object v0

    return-object v0
.end method

.method public getInternalPosition(I)I
    .registers 4
    .param p1, "cursorPosition"    # I

    .prologue
    .line 75
    iget-object v0, p0, Lcom/pantech/app/music/list/adapter/SeparaterIndexedCursorAdapter;->mIndexSeparaterHelper:Lcom/pantech/app/music/list/adapter/helper/IndexSeparatorHelper;

    invoke-virtual {p0}, Lcom/pantech/app/music/list/adapter/SeparaterIndexedCursorAdapter;->getCount()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/pantech/app/music/list/adapter/helper/IndexSeparatorHelper;->getViewPosition(II)I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3
    .param p1, "internalPosition"    # I

    .prologue
    .line 194
    invoke-virtual {p0, p1}, Lcom/pantech/app/music/list/adapter/SeparaterIndexedCursorAdapter;->getCursorPosition(I)I

    move-result v0

    invoke-super {p0, v0}, Landroid/support/v4/widget/CursorAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 10
    .param p1, "iInternalPosition"    # I

    .prologue
    .line 202
    invoke-super {p0, p1}, Landroid/support/v4/widget/CursorAdapter;->getItemId(I)J

    move-result-wide v2

    .line 204
    .local v2, "id":J
    iget-object v6, p0, Lcom/pantech/app/music/list/adapter/SeparaterIndexedCursorAdapter;->mCursorLock:Ljava/lang/Object;

    monitor-enter v6

    .line 206
    :try_start_7
    iget-object v4, p0, Lcom/pantech/app/music/list/adapter/SeparaterIndexedCursorAdapter;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    sget-object v5, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_UBOX_SEARCH:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-virtual {v4, v5}, Lcom/pantech/app/music/list/PageInfoType;->isCategory(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;)Z

    move-result v4

    if-eqz v4, :cond_3c

    .line 208
    iget-object v7, p0, Lcom/pantech/app/music/list/adapter/SeparaterIndexedCursorAdapter;->mCursorLock:Ljava/lang/Object;

    monitor-enter v7
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_39

    .line 210
    :try_start_14
    invoke-virtual {p0, p1}, Lcom/pantech/app/music/list/adapter/SeparaterIndexedCursorAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/database/Cursor;

    .line 212
    .local v1, "cursor":Landroid/database/Cursor;
    if-eqz v1, :cond_29

    .line 214
    const-string v4, "fileID"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    monitor-exit v7
    :try_end_27
    .catchall {:try_start_14 .. :try_end_27} :catchall_36

    :try_start_27
    monitor-exit v6
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_39

    .line 236
    :goto_28
    return-wide v4

    .line 216
    :cond_29
    :try_start_29
    monitor-exit v7
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_36

    .line 229
    :cond_2a
    :goto_2a
    :try_start_2a
    monitor-exit v6
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_39

    .line 231
    invoke-virtual {p0, p1}, Lcom/pantech/app/music/list/adapter/SeparaterIndexedCursorAdapter;->getItemViewType(I)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_57

    .line 233
    const-wide/16 v4, -0x1

    mul-long/2addr v4, v2

    goto :goto_28

    .line 216
    .end local v1    # "cursor":Landroid/database/Cursor;
    :catchall_36
    move-exception v4

    :try_start_37
    monitor-exit v7
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_36

    :try_start_38
    throw v4

    .line 229
    :catchall_39
    move-exception v4

    monitor-exit v6
    :try_end_3b
    .catchall {:try_start_38 .. :try_end_3b} :catchall_39

    throw v4

    .line 220
    :cond_3c
    :try_start_3c
    invoke-virtual {p0, p1}, Lcom/pantech/app/music/list/adapter/SeparaterIndexedCursorAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/database/Cursor;

    .line 222
    .restart local v1    # "cursor":Landroid/database/Cursor;
    const-string v4, "_id"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 224
    .local v0, "columnIndex":I
    if-eqz v1, :cond_2a

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_2a

    if-ltz v0, :cond_2a

    .line 226
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_55
    .catchall {:try_start_3c .. :try_end_55} :catchall_39

    move-result-wide v2

    goto :goto_2a

    .end local v0    # "columnIndex":I
    :cond_57
    move-wide v4, v2

    .line 236
    goto :goto_28
.end method

.method public getItemViewType(I)I
    .registers 3
    .param p1, "iInternalPosition"    # I

    .prologue
    .line 246
    iget-object v0, p0, Lcom/pantech/app/music/list/adapter/SeparaterIndexedCursorAdapter;->mIndexSeparaterHelper:Lcom/pantech/app/music/list/adapter/helper/IndexSeparatorHelper;

    invoke-virtual {v0, p1}, Lcom/pantech/app/music/list/adapter/helper/IndexSeparatorHelper;->getItemViewType(I)I

    move-result v0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 18
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 115
    iget-object v13, p0, Lcom/pantech/app/music/list/adapter/SeparaterIndexedCursorAdapter;->mCursorLock:Ljava/lang/Object;

    monitor-enter v13

    .line 117
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/pantech/app/music/list/adapter/SeparaterIndexedCursorAdapter;->getItemViewType(I)I

    move-result v12

    .line 119
    .local v12, "viewType":I
    if-eqz p2, :cond_1d

    .line 121
    move-object/from16 v1, p2

    .line 122
    .local v1, "view":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->clearAnimation()V

    .line 129
    :goto_e
    const v0, 0x7f100012

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 131
    packed-switch v12, :pswitch_data_86

    .line 161
    :cond_1b
    :goto_1b
    monitor-exit v13

    .line 168
    return-object v1

    .line 126
    .end local v1    # "view":Landroid/view/View;
    :cond_1d
    invoke-direct {p0, v12}, Lcom/pantech/app/music/list/adapter/SeparaterIndexedCursorAdapter;->newView(I)Landroid/view/View;

    move-result-object v1

    .restart local v1    # "view":Landroid/view/View;
    goto :goto_e

    .line 135
    :pswitch_22
    invoke-virtual {p0, p1}, Lcom/pantech/app/music/list/adapter/SeparaterIndexedCursorAdapter;->getCursorPosition(I)I

    move-result v10

    .line 136
    .local v10, "iMap":I
    invoke-virtual {p0}, Lcom/pantech/app/music/list/adapter/SeparaterIndexedCursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v2

    .line 138
    .local v2, "cursor":Landroid/database/Cursor;
    const/4 v0, 0x1

    invoke-interface {v2, v10}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v3

    if-ne v0, v3, :cond_1b

    .line 140
    iget-object v0, p0, Lcom/pantech/app/music/list/adapter/SeparaterIndexedCursorAdapter;->mAdapterBinderHelper:Lcom/pantech/app/music/list/adapter/helper/AdapterBindHelper;

    sget-object v3, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewType;->NORMAL_VIEW:Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewType;

    sget-object v4, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterBindType;->INDEXED:Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterBindType;

    iget-object v5, p0, Lcom/pantech/app/music/list/adapter/SeparaterIndexedCursorAdapter;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual/range {v0 .. v5}, Lcom/pantech/app/music/list/adapter/helper/AdapterBindHelper;->bindView(Landroid/view/View;Landroid/database/Cursor;Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewType;Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterBindType;Lcom/pantech/app/music/list/PageInfoType;)V

    goto :goto_1b

    .line 161
    .end local v1    # "view":Landroid/view/View;
    .end local v2    # "cursor":Landroid/database/Cursor;
    .end local v10    # "iMap":I
    .end local v12    # "viewType":I
    :catchall_3d
    move-exception v0

    monitor-exit v13
    :try_end_3f
    .catchall {:try_start_3 .. :try_end_3f} :catchall_3d

    throw v0

    .line 147
    .restart local v1    # "view":Landroid/view/View;
    .restart local v12    # "viewType":I
    :pswitch_40
    const v0, 0x7f100121

    :try_start_43
    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 148
    .local v11, "text":Landroid/widget/TextView;
    if-eqz v11, :cond_1b

    .line 150
    iget-object v0, p0, Lcom/pantech/app/music/list/adapter/SeparaterIndexedCursorAdapter;->mIndexSeparaterHelper:Lcom/pantech/app/music/list/adapter/helper/IndexSeparatorHelper;

    invoke-virtual {v0, p1}, Lcom/pantech/app/music/list/adapter/helper/IndexSeparatorHelper;->getIndexCharacter(I)C

    move-result v9

    .line 152
    .local v9, "firstCharacter":C
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 154
    iget-object v0, p0, Lcom/pantech/app/music/list/adapter/SeparaterIndexedCursorAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0f014a

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 156
    iget-object v3, p0, Lcom/pantech/app/music/list/adapter/SeparaterIndexedCursorAdapter;->mAdapterBinderHelper:Lcom/pantech/app/music/list/adapter/helper/AdapterBindHelper;

    const/4 v5, 0x0

    sget-object v6, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewType;->SEPARATER_VIEW:Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewType;

    sget-object v7, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterBindType;->INDEXED:Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterBindType;

    iget-object v8, p0, Lcom/pantech/app/music/list/adapter/SeparaterIndexedCursorAdapter;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    move-object v4, v1

    invoke-virtual/range {v3 .. v8}, Lcom/pantech/app/music/list/adapter/helper/AdapterBindHelper;->bindView(Landroid/view/View;Landroid/database/Cursor;Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewType;Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterBindType;Lcom/pantech/app/music/list/PageInfoType;)V
    :try_end_84
    .catchall {:try_start_43 .. :try_end_84} :catchall_3d

    goto :goto_1b

    .line 131
    nop

    :pswitch_data_86
    .packed-switch 0x0
        :pswitch_22
        :pswitch_40
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .registers 2

    .prologue
    .line 252
    const/4 v0, 0x2

    return v0
.end method

.method public isEnabled(I)Z
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 326
    invoke-virtual {p0, p1}, Lcom/pantech/app/music/list/adapter/SeparaterIndexedCursorAdapter;->getItemViewType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_c

    .line 332
    const/4 v0, 0x1

    :goto_8
    return v0

    .line 329
    :pswitch_9
    const/4 v0, 0x0

    goto :goto_8

    .line 326
    nop

    :pswitch_data_c
    .packed-switch 0x1
        :pswitch_9
    .end packed-switch
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 356
    const/4 v0, 0x0

    return-object v0
.end method

.method public notifyDataSetChanged()V
    .registers 5

    .prologue
    .line 285
    const-string v0, "VMusicAdapterIndex"

    const-string v1, "notifyDataSetChanged"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    iget-object v1, p0, Lcom/pantech/app/music/list/adapter/SeparaterIndexedCursorAdapter;->mCursorLock:Ljava/lang/Object;

    monitor-enter v1

    .line 289
    :try_start_a
    iget-object v0, p0, Lcom/pantech/app/music/list/adapter/SeparaterIndexedCursorAdapter;->mIndexSeparaterHelper:Lcom/pantech/app/music/list/adapter/helper/IndexSeparatorHelper;

    invoke-virtual {p0}, Lcom/pantech/app/music/list/adapter/SeparaterIndexedCursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v2

    iget-object v3, p0, Lcom/pantech/app/music/list/adapter/SeparaterIndexedCursorAdapter;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v3}, Lcom/pantech/app/music/list/PageInfoType;->getTitleColumn()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/pantech/app/music/list/adapter/helper/IndexSeparatorHelper;->buildIndexBarInformation(Landroid/database/Cursor;Ljava/lang/String;)V

    .line 291
    invoke-super {p0}, Landroid/support/v4/widget/CursorAdapter;->notifyDataSetChanged()V

    .line 292
    monitor-exit v1

    .line 293
    return-void

    .line 292
    :catchall_1e
    move-exception v0

    monitor-exit v1
    :try_end_20
    .catchall {:try_start_a .. :try_end_20} :catchall_1e

    throw v0
.end method

.method public notifyDataSetInvalidated()V
    .registers 3

    .prologue
    .line 298
    const-string v0, "VMusicAdapterIndex"

    const-string v1, "notifyDataSetInvalidated"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    iget-object v1, p0, Lcom/pantech/app/music/list/adapter/SeparaterIndexedCursorAdapter;->mCursorLock:Ljava/lang/Object;

    monitor-enter v1

    .line 302
    :try_start_a
    invoke-super {p0}, Landroid/support/v4/widget/CursorAdapter;->notifyDataSetInvalidated()V

    .line 303
    monitor-exit v1

    .line 304
    return-void

    .line 303
    :catchall_f
    move-exception v0

    monitor-exit v1
    :try_end_11
    .catchall {:try_start_a .. :try_end_11} :catchall_f

    throw v0
.end method

.method public onIndexChanged(Landroid/widget/AbsListView;ICLjava/lang/Object;)Z
    .registers 8
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "index"    # I
    .param p3, "ch"    # C
    .param p4, "param"    # Ljava/lang/Object;

    .prologue
    .line 309
    iget-object v2, p0, Lcom/pantech/app/music/list/adapter/SeparaterIndexedCursorAdapter;->mIndexSeparaterHelper:Lcom/pantech/app/music/list/adapter/helper/IndexSeparatorHelper;

    invoke-virtual {v2, p2, p3}, Lcom/pantech/app/music/list/adapter/helper/IndexSeparatorHelper;->getSeperaterPosition(IC)I

    move-result v1

    .line 311
    .local v1, "iSeperatorPos":I
    if-eqz p1, :cond_18

    if-ltz v1, :cond_18

    move-object v2, p1

    .line 313
    check-cast v2, Lcom/pantech/app/music/list/component/view/IndexedListView;

    invoke-virtual {v2}, Lcom/pantech/app/music/list/component/view/IndexedListView;->getHeaderViewsCount()I

    move-result v0

    .line 315
    .local v0, "headerViewCount":I
    add-int v2, v1, v0

    invoke-virtual {p1, v2}, Landroid/widget/AbsListView;->setSelection(I)V

    .line 317
    const/4 v2, 0x1

    .line 320
    .end local v0    # "headerViewCount":I
    :goto_17
    return v2

    :cond_18
    const/4 v2, 0x0

    goto :goto_17
.end method
