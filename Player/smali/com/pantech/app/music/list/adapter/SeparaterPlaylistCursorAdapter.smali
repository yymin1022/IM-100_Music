.class public Lcom/pantech/app/music/list/adapter/SeparaterPlaylistCursorAdapter;
.super Landroid/widget/CursorAdapter;
.source "SeparaterPlaylistCursorAdapter.java"

# interfaces
.implements Lcom/pantech/app/music/list/adapter/IAdapterCommon;


# static fields
.field protected static final CURSOR_POSITION:Ljava/lang/String; = "cursor_position"


# instance fields
.field mAdapterBinderHelper:Lcom/pantech/app/music/list/adapter/helper/AdapterBindHelper;

.field protected mContext:Landroid/content/Context;

.field mCursorLock:Ljava/lang/Object;

.field mInternalList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

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

    const/4 v0, 0x0

    .line 44
    invoke-direct {p0, p1, v1, v0}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 30
    iput v0, p0, Lcom/pantech/app/music/list/adapter/SeparaterPlaylistCursorAdapter;->mLayoutResId:I

    .line 32
    iput-object v1, p0, Lcom/pantech/app/music/list/adapter/SeparaterPlaylistCursorAdapter;->mContext:Landroid/content/Context;

    .line 101
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/pantech/app/music/list/adapter/SeparaterPlaylistCursorAdapter;->mInternalList:Ljava/util/ArrayList;

    .line 46
    iput-object p1, p0, Lcom/pantech/app/music/list/adapter/SeparaterPlaylistCursorAdapter;->mContext:Landroid/content/Context;

    .line 48
    iput-object p2, p0, Lcom/pantech/app/music/list/adapter/SeparaterPlaylistCursorAdapter;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    .line 50
    iput-object p6, p0, Lcom/pantech/app/music/list/adapter/SeparaterPlaylistCursorAdapter;->mCursorLock:Ljava/lang/Object;

    .line 52
    iput p3, p0, Lcom/pantech/app/music/list/adapter/SeparaterPlaylistCursorAdapter;->mLayoutResId:I

    .line 54
    new-instance v0, Lcom/pantech/app/music/list/adapter/helper/AdapterBindHelper;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/pantech/app/music/list/adapter/helper/AdapterBindHelper;-><init>(Landroid/content/Context;Lcom/pantech/app/music/list/PageInfoType;Lcom/pantech/app/music/list/fragment/IFragmentCommon;Lcom/pantech/app/music/list/fragment/IFragmentCommonCallback;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/pantech/app/music/list/adapter/SeparaterPlaylistCursorAdapter;->mAdapterBinderHelper:Lcom/pantech/app/music/list/adapter/helper/AdapterBindHelper;

    .line 56
    iget-object v0, p0, Lcom/pantech/app/music/list/adapter/SeparaterPlaylistCursorAdapter;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/pantech/app/music/list/adapter/SeparaterPlaylistCursorAdapter;->mViewInflater:Landroid/view/LayoutInflater;

    .line 57
    return-void
.end method

.method private newView(I)Landroid/view/View;
    .registers 7
    .param p1, "iViewType"    # I

    .prologue
    const/4 v3, 0x0

    .line 167
    const/4 v0, 0x0

    .line 169
    .local v0, "view":Landroid/view/View;
    packed-switch p1, :pswitch_data_30

    .line 184
    :goto_5
    return-object v0

    .line 172
    :pswitch_6
    iget-object v1, p0, Lcom/pantech/app/music/list/adapter/SeparaterPlaylistCursorAdapter;->mViewInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f030074

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 174
    iget-object v1, p0, Lcom/pantech/app/music/list/adapter/SeparaterPlaylistCursorAdapter;->mAdapterBinderHelper:Lcom/pantech/app/music/list/adapter/helper/AdapterBindHelper;

    sget-object v2, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewType;->SEPARATER_VIEW:Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewType;

    sget-object v3, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterBindType;->SEPARATER_SIMILARIRTY:Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterBindType;

    iget-object v4, p0, Lcom/pantech/app/music/list/adapter/SeparaterPlaylistCursorAdapter;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/pantech/app/music/list/adapter/helper/AdapterBindHelper;->newView(Landroid/view/View;Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewType;Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterBindType;Lcom/pantech/app/music/list/PageInfoType;)V

    goto :goto_5

    .line 178
    :pswitch_1b
    iget-object v1, p0, Lcom/pantech/app/music/list/adapter/SeparaterPlaylistCursorAdapter;->mViewInflater:Landroid/view/LayoutInflater;

    iget v2, p0, Lcom/pantech/app/music/list/adapter/SeparaterPlaylistCursorAdapter;->mLayoutResId:I

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 180
    iget-object v1, p0, Lcom/pantech/app/music/list/adapter/SeparaterPlaylistCursorAdapter;->mAdapterBinderHelper:Lcom/pantech/app/music/list/adapter/helper/AdapterBindHelper;

    sget-object v2, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewType;->NORMAL_VIEW:Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewType;

    sget-object v3, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterBindType;->SEPARATER_SIMILARIRTY:Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterBindType;

    iget-object v4, p0, Lcom/pantech/app/music/list/adapter/SeparaterPlaylistCursorAdapter;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/pantech/app/music/list/adapter/helper/AdapterBindHelper;->newView(Landroid/view/View;Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewType;Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterBindType;Lcom/pantech/app/music/list/PageInfoType;)V

    goto :goto_5

    .line 169
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
    .line 329
    const/4 v0, 0x0

    return v0
.end method

.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 338
    return-void
.end method

.method protected buildIndexBarInformation(Landroid/database/Cursor;)V
    .registers 10
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 105
    iget-object v6, p0, Lcom/pantech/app/music/list/adapter/SeparaterPlaylistCursorAdapter;->mCursorLock:Ljava/lang/Object;

    monitor-enter v6

    .line 107
    if-eqz p1, :cond_93

    .line 109
    const/4 v4, 0x0

    .line 111
    .local v4, "prevPlaylist":I
    :try_start_6
    invoke-interface {p1}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v0

    .line 112
    .local v0, "columnNames":[Ljava/lang/String;
    iget-object v5, p0, Lcom/pantech/app/music/list/adapter/SeparaterPlaylistCursorAdapter;->mInternalList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 113
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_10
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-ge v1, v5, :cond_93

    .line 115
    invoke-interface {p1, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 116
    const-string v5, "_id"

    invoke-static {p1, v5}, Lcom/pantech/app/music/list/db/CursorUtils;->getCursorInt(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    .line 119
    .local v3, "playlistID":I
    if-nez v1, :cond_62

    if-gez v3, :cond_62

    .line 121
    new-instance v2, Ljava/util/Hashtable;

    invoke-direct {v2}, Ljava/util/Hashtable;-><init>()V

    .line 122
    .local v2, "item":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v5, "_id"

    const/4 v7, -0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v5, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    const-string v5, "seperator_type"

    const/16 v7, -0x65

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v5, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    const-string v5, "cursor_position"

    const/4 v7, -0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v5, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    iget-object v5, p0, Lcom/pantech/app/music/list/adapter/SeparaterPlaylistCursorAdapter;->mInternalList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 138
    .end local v2    # "item":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_4c
    :goto_4c
    invoke-static {p1, v0}, Lcom/pantech/app/music/list/module/QuerySimilartySort;->convertCursorToHashtable(Landroid/database/Cursor;[Ljava/lang/String;)Ljava/util/Hashtable;

    move-result-object v2

    .line 139
    .restart local v2    # "item":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v5, "cursor_position"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v5, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    iget-object v5, p0, Lcom/pantech/app/music/list/adapter/SeparaterPlaylistCursorAdapter;->mInternalList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 142
    move v4, v3

    .line 113
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 128
    .end local v2    # "item":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_62
    if-gez v4, :cond_4c

    if-ltz v3, :cond_4c

    .line 130
    new-instance v2, Ljava/util/Hashtable;

    invoke-direct {v2}, Ljava/util/Hashtable;-><init>()V

    .line 131
    .restart local v2    # "item":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v5, "_id"

    const/4 v7, -0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v5, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    const-string v5, "seperator_type"

    const/16 v7, -0x66

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v5, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    const-string v5, "cursor_position"

    const/4 v7, -0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v5, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    iget-object v5, p0, Lcom/pantech/app/music/list/adapter/SeparaterPlaylistCursorAdapter;->mInternalList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4c

    .line 145
    .end local v0    # "columnNames":[Ljava/lang/String;
    .end local v1    # "i":I
    .end local v2    # "item":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v3    # "playlistID":I
    .end local v4    # "prevPlaylist":I
    :catchall_90
    move-exception v5

    monitor-exit v6
    :try_end_92
    .catchall {:try_start_6 .. :try_end_92} :catchall_90

    throw v5

    :cond_93
    :try_start_93
    monitor-exit v6
    :try_end_94
    .catchall {:try_start_93 .. :try_end_94} :catchall_90

    .line 146
    return-void
.end method

.method public changeCursor(Landroid/database/Cursor;)V
    .registers 4
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 92
    iget-object v1, p0, Lcom/pantech/app/music/list/adapter/SeparaterPlaylistCursorAdapter;->mCursorLock:Ljava/lang/Object;

    monitor-enter v1

    .line 94
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/pantech/app/music/list/adapter/SeparaterPlaylistCursorAdapter;->buildIndexBarInformation(Landroid/database/Cursor;)V

    .line 95
    invoke-super {p0, p1}, Landroid/widget/CursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 96
    monitor-exit v1

    .line 97
    return-void

    .line 96
    :catchall_b
    move-exception v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v0
.end method

.method public cmChangeCursor(Landroid/database/Cursor;)V
    .registers 2
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 351
    invoke-virtual {p0, p1}, Lcom/pantech/app/music/list/adapter/SeparaterPlaylistCursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 352
    return-void
.end method

.method public cmClearAll()V
    .registers 2

    .prologue
    .line 455
    iget-object v0, p0, Lcom/pantech/app/music/list/adapter/SeparaterPlaylistCursorAdapter;->mInternalList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 457
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pantech/app/music/list/adapter/SeparaterPlaylistCursorAdapter;->mViewInflater:Landroid/view/LayoutInflater;

    .line 458
    return-void
.end method

.method public cmGetCount()I
    .registers 2

    .prologue
    .line 413
    invoke-virtual {p0}, Lcom/pantech/app/music/list/adapter/SeparaterPlaylistCursorAdapter;->getCount()I

    move-result v0

    return v0
.end method

.method public cmGetCursor()Landroid/database/Cursor;
    .registers 2

    .prologue
    .line 379
    invoke-virtual {p0}, Lcom/pantech/app/music/list/adapter/SeparaterPlaylistCursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public cmGetCursorLock()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 386
    iget-object v0, p0, Lcom/pantech/app/music/list/adapter/SeparaterPlaylistCursorAdapter;->mCursorLock:Ljava/lang/Object;

    return-object v0
.end method

.method public cmGetIndexBar()Lcom/pantech/app/music/list/adapter/helper/Indexbar;
    .registers 2

    .prologue
    .line 441
    const/4 v0, 0x0

    return-object v0
.end method

.method public cmGetIndexSeperaterHelper()Lcom/pantech/app/music/list/adapter/helper/IndexSeparatorHelper;
    .registers 2

    .prologue
    .line 448
    const/4 v0, 0x0

    return-object v0
.end method

.method public cmGetItem(I)Landroid/database/Cursor;
    .registers 3
    .param p1, "viewPosition"    # I

    .prologue
    .line 427
    invoke-virtual {p0, p1}, Lcom/pantech/app/music/list/adapter/SeparaterPlaylistCursorAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    return-object v0
.end method

.method public cmGetItemCount()I
    .registers 2

    .prologue
    .line 406
    invoke-virtual {p0}, Lcom/pantech/app/music/list/adapter/SeparaterPlaylistCursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v0, -0x1

    :goto_7
    return v0

    :cond_8
    invoke-virtual {p0}, Lcom/pantech/app/music/list/adapter/SeparaterPlaylistCursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    goto :goto_7
.end method

.method public cmGetItemPosition(I)I
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 400
    invoke-virtual {p0, p1}, Lcom/pantech/app/music/list/adapter/SeparaterPlaylistCursorAdapter;->getCursorPosition(I)I

    move-result v0

    return v0
.end method

.method public cmGetPageInfo()Lcom/pantech/app/music/list/PageInfoType;
    .registers 2

    .prologue
    .line 358
    iget-object v0, p0, Lcom/pantech/app/music/list/adapter/SeparaterPlaylistCursorAdapter;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    return-object v0
.end method

.method public cmGetViewPosition(I)I
    .registers 4
    .param p1, "cursorPosition"    # I

    .prologue
    .line 393
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\ud544\uc694 \uc5c6\uc5b4\uc11c \ubbf8\uad6c\ud604, \ud544\uc694\ud558\uba74 \uad6c\ud604 \ud544\uc694."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public cmGetViewType(I)Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewType;
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 372
    invoke-virtual {p0, p1}, Lcom/pantech/app/music/list/adapter/SeparaterPlaylistCursorAdapter;->getItemViewType(I)I

    move-result v0

    invoke-static {v0}, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewType;->fromOrdinal(I)Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewType;

    move-result-object v0

    return-object v0
.end method

.method public cmNotifyDataSetChanged()V
    .registers 1

    .prologue
    .line 420
    invoke-virtual {p0}, Lcom/pantech/app/music/list/adapter/SeparaterPlaylistCursorAdapter;->notifyDataSetChanged()V

    .line 421
    return-void
.end method

.method public cmResetIndexbarPosition()V
    .registers 1

    .prologue
    .line 435
    return-void
.end method

.method public cmSetPageInfo(Lcom/pantech/app/music/list/PageInfoType;)V
    .registers 2
    .param p1, "pageInfo"    # Lcom/pantech/app/music/list/PageInfoType;

    .prologue
    .line 365
    iput-object p1, p0, Lcom/pantech/app/music/list/adapter/SeparaterPlaylistCursorAdapter;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    .line 366
    return-void
.end method

.method public getCount()I
    .registers 2

    .prologue
    .line 266
    iget-object v0, p0, Lcom/pantech/app/music/list/adapter/SeparaterPlaylistCursorAdapter;->mInternalList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getCursorPosition(I)I
    .registers 6
    .param p1, "iInternalPosition"    # I

    .prologue
    const/4 v1, -0x1

    .line 150
    if-gez p1, :cond_4

    .line 161
    :goto_3
    return v1

    .line 153
    :cond_4
    iget-object v2, p0, Lcom/pantech/app/music/list/adapter/SeparaterPlaylistCursorAdapter;->mCursorLock:Ljava/lang/Object;

    monitor-enter v2

    .line 155
    :try_start_7
    iget-object v3, p0, Lcom/pantech/app/music/list/adapter/SeparaterPlaylistCursorAdapter;->mInternalList:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Hashtable;

    .line 156
    .local v0, "item":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz v0, :cond_22

    .line 158
    const-string v1, "cursor_position"

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    monitor-exit v2

    goto :goto_3

    .line 162
    .end local v0    # "item":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    :catchall_1f
    move-exception v1

    monitor-exit v2
    :try_end_21
    .catchall {:try_start_7 .. :try_end_21} :catchall_1f

    throw v1

    .line 161
    .restart local v0    # "item":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_22
    :try_start_22
    monitor-exit v2
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_1f

    goto :goto_3
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 4
    .param p1, "internalPosition"    # I

    .prologue
    .line 278
    invoke-virtual {p0, p1}, Lcom/pantech/app/music/list/adapter/SeparaterPlaylistCursorAdapter;->getCursorPosition(I)I

    move-result v0

    .line 279
    .local v0, "cursorPosition":I
    if-ltz v0, :cond_b

    .line 280
    invoke-super {p0, v0}, Landroid/widget/CursorAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    .line 282
    :goto_a
    return-object v1

    :cond_b
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public getItemViewType(I)I
    .registers 4
    .param p1, "iInternalPosition"    # I

    .prologue
    .line 294
    invoke-virtual {p0, p1}, Lcom/pantech/app/music/list/adapter/SeparaterPlaylistCursorAdapter;->getCursorPosition(I)I

    move-result v0

    .line 296
    .local v0, "cursorPos":I
    if-ltz v0, :cond_8

    .line 297
    const/4 v1, 0x0

    .line 299
    :goto_7
    return v1

    :cond_8
    const/4 v1, 0x1

    goto :goto_7
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 18
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 191
    iget-object v13, p0, Lcom/pantech/app/music/list/adapter/SeparaterPlaylistCursorAdapter;->mCursorLock:Ljava/lang/Object;

    monitor-enter v13

    .line 193
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/pantech/app/music/list/adapter/SeparaterPlaylistCursorAdapter;->getItemViewType(I)I

    move-result v10

    .line 195
    .local v10, "iViewType":I
    if-eqz p2, :cond_13

    .line 197
    move-object/from16 v1, p2

    .line 198
    .local v1, "view":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->clearAnimation()V

    .line 205
    :goto_e
    if-nez v1, :cond_18

    .line 206
    const/4 v1, 0x0

    monitor-exit v13

    .line 253
    .end local v1    # "view":Landroid/view/View;
    :goto_12
    return-object v1

    .line 202
    :cond_13
    invoke-direct {p0, v10}, Lcom/pantech/app/music/list/adapter/SeparaterPlaylistCursorAdapter;->newView(I)Landroid/view/View;

    move-result-object v1

    .restart local v1    # "view":Landroid/view/View;
    goto :goto_e

    .line 208
    :cond_18
    packed-switch v10, :pswitch_data_90

    .line 251
    :cond_1b
    :goto_1b
    monitor-exit v13

    goto :goto_12

    .end local v1    # "view":Landroid/view/View;
    .end local v10    # "iViewType":I
    :catchall_1d
    move-exception v0

    monitor-exit v13
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    throw v0

    .line 212
    .restart local v1    # "view":Landroid/view/View;
    .restart local v10    # "iViewType":I
    :pswitch_20
    :try_start_20
    iget-object v6, p0, Lcom/pantech/app/music/list/adapter/SeparaterPlaylistCursorAdapter;->mCursorLock:Ljava/lang/Object;

    monitor-enter v6
    :try_end_23
    .catchall {:try_start_20 .. :try_end_23} :catchall_1d

    .line 214
    :try_start_23
    invoke-virtual {p0}, Lcom/pantech/app/music/list/adapter/SeparaterPlaylistCursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v2

    .line 216
    .local v2, "cursor":Landroid/database/Cursor;
    invoke-virtual {p0, p1}, Lcom/pantech/app/music/list/adapter/SeparaterPlaylistCursorAdapter;->getCursorPosition(I)I

    move-result v9

    .line 218
    .local v9, "iMap":I
    const/4 v0, 0x1

    invoke-interface {v2, v9}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v3

    if-ne v0, v3, :cond_3d

    .line 220
    iget-object v0, p0, Lcom/pantech/app/music/list/adapter/SeparaterPlaylistCursorAdapter;->mAdapterBinderHelper:Lcom/pantech/app/music/list/adapter/helper/AdapterBindHelper;

    sget-object v3, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewType;->NORMAL_VIEW:Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewType;

    sget-object v4, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterBindType;->SEPARATER_SIMILARIRTY:Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterBindType;

    iget-object v5, p0, Lcom/pantech/app/music/list/adapter/SeparaterPlaylistCursorAdapter;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual/range {v0 .. v5}, Lcom/pantech/app/music/list/adapter/helper/AdapterBindHelper;->bindView(Landroid/view/View;Landroid/database/Cursor;Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewType;Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterBindType;Lcom/pantech/app/music/list/PageInfoType;)V

    .line 222
    :cond_3d
    monitor-exit v6

    goto :goto_1b

    .end local v2    # "cursor":Landroid/database/Cursor;
    .end local v9    # "iMap":I
    :catchall_3f
    move-exception v0

    monitor-exit v6
    :try_end_41
    .catchall {:try_start_23 .. :try_end_41} :catchall_3f

    :try_start_41
    throw v0

    .line 228
    :pswitch_42
    const v0, 0x7f100121

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 229
    .local v12, "text":Landroid/widget/TextView;
    if-eqz v12, :cond_1b

    .line 231
    iget-object v0, p0, Lcom/pantech/app/music/list/adapter/SeparaterPlaylistCursorAdapter;->mInternalList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Hashtable;

    const-string v3, "seperator_type"

    invoke-virtual {v0, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 233
    .local v11, "seperatorType":I
    packed-switch v11, :pswitch_data_98

    .line 244
    :goto_64
    iget-object v0, p0, Lcom/pantech/app/music/list/adapter/SeparaterPlaylistCursorAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0f014a

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 246
    iget-object v3, p0, Lcom/pantech/app/music/list/adapter/SeparaterPlaylistCursorAdapter;->mAdapterBinderHelper:Lcom/pantech/app/music/list/adapter/helper/AdapterBindHelper;

    const/4 v5, 0x0

    sget-object v6, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewType;->SEPARATER_VIEW:Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewType;

    sget-object v7, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterBindType;->SEPARATER_SIMILARIRTY:Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterBindType;

    iget-object v8, p0, Lcom/pantech/app/music/list/adapter/SeparaterPlaylistCursorAdapter;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    move-object v4, v1

    invoke-virtual/range {v3 .. v8}, Lcom/pantech/app/music/list/adapter/helper/AdapterBindHelper;->bindView(Landroid/view/View;Landroid/database/Cursor;Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewType;Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterBindType;Lcom/pantech/app/music/list/PageInfoType;)V

    goto :goto_1b

    .line 236
    :pswitch_82
    const v0, 0x7f0800c9

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_64

    .line 240
    :pswitch_89
    const v0, 0x7f0800ca

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setText(I)V
    :try_end_8f
    .catchall {:try_start_41 .. :try_end_8f} :catchall_1d

    goto :goto_64

    .line 208
    :pswitch_data_90
    .packed-switch 0x0
        :pswitch_20
        :pswitch_42
    .end packed-switch

    .line 233
    :pswitch_data_98
    .packed-switch -0x66
        :pswitch_89
        :pswitch_82
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .registers 2

    .prologue
    .line 305
    const/4 v0, 0x2

    return v0
.end method

.method public isEnabled(I)Z
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 311
    invoke-virtual {p0, p1}, Lcom/pantech/app/music/list/adapter/SeparaterPlaylistCursorAdapter;->getItemViewType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_c

    .line 317
    const/4 v0, 0x1

    :goto_8
    return v0

    .line 314
    :pswitch_9
    const/4 v0, 0x0

    goto :goto_8

    .line 311
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
    .line 344
    const/4 v0, 0x0

    return-object v0
.end method

.method public notifyDataSetChanged()V
    .registers 4

    .prologue
    .line 62
    const-string v1, "notifyDataSetChanged"

    invoke-static {v1}, Lcom/pantech/app/music/utils/MLog;->i(Ljava/lang/String;)V

    .line 64
    iget-object v2, p0, Lcom/pantech/app/music/list/adapter/SeparaterPlaylistCursorAdapter;->mCursorLock:Ljava/lang/Object;

    monitor-enter v2

    .line 66
    :try_start_8
    invoke-virtual {p0}, Lcom/pantech/app/music/list/adapter/SeparaterPlaylistCursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 69
    .local v0, "cursor":Landroid/database/Cursor;
    if-eqz v0, :cond_17

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_17

    .line 71
    invoke-virtual {p0, v0}, Lcom/pantech/app/music/list/adapter/SeparaterPlaylistCursorAdapter;->buildIndexBarInformation(Landroid/database/Cursor;)V

    .line 74
    :cond_17
    invoke-super {p0}, Landroid/widget/CursorAdapter;->notifyDataSetChanged()V

    .line 75
    monitor-exit v2

    .line 76
    return-void

    .line 75
    .end local v0    # "cursor":Landroid/database/Cursor;
    :catchall_1c
    move-exception v1

    monitor-exit v2
    :try_end_1e
    .catchall {:try_start_8 .. :try_end_1e} :catchall_1c

    throw v1
.end method

.method public notifyDataSetInvalidated()V
    .registers 3

    .prologue
    .line 81
    const-string v0, "notifyDataSetInvalidated"

    invoke-static {v0}, Lcom/pantech/app/music/utils/MLog;->i(Ljava/lang/String;)V

    .line 83
    iget-object v1, p0, Lcom/pantech/app/music/list/adapter/SeparaterPlaylistCursorAdapter;->mCursorLock:Ljava/lang/Object;

    monitor-enter v1

    .line 85
    :try_start_8
    invoke-super {p0}, Landroid/widget/CursorAdapter;->notifyDataSetInvalidated()V

    .line 86
    monitor-exit v1

    .line 87
    return-void

    .line 86
    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_8 .. :try_end_f} :catchall_d

    throw v0
.end method
