.class public Lcom/pantech/app/music/list/adapter/NormalCursorAdapter;
.super Landroid/widget/CursorAdapter;
.source "NormalCursorAdapter.java"

# interfaces
.implements Lcom/pantech/app/music/list/adapter/IAdapterCommon;


# static fields
.field static final TAG:Ljava/lang/String; = "VMusicAdapterNormal"


# instance fields
.field mAdapterBinderHelper:Lcom/pantech/app/music/list/adapter/helper/AdapterBindHelper;

.field protected mContext:Landroid/content/Context;

.field mCursorLock:Ljava/lang/Object;

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

    .line 40
    const/4 v0, 0x0

    invoke-direct {p0, p1, v1, v0}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 26
    iput-object v1, p0, Lcom/pantech/app/music/list/adapter/NormalCursorAdapter;->mContext:Landroid/content/Context;

    .line 28
    iput-object v1, p0, Lcom/pantech/app/music/list/adapter/NormalCursorAdapter;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    .line 42
    iput-object p1, p0, Lcom/pantech/app/music/list/adapter/NormalCursorAdapter;->mContext:Landroid/content/Context;

    .line 44
    iput-object p2, p0, Lcom/pantech/app/music/list/adapter/NormalCursorAdapter;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    .line 46
    iput-object p6, p0, Lcom/pantech/app/music/list/adapter/NormalCursorAdapter;->mCursorLock:Ljava/lang/Object;

    .line 48
    iput p3, p0, Lcom/pantech/app/music/list/adapter/NormalCursorAdapter;->mLayoutResId:I

    .line 50
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/pantech/app/music/list/adapter/NormalCursorAdapter;->mViewInflater:Landroid/view/LayoutInflater;

    .line 52
    new-instance v0, Lcom/pantech/app/music/list/adapter/helper/AdapterBindHelper;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/pantech/app/music/list/adapter/helper/AdapterBindHelper;-><init>(Landroid/content/Context;Lcom/pantech/app/music/list/PageInfoType;Lcom/pantech/app/music/list/fragment/IFragmentCommon;Lcom/pantech/app/music/list/fragment/IFragmentCommonCallback;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/pantech/app/music/list/adapter/NormalCursorAdapter;->mAdapterBinderHelper:Lcom/pantech/app/music/list/adapter/helper/AdapterBindHelper;

    .line 53
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .registers 10
    .param p1, "view"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 154
    iget-object v0, p0, Lcom/pantech/app/music/list/adapter/NormalCursorAdapter;->mAdapterBinderHelper:Lcom/pantech/app/music/list/adapter/helper/AdapterBindHelper;

    sget-object v3, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewType;->NORMAL_VIEW:Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewType;

    sget-object v4, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterBindType;->NORMAL:Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterBindType;

    iget-object v5, p0, Lcom/pantech/app/music/list/adapter/NormalCursorAdapter;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    move-object v1, p1

    move-object v2, p3

    invoke-virtual/range {v0 .. v5}, Lcom/pantech/app/music/list/adapter/helper/AdapterBindHelper;->bindView(Landroid/view/View;Landroid/database/Cursor;Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewType;Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterBindType;Lcom/pantech/app/music/list/PageInfoType;)V

    .line 155
    return-void
.end method

.method public cmChangeCursor(Landroid/database/Cursor;)V
    .registers 2
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 165
    invoke-virtual {p0, p1}, Lcom/pantech/app/music/list/adapter/NormalCursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 166
    return-void
.end method

.method public cmClearAll()V
    .registers 2

    .prologue
    .line 255
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pantech/app/music/list/adapter/NormalCursorAdapter;->mViewInflater:Landroid/view/LayoutInflater;

    .line 256
    return-void
.end method

.method public cmGetCount()I
    .registers 2

    .prologue
    .line 219
    invoke-virtual {p0}, Lcom/pantech/app/music/list/adapter/NormalCursorAdapter;->getCount()I

    move-result v0

    return v0
.end method

.method public cmGetCursor()Landroid/database/Cursor;
    .registers 2

    .prologue
    .line 189
    invoke-virtual {p0}, Lcom/pantech/app/music/list/adapter/NormalCursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public cmGetCursorLock()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 195
    iget-object v0, p0, Lcom/pantech/app/music/list/adapter/NormalCursorAdapter;->mCursorLock:Ljava/lang/Object;

    return-object v0
.end method

.method public cmGetIndexBar()Lcom/pantech/app/music/list/adapter/helper/Indexbar;
    .registers 2

    .prologue
    .line 237
    const/4 v0, 0x0

    return-object v0
.end method

.method public cmGetIndexSeperaterHelper()Lcom/pantech/app/music/list/adapter/helper/IndexSeparatorHelper;
    .registers 2

    .prologue
    .line 243
    const/4 v0, 0x0

    return-object v0
.end method

.method public cmGetItem(I)Landroid/database/Cursor;
    .registers 3
    .param p1, "viewPosition"    # I

    .prologue
    .line 231
    invoke-virtual {p0, p1}, Lcom/pantech/app/music/list/adapter/NormalCursorAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    return-object v0
.end method

.method public cmGetItemCount()I
    .registers 2

    .prologue
    .line 213
    invoke-virtual {p0}, Lcom/pantech/app/music/list/adapter/NormalCursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v0, -0x1

    :goto_7
    return v0

    :cond_8
    invoke-virtual {p0}, Lcom/pantech/app/music/list/adapter/NormalCursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    goto :goto_7
.end method

.method public cmGetItemPosition(I)I
    .registers 2
    .param p1, "position"    # I

    .prologue
    .line 207
    return p1
.end method

.method public cmGetPageInfo()Lcom/pantech/app/music/list/PageInfoType;
    .registers 2

    .prologue
    .line 171
    iget-object v0, p0, Lcom/pantech/app/music/list/adapter/NormalCursorAdapter;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    return-object v0
.end method

.method public cmGetViewPosition(I)I
    .registers 2
    .param p1, "cursorPosition"    # I

    .prologue
    .line 201
    return p1
.end method

.method public cmGetViewType(I)Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewType;
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 183
    sget-object v0, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewType;->NORMAL_VIEW:Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewType;

    return-object v0
.end method

.method public cmNotifyDataSetChanged()V
    .registers 1

    .prologue
    .line 225
    invoke-virtual {p0}, Lcom/pantech/app/music/list/adapter/NormalCursorAdapter;->notifyDataSetChanged()V

    .line 226
    return-void
.end method

.method public cmResetIndexbarPosition()V
    .registers 1

    .prologue
    .line 250
    return-void
.end method

.method public cmSetPageInfo(Lcom/pantech/app/music/list/PageInfoType;)V
    .registers 2
    .param p1, "pageInfo"    # Lcom/pantech/app/music/list/PageInfoType;

    .prologue
    .line 177
    iput-object p1, p0, Lcom/pantech/app/music/list/adapter/NormalCursorAdapter;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    .line 178
    return-void
.end method

.method public getItemId(I)J
    .registers 8
    .param p1, "iInternalPosition"    # I

    .prologue
    .line 98
    iget-object v4, p0, Lcom/pantech/app/music/list/adapter/NormalCursorAdapter;->mCursorLock:Ljava/lang/Object;

    monitor-enter v4

    .line 100
    :try_start_3
    iget-object v2, p0, Lcom/pantech/app/music/list/adapter/NormalCursorAdapter;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    sget-object v3, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_UBOX_SEARCH:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-virtual {v2, v3}, Lcom/pantech/app/music/list/PageInfoType;->isCategory(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;)Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 102
    iget-object v5, p0, Lcom/pantech/app/music/list/adapter/NormalCursorAdapter;->mCursorLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_37

    .line 104
    :try_start_10
    invoke-virtual {p0, p1}, Lcom/pantech/app/music/list/adapter/NormalCursorAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/database/Cursor;

    .line 106
    .local v1, "cursor":Landroid/database/Cursor;
    if-eqz v1, :cond_2d

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_2d

    .line 108
    const-string v2, "fileID"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 110
    .local v0, "columnIndex":I
    if-ltz v0, :cond_2d

    .line 112
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    monitor-exit v5
    :try_end_2b
    .catchall {:try_start_10 .. :try_end_2b} :catchall_34

    :try_start_2b
    monitor-exit v4
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_37

    .line 133
    .end local v0    # "columnIndex":I
    :goto_2c
    return-wide v2

    .line 115
    :cond_2d
    :try_start_2d
    monitor-exit v5
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_34

    .line 131
    :cond_2e
    :try_start_2e
    monitor-exit v4
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_37

    .line 133
    invoke-super {p0, p1}, Landroid/widget/CursorAdapter;->getItemId(I)J

    move-result-wide v2

    goto :goto_2c

    .line 115
    .end local v1    # "cursor":Landroid/database/Cursor;
    :catchall_34
    move-exception v2

    :try_start_35
    monitor-exit v5
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_34

    :try_start_36
    throw v2

    .line 131
    :catchall_37
    move-exception v2

    monitor-exit v4
    :try_end_39
    .catchall {:try_start_36 .. :try_end_39} :catchall_37

    throw v2

    .line 119
    :cond_3a
    :try_start_3a
    invoke-virtual {p0, p1}, Lcom/pantech/app/music/list/adapter/NormalCursorAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/database/Cursor;

    .line 121
    .restart local v1    # "cursor":Landroid/database/Cursor;
    if-eqz v1, :cond_2e

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_2e

    .line 123
    const-string v2, "_id"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 125
    .restart local v0    # "columnIndex":I
    if-ltz v0, :cond_2e

    .line 127
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    monitor-exit v4
    :try_end_55
    .catchall {:try_start_3a .. :try_end_55} :catchall_37

    goto :goto_2c
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 58
    iget-object v1, p0, Lcom/pantech/app/music/list/adapter/NormalCursorAdapter;->mCursorLock:Ljava/lang/Object;

    monitor-enter v1

    .line 60
    :try_start_3
    invoke-super {p0, p1, p2, p3}, Landroid/widget/CursorAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 61
    :catchall_9
    move-exception v0

    monitor-exit v1
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw v0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 139
    const/4 v0, 0x0

    .line 141
    .local v0, "view":Landroid/view/View;
    if-eqz p1, :cond_17

    .line 143
    iget-object v1, p0, Lcom/pantech/app/music/list/adapter/NormalCursorAdapter;->mViewInflater:Landroid/view/LayoutInflater;

    iget v2, p0, Lcom/pantech/app/music/list/adapter/NormalCursorAdapter;->mLayoutResId:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 145
    iget-object v1, p0, Lcom/pantech/app/music/list/adapter/NormalCursorAdapter;->mAdapterBinderHelper:Lcom/pantech/app/music/list/adapter/helper/AdapterBindHelper;

    sget-object v2, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewType;->NORMAL_VIEW:Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewType;

    sget-object v3, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterBindType;->NORMAL:Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterBindType;

    iget-object v4, p0, Lcom/pantech/app/music/list/adapter/NormalCursorAdapter;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/pantech/app/music/list/adapter/helper/AdapterBindHelper;->newView(Landroid/view/View;Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewType;Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterBindType;Lcom/pantech/app/music/list/PageInfoType;)V

    .line 148
    :cond_17
    return-object v0
.end method

.method public notifyDataSetChanged()V
    .registers 3

    .prologue
    .line 67
    const-string v0, "VMusicAdapterNormal"

    const-string v1, "notifyDataSetChanged"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    iget-object v1, p0, Lcom/pantech/app/music/list/adapter/NormalCursorAdapter;->mCursorLock:Ljava/lang/Object;

    monitor-enter v1

    .line 71
    :try_start_a
    invoke-super {p0}, Landroid/widget/CursorAdapter;->notifyDataSetChanged()V

    .line 72
    monitor-exit v1

    .line 73
    return-void

    .line 72
    :catchall_f
    move-exception v0

    monitor-exit v1
    :try_end_11
    .catchall {:try_start_a .. :try_end_11} :catchall_f

    throw v0
.end method

.method public notifyDataSetInvalidated()V
    .registers 3

    .prologue
    .line 78
    const-string v0, "VMusicAdapterNormal"

    const-string v1, "notifyDataSetInvalidated"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    iget-object v1, p0, Lcom/pantech/app/music/list/adapter/NormalCursorAdapter;->mCursorLock:Ljava/lang/Object;

    monitor-enter v1

    .line 82
    :try_start_a
    invoke-super {p0}, Landroid/widget/CursorAdapter;->notifyDataSetInvalidated()V

    .line 83
    monitor-exit v1

    .line 84
    return-void

    .line 83
    :catchall_f
    move-exception v0

    monitor-exit v1
    :try_end_11
    .catchall {:try_start_a .. :try_end_11} :catchall_f

    throw v0
.end method
