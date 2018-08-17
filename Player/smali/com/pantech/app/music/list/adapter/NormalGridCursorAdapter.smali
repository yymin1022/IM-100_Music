.class public Lcom/pantech/app/music/list/adapter/NormalGridCursorAdapter;
.super Landroid/widget/CursorAdapter;
.source "NormalGridCursorAdapter.java"

# interfaces
.implements Lcom/pantech/app/music/list/adapter/IAdapterCommon;
.implements Lcom/pantech/app/music/list/adapter/helper/Indexbar$IndexChangedListener;


# static fields
.field static final TAG:Ljava/lang/String; = "NormalGridCursorAdapter"


# instance fields
.field AdapterGridBindHelper:Lcom/pantech/app/music/list/adapter/helper/AdapterGridBindHelper;

.field mContext:Landroid/content/Context;

.field mCursorLock:Ljava/lang/Object;

.field mIndexSeparaterHelper:Lcom/pantech/app/music/list/adapter/helper/IndexSeparatorHelper;

.field mIsIndexScroller:Z

.field mLayoutResId:I

.field mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

.field mViewInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/pantech/app/music/list/PageInfoType;IZLcom/pantech/app/music/list/fragment/IFragmentCommon;Lcom/pantech/app/music/list/fragment/IFragmentCommonCallback;Ljava/lang/Object;)V
    .registers 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pageInfo"    # Lcom/pantech/app/music/list/PageInfoType;
    .param p3, "resID"    # I
    .param p4, "indexScroller"    # Z
    .param p5, "iface"    # Lcom/pantech/app/music/list/fragment/IFragmentCommon;
    .param p6, "callback"    # Lcom/pantech/app/music/list/fragment/IFragmentCommonCallback;
    .param p7, "cursorLock"    # Ljava/lang/Object;

    .prologue
    const/4 v7, 0x0

    .line 44
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v7}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 46
    const-string v0, "NormalGridCursorAdapter"

    const-string v1, "NormalGridCursorAdapter"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    iput-object p1, p0, Lcom/pantech/app/music/list/adapter/NormalGridCursorAdapter;->mContext:Landroid/content/Context;

    .line 50
    iput-object p7, p0, Lcom/pantech/app/music/list/adapter/NormalGridCursorAdapter;->mCursorLock:Ljava/lang/Object;

    .line 52
    iput p3, p0, Lcom/pantech/app/music/list/adapter/NormalGridCursorAdapter;->mLayoutResId:I

    .line 54
    iput-boolean p4, p0, Lcom/pantech/app/music/list/adapter/NormalGridCursorAdapter;->mIsIndexScroller:Z

    .line 56
    iput-object p2, p0, Lcom/pantech/app/music/list/adapter/NormalGridCursorAdapter;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    .line 58
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/pantech/app/music/list/adapter/NormalGridCursorAdapter;->mViewInflater:Landroid/view/LayoutInflater;

    .line 60
    new-instance v0, Lcom/pantech/app/music/list/adapter/helper/AdapterGridBindHelper;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p0

    move-object v4, p5

    move-object v5, p6

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/pantech/app/music/list/adapter/helper/AdapterGridBindHelper;-><init>(Landroid/content/Context;Lcom/pantech/app/music/list/PageInfoType;Lcom/pantech/app/music/list/adapter/IAdapterCommon;Lcom/pantech/app/music/list/fragment/IFragmentCommon;Lcom/pantech/app/music/list/fragment/IFragmentCommonCallback;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/pantech/app/music/list/adapter/NormalGridCursorAdapter;->AdapterGridBindHelper:Lcom/pantech/app/music/list/adapter/helper/AdapterGridBindHelper;

    .line 62
    iget-boolean v0, p0, Lcom/pantech/app/music/list/adapter/NormalGridCursorAdapter;->mIsIndexScroller:Z

    if-eqz v0, :cond_38

    .line 64
    new-instance v0, Lcom/pantech/app/music/list/adapter/helper/IndexSeparatorHelper;

    invoke-direct {v0, p1, v7, p0, p7}, Lcom/pantech/app/music/list/adapter/helper/IndexSeparatorHelper;-><init>(Landroid/content/Context;ZLcom/pantech/app/music/list/adapter/helper/Indexbar$IndexChangedListener;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/pantech/app/music/list/adapter/NormalGridCursorAdapter;->mIndexSeparaterHelper:Lcom/pantech/app/music/list/adapter/helper/IndexSeparatorHelper;

    .line 66
    :cond_38
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .registers 10
    .param p1, "view"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 156
    const-string v0, "NormalGridCursorAdapter"

    const-string v1, "bindView()"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    iget-object v0, p0, Lcom/pantech/app/music/list/adapter/NormalGridCursorAdapter;->AdapterGridBindHelper:Lcom/pantech/app/music/list/adapter/helper/AdapterGridBindHelper;

    sget-object v3, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewType;->NORMAL_VIEW:Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewType;

    sget-object v4, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterBindType;->GRID:Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterBindType;

    iget-object v5, p0, Lcom/pantech/app/music/list/adapter/NormalGridCursorAdapter;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    move-object v1, p1

    move-object v2, p3

    invoke-virtual/range {v0 .. v5}, Lcom/pantech/app/music/list/adapter/helper/AdapterGridBindHelper;->bindView(Landroid/view/View;Landroid/database/Cursor;Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewType;Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterBindType;Lcom/pantech/app/music/list/PageInfoType;)V

    .line 158
    return-void
.end method

.method public changeCursor(Landroid/database/Cursor;)V
    .registers 4
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 88
    const-string v0, "NormalGridCursorAdapter"

    const-string v1, "changeCursor()"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    iget-boolean v0, p0, Lcom/pantech/app/music/list/adapter/NormalGridCursorAdapter;->mIsIndexScroller:Z

    if-eqz v0, :cond_18

    .line 96
    if-nez p1, :cond_18

    .line 97
    iget-object v0, p0, Lcom/pantech/app/music/list/adapter/NormalGridCursorAdapter;->mIndexSeparaterHelper:Lcom/pantech/app/music/list/adapter/helper/IndexSeparatorHelper;

    iget-object v1, p0, Lcom/pantech/app/music/list/adapter/NormalGridCursorAdapter;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v1}, Lcom/pantech/app/music/list/PageInfoType;->getTitleColumn()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/pantech/app/music/list/adapter/helper/IndexSeparatorHelper;->buildIndexBarInformation(Landroid/database/Cursor;Ljava/lang/String;)V

    .line 100
    :cond_18
    invoke-super {p0, p1}, Landroid/widget/CursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 101
    return-void
.end method

.method public cmChangeCursor(Landroid/database/Cursor;)V
    .registers 2
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 221
    invoke-virtual {p0, p1}, Lcom/pantech/app/music/list/adapter/NormalGridCursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 222
    return-void
.end method

.method public cmClearAll()V
    .registers 2

    .prologue
    .line 311
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pantech/app/music/list/adapter/NormalGridCursorAdapter;->mViewInflater:Landroid/view/LayoutInflater;

    .line 313
    iget-object v0, p0, Lcom/pantech/app/music/list/adapter/NormalGridCursorAdapter;->mIndexSeparaterHelper:Lcom/pantech/app/music/list/adapter/helper/IndexSeparatorHelper;

    invoke-virtual {v0}, Lcom/pantech/app/music/list/adapter/helper/IndexSeparatorHelper;->clearAll()V

    .line 314
    return-void
.end method

.method public cmGetCount()I
    .registers 2

    .prologue
    .line 275
    invoke-virtual {p0}, Lcom/pantech/app/music/list/adapter/NormalGridCursorAdapter;->getCount()I

    move-result v0

    return v0
.end method

.method public cmGetCursor()Landroid/database/Cursor;
    .registers 2

    .prologue
    .line 245
    invoke-virtual {p0}, Lcom/pantech/app/music/list/adapter/NormalGridCursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public cmGetCursorLock()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 251
    iget-object v0, p0, Lcom/pantech/app/music/list/adapter/NormalGridCursorAdapter;->mCursorLock:Ljava/lang/Object;

    return-object v0
.end method

.method public cmGetIndexBar()Lcom/pantech/app/music/list/adapter/helper/Indexbar;
    .registers 2

    .prologue
    .line 299
    iget-object v0, p0, Lcom/pantech/app/music/list/adapter/NormalGridCursorAdapter;->mIndexSeparaterHelper:Lcom/pantech/app/music/list/adapter/helper/IndexSeparatorHelper;

    invoke-virtual {v0}, Lcom/pantech/app/music/list/adapter/helper/IndexSeparatorHelper;->getIndexbar()Lcom/pantech/app/music/list/adapter/helper/Indexbar;

    move-result-object v0

    return-object v0
.end method

.method public cmGetIndexSeperaterHelper()Lcom/pantech/app/music/list/adapter/helper/IndexSeparatorHelper;
    .registers 2

    .prologue
    .line 305
    iget-object v0, p0, Lcom/pantech/app/music/list/adapter/NormalGridCursorAdapter;->mIndexSeparaterHelper:Lcom/pantech/app/music/list/adapter/helper/IndexSeparatorHelper;

    return-object v0
.end method

.method public cmGetItem(I)Landroid/database/Cursor;
    .registers 3
    .param p1, "viewPosition"    # I

    .prologue
    .line 287
    invoke-virtual {p0, p1}, Lcom/pantech/app/music/list/adapter/NormalGridCursorAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    return-object v0
.end method

.method public cmGetItemCount()I
    .registers 2

    .prologue
    .line 269
    invoke-virtual {p0}, Lcom/pantech/app/music/list/adapter/NormalGridCursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v0, -0x1

    :goto_7
    return v0

    :cond_8
    invoke-virtual {p0}, Lcom/pantech/app/music/list/adapter/NormalGridCursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    goto :goto_7
.end method

.method public cmGetItemPosition(I)I
    .registers 2
    .param p1, "position"    # I

    .prologue
    .line 263
    return p1
.end method

.method public cmGetPageInfo()Lcom/pantech/app/music/list/PageInfoType;
    .registers 2

    .prologue
    .line 227
    iget-object v0, p0, Lcom/pantech/app/music/list/adapter/NormalGridCursorAdapter;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    return-object v0
.end method

.method public cmGetViewPosition(I)I
    .registers 2
    .param p1, "cursorPosition"    # I

    .prologue
    .line 257
    return p1
.end method

.method public cmGetViewType(I)Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewType;
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 239
    sget-object v0, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewType;->NORMAL_VIEW:Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewType;

    return-object v0
.end method

.method public cmNotifyDataSetChanged()V
    .registers 1

    .prologue
    .line 281
    invoke-virtual {p0}, Lcom/pantech/app/music/list/adapter/NormalGridCursorAdapter;->notifyDataSetChanged()V

    .line 282
    return-void
.end method

.method public cmResetIndexbarPosition()V
    .registers 1

    .prologue
    .line 294
    return-void
.end method

.method public cmSetPageInfo(Lcom/pantech/app/music/list/PageInfoType;)V
    .registers 2
    .param p1, "pageInfo"    # Lcom/pantech/app/music/list/PageInfoType;

    .prologue
    .line 233
    iput-object p1, p0, Lcom/pantech/app/music/list/adapter/NormalGridCursorAdapter;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    .line 234
    return-void
.end method

.method public getIndexHelper()Lcom/pantech/app/music/list/adapter/helper/IndexSeparatorHelper;
    .registers 2

    .prologue
    .line 192
    iget-object v0, p0, Lcom/pantech/app/music/list/adapter/NormalGridCursorAdapter;->mIndexSeparaterHelper:Lcom/pantech/app/music/list/adapter/helper/IndexSeparatorHelper;

    return-object v0
.end method

.method public getIndexbar()Lcom/pantech/app/music/list/adapter/helper/Indexbar;
    .registers 2

    .prologue
    .line 187
    iget-object v0, p0, Lcom/pantech/app/music/list/adapter/NormalGridCursorAdapter;->mIndexSeparaterHelper:Lcom/pantech/app/music/list/adapter/helper/IndexSeparatorHelper;

    invoke-virtual {v0}, Lcom/pantech/app/music/list/adapter/helper/IndexSeparatorHelper;->getIndexbar()Lcom/pantech/app/music/list/adapter/helper/Indexbar;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 7
    .param p1, "iInternalPosition"    # I

    .prologue
    .line 169
    iget-object v1, p0, Lcom/pantech/app/music/list/adapter/NormalGridCursorAdapter;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    sget-object v2, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_FOLDER:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-virtual {v1, v2}, Lcom/pantech/app/music/list/PageInfoType;->isCategory(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 171
    iget-object v4, p0, Lcom/pantech/app/music/list/adapter/NormalGridCursorAdapter;->mCursorLock:Ljava/lang/Object;

    monitor-enter v4

    .line 173
    :try_start_d
    invoke-virtual {p0, p1}, Lcom/pantech/app/music/list/adapter/NormalGridCursorAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 175
    .local v0, "cursor":Landroid/database/Cursor;
    if-eqz v0, :cond_21

    .line 177
    const-string v1, "bucket_id"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    monitor-exit v4

    .line 182
    .end local v0    # "cursor":Landroid/database/Cursor;
    :goto_20
    return-wide v2

    .line 179
    .restart local v0    # "cursor":Landroid/database/Cursor;
    :cond_21
    monitor-exit v4
    :try_end_22
    .catchall {:try_start_d .. :try_end_22} :catchall_27

    .line 182
    .end local v0    # "cursor":Landroid/database/Cursor;
    :cond_22
    invoke-super {p0, p1}, Landroid/widget/CursorAdapter;->getItemId(I)J

    move-result-wide v2

    goto :goto_20

    .line 179
    :catchall_27
    move-exception v1

    :try_start_28
    monitor-exit v4
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_27

    throw v1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 7
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 71
    const-string v0, "NormalGridCursorAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getView() position:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    iget-object v1, p0, Lcom/pantech/app/music/list/adapter/NormalGridCursorAdapter;->mCursorLock:Ljava/lang/Object;

    monitor-enter v1

    .line 74
    :try_start_1b
    invoke-super {p0, p1, p2, p3}, Landroid/widget/CursorAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 75
    :catchall_21
    move-exception v0

    monitor-exit v1
    :try_end_23
    .catchall {:try_start_1b .. :try_end_23} :catchall_21

    throw v0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 140
    const-string v1, "NormalGridCursorAdapter"

    const-string v2, "newView()"

    invoke-static {v1, v2}, Lcom/pantech/app/music/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    const/4 v0, 0x0

    .line 143
    .local v0, "view":Landroid/view/View;
    if-eqz p1, :cond_1e

    .line 145
    iget-object v1, p0, Lcom/pantech/app/music/list/adapter/NormalGridCursorAdapter;->mViewInflater:Landroid/view/LayoutInflater;

    iget v2, p0, Lcom/pantech/app/music/list/adapter/NormalGridCursorAdapter;->mLayoutResId:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 147
    iget-object v1, p0, Lcom/pantech/app/music/list/adapter/NormalGridCursorAdapter;->AdapterGridBindHelper:Lcom/pantech/app/music/list/adapter/helper/AdapterGridBindHelper;

    sget-object v2, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewType;->NORMAL_VIEW:Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewType;

    sget-object v3, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterBindType;->GRID:Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterBindType;

    iget-object v4, p0, Lcom/pantech/app/music/list/adapter/NormalGridCursorAdapter;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/pantech/app/music/list/adapter/helper/AdapterGridBindHelper;->newView(Landroid/view/View;Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewType;Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterBindType;Lcom/pantech/app/music/list/PageInfoType;)V

    .line 150
    :cond_1e
    return-object v0
.end method

.method public notifyDataSetChanged()V
    .registers 5

    .prologue
    .line 113
    const-string v0, "NormalGridCursorAdapter"

    const-string v1, "notifyDataSetChanged"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    iget-object v1, p0, Lcom/pantech/app/music/list/adapter/NormalGridCursorAdapter;->mCursorLock:Ljava/lang/Object;

    monitor-enter v1

    .line 117
    :try_start_a
    iget-boolean v0, p0, Lcom/pantech/app/music/list/adapter/NormalGridCursorAdapter;->mIsIndexScroller:Z

    if-eqz v0, :cond_1d

    .line 119
    iget-object v0, p0, Lcom/pantech/app/music/list/adapter/NormalGridCursorAdapter;->mIndexSeparaterHelper:Lcom/pantech/app/music/list/adapter/helper/IndexSeparatorHelper;

    invoke-virtual {p0}, Lcom/pantech/app/music/list/adapter/NormalGridCursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v2

    iget-object v3, p0, Lcom/pantech/app/music/list/adapter/NormalGridCursorAdapter;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v3}, Lcom/pantech/app/music/list/PageInfoType;->getTitleColumn()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/pantech/app/music/list/adapter/helper/IndexSeparatorHelper;->buildIndexBarInformation(Landroid/database/Cursor;Ljava/lang/String;)V

    .line 122
    :cond_1d
    invoke-super {p0}, Landroid/widget/CursorAdapter;->notifyDataSetChanged()V

    .line 123
    monitor-exit v1

    .line 124
    return-void

    .line 123
    :catchall_22
    move-exception v0

    monitor-exit v1
    :try_end_24
    .catchall {:try_start_a .. :try_end_24} :catchall_22

    throw v0
.end method

.method public notifyDataSetInvalidated()V
    .registers 3

    .prologue
    .line 129
    const-string v0, "NormalGridCursorAdapter"

    const-string v1, "notifyDataSetInvalidated"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    iget-object v1, p0, Lcom/pantech/app/music/list/adapter/NormalGridCursorAdapter;->mCursorLock:Ljava/lang/Object;

    monitor-enter v1

    .line 133
    :try_start_a
    invoke-super {p0}, Landroid/widget/CursorAdapter;->notifyDataSetInvalidated()V

    .line 134
    monitor-exit v1

    .line 135
    return-void

    .line 134
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
    .line 198
    iget-boolean v1, p0, Lcom/pantech/app/music/list/adapter/NormalGridCursorAdapter;->mIsIndexScroller:Z

    if-eqz v1, :cond_3d

    .line 200
    iget-object v1, p0, Lcom/pantech/app/music/list/adapter/NormalGridCursorAdapter;->mIndexSeparaterHelper:Lcom/pantech/app/music/list/adapter/helper/IndexSeparatorHelper;

    invoke-virtual {v1, p2, p3}, Lcom/pantech/app/music/list/adapter/helper/IndexSeparatorHelper;->getSeperaterPosition(IC)I

    move-result v0

    .line 202
    .local v0, "iSeperatorPos":I
    if-eqz p1, :cond_3d

    if-ltz v0, :cond_3d

    .line 204
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "iSeperatorPos:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " index:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ch:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/pantech/app/music/utils/MLog;->i(Ljava/lang/String;)V

    .line 209
    invoke-virtual {p1, v0}, Landroid/widget/AbsListView;->setSelection(I)V

    .line 211
    const/4 v1, 0x1

    .line 215
    .end local v0    # "iSeperatorPos":I
    :goto_3c
    return v1

    :cond_3d
    const/4 v1, 0x0

    goto :goto_3c
.end method
