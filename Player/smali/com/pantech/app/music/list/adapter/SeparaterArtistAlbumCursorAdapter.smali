.class public Lcom/pantech/app/music/list/adapter/SeparaterArtistAlbumCursorAdapter;
.super Landroid/widget/CursorAdapter;
.source "SeparaterArtistAlbumCursorAdapter.java"

# interfaces
.implements Lcom/pantech/app/music/list/adapter/IAdapterCommon;


# static fields
.field static final TAG:Ljava/lang/String; = "VMusicAdapterTag"


# instance fields
.field mAdapterBinderHelper:Lcom/pantech/app/music/list/adapter/helper/AdapterBindHelper;

.field mChildResID:I

.field protected mContext:Landroid/content/Context;

.field mCursorLock:Ljava/lang/Object;

.field mInternalSeparaterHelper:Lcom/pantech/app/music/list/adapter/helper/ArtistAlbumSeparatorHelper;

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

    .line 46
    invoke-direct {p0, p1, v1, v0}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 30
    iput v0, p0, Lcom/pantech/app/music/list/adapter/SeparaterArtistAlbumCursorAdapter;->mChildResID:I

    .line 32
    iput-object v1, p0, Lcom/pantech/app/music/list/adapter/SeparaterArtistAlbumCursorAdapter;->mContext:Landroid/content/Context;

    .line 48
    iput-object p1, p0, Lcom/pantech/app/music/list/adapter/SeparaterArtistAlbumCursorAdapter;->mContext:Landroid/content/Context;

    .line 50
    iput-object p2, p0, Lcom/pantech/app/music/list/adapter/SeparaterArtistAlbumCursorAdapter;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    .line 52
    iput-object p6, p0, Lcom/pantech/app/music/list/adapter/SeparaterArtistAlbumCursorAdapter;->mCursorLock:Ljava/lang/Object;

    .line 54
    iput p3, p0, Lcom/pantech/app/music/list/adapter/SeparaterArtistAlbumCursorAdapter;->mChildResID:I

    .line 56
    new-instance v0, Lcom/pantech/app/music/list/adapter/helper/AdapterBindHelper;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/pantech/app/music/list/adapter/helper/AdapterBindHelper;-><init>(Landroid/content/Context;Lcom/pantech/app/music/list/PageInfoType;Lcom/pantech/app/music/list/fragment/IFragmentCommon;Lcom/pantech/app/music/list/fragment/IFragmentCommonCallback;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/pantech/app/music/list/adapter/SeparaterArtistAlbumCursorAdapter;->mAdapterBinderHelper:Lcom/pantech/app/music/list/adapter/helper/AdapterBindHelper;

    .line 58
    new-instance v0, Lcom/pantech/app/music/list/adapter/helper/ArtistAlbumSeparatorHelper;

    invoke-direct {v0, p1, p6}, Lcom/pantech/app/music/list/adapter/helper/ArtistAlbumSeparatorHelper;-><init>(Landroid/content/Context;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/pantech/app/music/list/adapter/SeparaterArtistAlbumCursorAdapter;->mInternalSeparaterHelper:Lcom/pantech/app/music/list/adapter/helper/ArtistAlbumSeparatorHelper;

    .line 60
    iget-object v0, p0, Lcom/pantech/app/music/list/adapter/SeparaterArtistAlbumCursorAdapter;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/pantech/app/music/list/adapter/SeparaterArtistAlbumCursorAdapter;->mViewInflater:Landroid/view/LayoutInflater;

    .line 61
    return-void
.end method

.method private newView(I)Landroid/view/View;
    .registers 8
    .param p1, "iViewType"    # I

    .prologue
    const/4 v4, 0x0

    .line 147
    const/4 v1, 0x0

    .line 149
    .local v1, "view":Landroid/view/View;
    packed-switch p1, :pswitch_data_3c

    .line 171
    :goto_5
    return-object v1

    .line 152
    :pswitch_6
    iget-object v2, p0, Lcom/pantech/app/music/list/adapter/SeparaterArtistAlbumCursorAdapter;->mViewInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f030076

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 154
    const v2, 0x7f100122

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 156
    .local v0, "album_play_view":Landroid/view/View;
    if-eqz v0, :cond_1c

    .line 158
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setFocusable(Z)V

    .line 161
    :cond_1c
    iget-object v2, p0, Lcom/pantech/app/music/list/adapter/SeparaterArtistAlbumCursorAdapter;->mAdapterBinderHelper:Lcom/pantech/app/music/list/adapter/helper/AdapterBindHelper;

    sget-object v3, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewType;->SEPARATER_VIEW:Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewType;

    sget-object v4, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterBindType;->SEPARATER_ARTIST:Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterBindType;

    iget-object v5, p0, Lcom/pantech/app/music/list/adapter/SeparaterArtistAlbumCursorAdapter;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v2, v1, v3, v4, v5}, Lcom/pantech/app/music/list/adapter/helper/AdapterBindHelper;->newView(Landroid/view/View;Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewType;Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterBindType;Lcom/pantech/app/music/list/PageInfoType;)V

    goto :goto_5

    .line 165
    .end local v0    # "album_play_view":Landroid/view/View;
    :pswitch_28
    iget-object v2, p0, Lcom/pantech/app/music/list/adapter/SeparaterArtistAlbumCursorAdapter;->mViewInflater:Landroid/view/LayoutInflater;

    iget v3, p0, Lcom/pantech/app/music/list/adapter/SeparaterArtistAlbumCursorAdapter;->mChildResID:I

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 167
    iget-object v2, p0, Lcom/pantech/app/music/list/adapter/SeparaterArtistAlbumCursorAdapter;->mAdapterBinderHelper:Lcom/pantech/app/music/list/adapter/helper/AdapterBindHelper;

    sget-object v3, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewType;->NORMAL_VIEW:Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewType;

    sget-object v4, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterBindType;->SEPARATER_ARTIST:Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterBindType;

    iget-object v5, p0, Lcom/pantech/app/music/list/adapter/SeparaterArtistAlbumCursorAdapter;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v2, v1, v3, v4, v5}, Lcom/pantech/app/music/list/adapter/helper/AdapterBindHelper;->newView(Landroid/view/View;Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewType;Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterBindType;Lcom/pantech/app/music/list/PageInfoType;)V

    goto :goto_5

    .line 149
    :pswitch_data_3c
    .packed-switch 0x0
        :pswitch_28
        :pswitch_6
    .end packed-switch
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .registers 2

    .prologue
    .line 352
    const/4 v0, 0x0

    return v0
.end method

.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 360
    return-void
.end method

.method public changeCursor(Landroid/database/Cursor;)V
    .registers 4
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 113
    iget-object v1, p0, Lcom/pantech/app/music/list/adapter/SeparaterArtistAlbumCursorAdapter;->mCursorLock:Ljava/lang/Object;

    monitor-enter v1

    .line 116
    if-eqz p1, :cond_10

    :try_start_5
    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_10

    .line 118
    iget-object v0, p0, Lcom/pantech/app/music/list/adapter/SeparaterArtistAlbumCursorAdapter;->mInternalSeparaterHelper:Lcom/pantech/app/music/list/adapter/helper/ArtistAlbumSeparatorHelper;

    invoke-virtual {v0, p1}, Lcom/pantech/app/music/list/adapter/helper/ArtistAlbumSeparatorHelper;->buildInternalList(Landroid/database/Cursor;)V

    .line 121
    :cond_10
    invoke-super {p0, p1}, Landroid/widget/CursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 122
    monitor-exit v1

    .line 123
    return-void

    .line 122
    :catchall_15
    move-exception v0

    monitor-exit v1
    :try_end_17
    .catchall {:try_start_5 .. :try_end_17} :catchall_15

    throw v0
.end method

.method public cmChangeCursor(Landroid/database/Cursor;)V
    .registers 2
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 371
    invoke-virtual {p0, p1}, Lcom/pantech/app/music/list/adapter/SeparaterArtistAlbumCursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 372
    return-void
.end method

.method public cmClearAll()V
    .registers 2

    .prologue
    .line 462
    iget-object v0, p0, Lcom/pantech/app/music/list/adapter/SeparaterArtistAlbumCursorAdapter;->mInternalSeparaterHelper:Lcom/pantech/app/music/list/adapter/helper/ArtistAlbumSeparatorHelper;

    invoke-virtual {v0}, Lcom/pantech/app/music/list/adapter/helper/ArtistAlbumSeparatorHelper;->clearAll()V

    .line 463
    return-void
.end method

.method public cmGetCount()I
    .registers 2

    .prologue
    .line 420
    invoke-virtual {p0}, Lcom/pantech/app/music/list/adapter/SeparaterArtistAlbumCursorAdapter;->getCount()I

    move-result v0

    return v0
.end method

.method public cmGetCursor()Landroid/database/Cursor;
    .registers 2

    .prologue
    .line 395
    invoke-virtual {p0}, Lcom/pantech/app/music/list/adapter/SeparaterArtistAlbumCursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public cmGetCursorLock()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 426
    iget-object v0, p0, Lcom/pantech/app/music/list/adapter/SeparaterArtistAlbumCursorAdapter;->mCursorLock:Ljava/lang/Object;

    return-object v0
.end method

.method public cmGetIndexBar()Lcom/pantech/app/music/list/adapter/helper/Indexbar;
    .registers 2

    .prologue
    .line 450
    const/4 v0, 0x0

    return-object v0
.end method

.method public cmGetIndexSeperaterHelper()Lcom/pantech/app/music/list/adapter/helper/IndexSeparatorHelper;
    .registers 2

    .prologue
    .line 456
    const/4 v0, 0x0

    return-object v0
.end method

.method public cmGetItem(I)Landroid/database/Cursor;
    .registers 3
    .param p1, "viewPosition"    # I

    .prologue
    .line 438
    invoke-virtual {p0, p1}, Lcom/pantech/app/music/list/adapter/SeparaterArtistAlbumCursorAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    return-object v0
.end method

.method public cmGetItemCount()I
    .registers 2

    .prologue
    .line 414
    invoke-virtual {p0}, Lcom/pantech/app/music/list/adapter/SeparaterArtistAlbumCursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v0, -0x1

    :goto_7
    return v0

    :cond_8
    invoke-virtual {p0}, Lcom/pantech/app/music/list/adapter/SeparaterArtistAlbumCursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    goto :goto_7
.end method

.method public cmGetItemPosition(I)I
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 408
    invoke-virtual {p0, p1}, Lcom/pantech/app/music/list/adapter/SeparaterArtistAlbumCursorAdapter;->getCursorPosition(I)I

    move-result v0

    return v0
.end method

.method public cmGetPageInfo()Lcom/pantech/app/music/list/PageInfoType;
    .registers 2

    .prologue
    .line 377
    iget-object v0, p0, Lcom/pantech/app/music/list/adapter/SeparaterArtistAlbumCursorAdapter;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    return-object v0
.end method

.method public cmGetViewPosition(I)I
    .registers 4
    .param p1, "cursorPosition"    # I

    .prologue
    .line 402
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\ud544\uc694 \uc5c6\uc5b4\uc11c \ubbf8\uad6c\ud604, \ud544\uc694\ud558\uba74 \uad6c\ud604 \ud544\uc694."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public cmGetViewType(I)Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewType;
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 389
    invoke-virtual {p0, p1}, Lcom/pantech/app/music/list/adapter/SeparaterArtistAlbumCursorAdapter;->getItemViewType(I)I

    move-result v0

    invoke-static {v0}, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewType;->fromOrdinal(I)Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewType;

    move-result-object v0

    return-object v0
.end method

.method public cmNotifyDataSetChanged()V
    .registers 1

    .prologue
    .line 432
    invoke-virtual {p0}, Lcom/pantech/app/music/list/adapter/SeparaterArtistAlbumCursorAdapter;->notifyDataSetChanged()V

    .line 433
    return-void
.end method

.method public cmResetIndexbarPosition()V
    .registers 1

    .prologue
    .line 445
    return-void
.end method

.method public cmSetPageInfo(Lcom/pantech/app/music/list/PageInfoType;)V
    .registers 2
    .param p1, "pageInfo"    # Lcom/pantech/app/music/list/PageInfoType;

    .prologue
    .line 383
    iput-object p1, p0, Lcom/pantech/app/music/list/adapter/SeparaterArtistAlbumCursorAdapter;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    .line 384
    return-void
.end method

.method public getCount()I
    .registers 2

    .prologue
    .line 267
    iget-object v0, p0, Lcom/pantech/app/music/list/adapter/SeparaterArtistAlbumCursorAdapter;->mInternalSeparaterHelper:Lcom/pantech/app/music/list/adapter/helper/ArtistAlbumSeparatorHelper;

    invoke-virtual {v0}, Lcom/pantech/app/music/list/adapter/helper/ArtistAlbumSeparatorHelper;->getInternalListSize()I

    move-result v0

    return v0
.end method

.method public getCursorPosition(I)I
    .registers 6
    .param p1, "iInternalPosition"    # I

    .prologue
    const/4 v1, -0x1

    .line 127
    if-gez p1, :cond_4

    .line 141
    :goto_3
    return v1

    .line 130
    :cond_4
    iget-object v2, p0, Lcom/pantech/app/music/list/adapter/SeparaterArtistAlbumCursorAdapter;->mCursorLock:Ljava/lang/Object;

    monitor-enter v2

    .line 132
    :try_start_7
    iget-object v3, p0, Lcom/pantech/app/music/list/adapter/SeparaterArtistAlbumCursorAdapter;->mInternalSeparaterHelper:Lcom/pantech/app/music/list/adapter/helper/ArtistAlbumSeparatorHelper;

    invoke-virtual {v3}, Lcom/pantech/app/music/list/adapter/helper/ArtistAlbumSeparatorHelper;->getInternalListSize()I

    move-result v3

    if-ge p1, v3, :cond_28

    .line 134
    iget-object v3, p0, Lcom/pantech/app/music/list/adapter/SeparaterArtistAlbumCursorAdapter;->mInternalSeparaterHelper:Lcom/pantech/app/music/list/adapter/helper/ArtistAlbumSeparatorHelper;

    invoke-virtual {v3, p1}, Lcom/pantech/app/music/list/adapter/helper/ArtistAlbumSeparatorHelper;->getInternalItem(I)Ljava/util/Hashtable;

    move-result-object v0

    .line 135
    .local v0, "item":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz v0, :cond_28

    .line 137
    const-string v1, "cursor_position"

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    monitor-exit v2

    goto :goto_3

    .line 142
    .end local v0    # "item":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    :catchall_25
    move-exception v1

    monitor-exit v2
    :try_end_27
    .catchall {:try_start_7 .. :try_end_27} :catchall_25

    throw v1

    .line 141
    :cond_28
    :try_start_28
    monitor-exit v2
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_25

    goto :goto_3
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 4
    .param p1, "internalPosition"    # I

    .prologue
    .line 289
    invoke-virtual {p0, p1}, Lcom/pantech/app/music/list/adapter/SeparaterArtistAlbumCursorAdapter;->getCursorPosition(I)I

    move-result v0

    .line 290
    .local v0, "cursorPosition":I
    if-ltz v0, :cond_b

    .line 291
    invoke-super {p0, v0}, Landroid/widget/CursorAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    .line 293
    :goto_a
    return-object v1

    :cond_b
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public getItemId(I)J
    .registers 6
    .param p1, "iInternalPosition"    # I

    .prologue
    .line 273
    invoke-virtual {p0, p1}, Lcom/pantech/app/music/list/adapter/SeparaterArtistAlbumCursorAdapter;->getCursorPosition(I)I

    move-result v0

    .line 274
    .local v0, "cursorPosition":I
    if-ltz v0, :cond_b

    .line 275
    invoke-super {p0, v0}, Landroid/widget/CursorAdapter;->getItemId(I)J

    move-result-wide v2

    .line 277
    :goto_a
    return-wide v2

    :cond_b
    const-wide/16 v2, -0x1

    goto :goto_a
.end method

.method public getItemViewType(I)I
    .registers 6
    .param p1, "iInternalPosition"    # I

    .prologue
    .line 305
    const/4 v1, 0x0

    .line 306
    .local v1, "seperatorType":I
    iget-object v3, p0, Lcom/pantech/app/music/list/adapter/SeparaterArtistAlbumCursorAdapter;->mCursorLock:Ljava/lang/Object;

    monitor-enter v3

    .line 308
    :try_start_4
    iget-object v2, p0, Lcom/pantech/app/music/list/adapter/SeparaterArtistAlbumCursorAdapter;->mInternalSeparaterHelper:Lcom/pantech/app/music/list/adapter/helper/ArtistAlbumSeparatorHelper;

    invoke-virtual {v2, p1}, Lcom/pantech/app/music/list/adapter/helper/ArtistAlbumSeparatorHelper;->getInternalItem(I)Ljava/util/Hashtable;

    move-result-object v0

    .line 309
    .local v0, "item":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz v0, :cond_18

    .line 311
    const-string v2, "seperator_type"

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 313
    :cond_18
    monitor-exit v3

    .line 315
    const/16 v2, -0x64

    if-ne v1, v2, :cond_22

    .line 316
    const/4 v2, 0x1

    .line 318
    :goto_1e
    return v2

    .line 313
    .end local v0    # "item":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    :catchall_1f
    move-exception v2

    monitor-exit v3
    :try_end_21
    .catchall {:try_start_4 .. :try_end_21} :catchall_1f

    throw v2

    .line 318
    .restart local v0    # "item":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_22
    const/4 v2, 0x0

    goto :goto_1e
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 24
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 179
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/app/music/list/adapter/SeparaterArtistAlbumCursorAdapter;->mCursorLock:Ljava/lang/Object;

    move-object/from16 v19, v0

    monitor-enter v19

    .line 181
    :try_start_7
    invoke-virtual/range {p0 .. p1}, Lcom/pantech/app/music/list/adapter/SeparaterArtistAlbumCursorAdapter;->getItemViewType(I)I

    move-result v17

    .line 183
    .local v17, "iViewType":I
    if-eqz p2, :cond_17

    .line 185
    move-object/from16 v3, p2

    .line 186
    .local v3, "view":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->clearAnimation()V

    .line 193
    :goto_12
    if-nez v3, :cond_20

    .line 194
    const/4 v3, 0x0

    monitor-exit v19

    .line 254
    .end local v3    # "view":Landroid/view/View;
    :goto_16
    return-object v3

    .line 190
    :cond_17
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/pantech/app/music/list/adapter/SeparaterArtistAlbumCursorAdapter;->newView(I)Landroid/view/View;

    move-result-object v3

    .restart local v3    # "view":Landroid/view/View;
    goto :goto_12

    .line 196
    :cond_20
    packed-switch v17, :pswitch_data_112

    .line 252
    :cond_23
    :goto_23
    monitor-exit v19

    goto :goto_16

    .end local v3    # "view":Landroid/view/View;
    .end local v17    # "iViewType":I
    :catchall_25
    move-exception v2

    monitor-exit v19
    :try_end_27
    .catchall {:try_start_7 .. :try_end_27} :catchall_25

    throw v2

    .line 200
    .restart local v3    # "view":Landroid/view/View;
    .restart local v17    # "iViewType":I
    :pswitch_28
    :try_start_28
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/pantech/app/music/list/adapter/SeparaterArtistAlbumCursorAdapter;->mCursorLock:Ljava/lang/Object;

    monitor-enter v8
    :try_end_2d
    .catchall {:try_start_28 .. :try_end_2d} :catchall_25

    .line 202
    :try_start_2d
    invoke-virtual/range {p0 .. p0}, Lcom/pantech/app/music/list/adapter/SeparaterArtistAlbumCursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v4

    .line 204
    .local v4, "cursor":Landroid/database/Cursor;
    invoke-virtual/range {p0 .. p1}, Lcom/pantech/app/music/list/adapter/SeparaterArtistAlbumCursorAdapter;->getCursorPosition(I)I

    move-result v16

    .line 206
    .local v16, "iMap":I
    const/4 v2, 0x1

    move/from16 v0, v16

    invoke-interface {v4, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v5

    if-ne v2, v5, :cond_4d

    .line 208
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/app/music/list/adapter/SeparaterArtistAlbumCursorAdapter;->mAdapterBinderHelper:Lcom/pantech/app/music/list/adapter/helper/AdapterBindHelper;

    sget-object v5, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewType;->NORMAL_VIEW:Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewType;

    sget-object v6, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterBindType;->SEPARATER_ARTIST:Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterBindType;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/pantech/app/music/list/adapter/SeparaterArtistAlbumCursorAdapter;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual/range {v2 .. v7}, Lcom/pantech/app/music/list/adapter/helper/AdapterBindHelper;->bindView(Landroid/view/View;Landroid/database/Cursor;Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewType;Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterBindType;Lcom/pantech/app/music/list/PageInfoType;)V

    .line 210
    :cond_4d
    monitor-exit v8

    goto :goto_23

    .end local v4    # "cursor":Landroid/database/Cursor;
    .end local v16    # "iMap":I
    :catchall_4f
    move-exception v2

    monitor-exit v8
    :try_end_51
    .catchall {:try_start_2d .. :try_end_51} :catchall_4f

    :try_start_51
    throw v2

    .line 216
    :pswitch_52
    const v2, 0x7f100122

    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    .line 217
    .local v12, "album_play_view":Landroid/view/View;
    const v2, 0x7f100121

    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/TextView;

    .line 218
    .local v18, "text":Landroid/widget/TextView;
    const v2, 0x7f100122

    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/Button;

    .line 220
    .local v14, "button":Landroid/widget/Button;
    if-eqz v18, :cond_23

    if-eqz v14, :cond_23

    if-eqz v12, :cond_23

    .line 222
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/app/music/list/adapter/SeparaterArtistAlbumCursorAdapter;->mInternalSeparaterHelper:Lcom/pantech/app/music/list/adapter/helper/ArtistAlbumSeparatorHelper;

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/pantech/app/music/list/adapter/helper/ArtistAlbumSeparatorHelper;->getInternalItem(I)Ljava/util/Hashtable;

    move-result-object v2

    const-string v5, "album"

    invoke-virtual {v2, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 223
    .local v15, "headerString":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/app/music/list/adapter/SeparaterArtistAlbumCursorAdapter;->mInternalSeparaterHelper:Lcom/pantech/app/music/list/adapter/helper/ArtistAlbumSeparatorHelper;

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/pantech/app/music/list/adapter/helper/ArtistAlbumSeparatorHelper;->getInternalItem(I)Ljava/util/Hashtable;

    move-result-object v2

    const-string v5, "album_id"

    invoke-virtual {v2, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 224
    .local v11, "albumID":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/app/music/list/adapter/SeparaterArtistAlbumCursorAdapter;->mInternalSeparaterHelper:Lcom/pantech/app/music/list/adapter/helper/ArtistAlbumSeparatorHelper;

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/pantech/app/music/list/adapter/helper/ArtistAlbumSeparatorHelper;->getInternalItem(I)Ljava/util/Hashtable;

    move-result-object v2

    const-string v5, "artist_id"

    invoke-virtual {v2, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 226
    .local v13, "artistID":I
    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 228
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/app/music/list/adapter/SeparaterArtistAlbumCursorAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f0f014a

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 230
    const v2, 0x7f100010

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v14, v2, v5}, Landroid/widget/Button;->setTag(ILjava/lang/Object;)V

    .line 231
    const v2, 0x7f100011

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v14, v2, v5}, Landroid/widget/Button;->setTag(ILjava/lang/Object;)V

    .line 233
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/app/music/list/adapter/SeparaterArtistAlbumCursorAdapter;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v2}, Lcom/pantech/app/music/list/PageInfoType;->isSelectable()Z

    move-result v2

    if-eqz v2, :cond_fe

    .line 235
    const/16 v2, 0x8

    invoke-virtual {v12, v2}, Landroid/view/View;->setVisibility(I)V

    .line 247
    :goto_eb
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/pantech/app/music/list/adapter/SeparaterArtistAlbumCursorAdapter;->mAdapterBinderHelper:Lcom/pantech/app/music/list/adapter/helper/AdapterBindHelper;

    const/4 v7, 0x0

    sget-object v8, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewType;->SEPARATER_VIEW:Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewType;

    sget-object v9, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterBindType;->SEPARATER_ARTIST:Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterBindType;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/pantech/app/music/list/adapter/SeparaterArtistAlbumCursorAdapter;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    move-object v6, v3

    invoke-virtual/range {v5 .. v10}, Lcom/pantech/app/music/list/adapter/helper/AdapterBindHelper;->bindView(Landroid/view/View;Landroid/database/Cursor;Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewType;Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterBindType;Lcom/pantech/app/music/list/PageInfoType;)V

    goto/16 :goto_23

    .line 239
    :cond_fe
    const/4 v2, 0x0

    invoke-virtual {v12, v2}, Landroid/view/View;->setVisibility(I)V

    .line 242
    const/4 v2, 0x0

    invoke-virtual {v3, v2}, Landroid/view/View;->setFocusable(Z)V

    .line 243
    const/4 v2, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 244
    const/4 v2, 0x1

    invoke-virtual {v14, v2}, Landroid/widget/Button;->setFocusable(Z)V
    :try_end_110
    .catchall {:try_start_51 .. :try_end_110} :catchall_25

    goto :goto_eb

    .line 196
    nop

    :pswitch_data_112
    .packed-switch 0x0
        :pswitch_28
        :pswitch_52
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .registers 2

    .prologue
    .line 324
    const/4 v0, 0x2

    return v0
.end method

.method public isEnabled(I)Z
    .registers 4
    .param p1, "position"    # I

    .prologue
    const/4 v0, 0x1

    .line 330
    invoke-virtual {p0, p1}, Lcom/pantech/app/music/list/adapter/SeparaterArtistAlbumCursorAdapter;->getItemViewType(I)I

    move-result v1

    packed-switch v1, :pswitch_data_14

    .line 340
    :cond_8
    :goto_8
    return v0

    .line 334
    :pswitch_9
    iget-object v1, p0, Lcom/pantech/app/music/list/adapter/SeparaterArtistAlbumCursorAdapter;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v1}, Lcom/pantech/app/music/list/PageInfoType;->isSelectable()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 335
    const/4 v0, 0x0

    goto :goto_8

    .line 330
    nop

    :pswitch_data_14
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
    .line 365
    const/4 v0, 0x0

    return-object v0
.end method

.method public notifyDataSetChanged()V
    .registers 4

    .prologue
    .line 66
    const-string v1, "VMusicAdapterTag"

    const-string v2, "notifyDataSetChanged"

    invoke-static {v1, v2}, Lcom/pantech/app/music/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    iget-object v2, p0, Lcom/pantech/app/music/list/adapter/SeparaterArtistAlbumCursorAdapter;->mCursorLock:Ljava/lang/Object;

    monitor-enter v2

    .line 70
    :try_start_a
    invoke-virtual {p0}, Lcom/pantech/app/music/list/adapter/SeparaterArtistAlbumCursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 73
    .local v0, "cursor":Landroid/database/Cursor;
    if-eqz v0, :cond_1b

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_1b

    .line 75
    iget-object v1, p0, Lcom/pantech/app/music/list/adapter/SeparaterArtistAlbumCursorAdapter;->mInternalSeparaterHelper:Lcom/pantech/app/music/list/adapter/helper/ArtistAlbumSeparatorHelper;

    invoke-virtual {v1, v0}, Lcom/pantech/app/music/list/adapter/helper/ArtistAlbumSeparatorHelper;->buildInternalList(Landroid/database/Cursor;)V

    .line 78
    :cond_1b
    invoke-super {p0}, Landroid/widget/CursorAdapter;->notifyDataSetChanged()V

    .line 79
    monitor-exit v2

    .line 80
    return-void

    .line 79
    .end local v0    # "cursor":Landroid/database/Cursor;
    :catchall_20
    move-exception v1

    monitor-exit v2
    :try_end_22
    .catchall {:try_start_a .. :try_end_22} :catchall_20

    throw v1
.end method

.method public notifyDataSetInvalidated()V
    .registers 3

    .prologue
    .line 102
    const-string v0, "VMusicAdapterTag"

    const-string v1, "notifyDataSetInvalidated"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    iget-object v1, p0, Lcom/pantech/app/music/list/adapter/SeparaterArtistAlbumCursorAdapter;->mCursorLock:Ljava/lang/Object;

    monitor-enter v1

    .line 106
    :try_start_a
    invoke-super {p0}, Landroid/widget/CursorAdapter;->notifyDataSetInvalidated()V

    .line 107
    monitor-exit v1

    .line 108
    return-void

    .line 107
    :catchall_f
    move-exception v0

    monitor-exit v1
    :try_end_11
    .catchall {:try_start_a .. :try_end_11} :catchall_f

    throw v0
.end method

.method protected onContentChanged()V
    .registers 4

    .prologue
    .line 85
    iget-object v2, p0, Lcom/pantech/app/music/list/adapter/SeparaterArtistAlbumCursorAdapter;->mCursorLock:Ljava/lang/Object;

    monitor-enter v2

    .line 87
    :try_start_3
    invoke-virtual {p0}, Lcom/pantech/app/music/list/adapter/SeparaterArtistAlbumCursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 90
    .local v0, "cursor":Landroid/database/Cursor;
    if-eqz v0, :cond_14

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_14

    .line 92
    iget-object v1, p0, Lcom/pantech/app/music/list/adapter/SeparaterArtistAlbumCursorAdapter;->mInternalSeparaterHelper:Lcom/pantech/app/music/list/adapter/helper/ArtistAlbumSeparatorHelper;

    invoke-virtual {v1, v0}, Lcom/pantech/app/music/list/adapter/helper/ArtistAlbumSeparatorHelper;->buildInternalList(Landroid/database/Cursor;)V

    .line 95
    :cond_14
    invoke-super {p0}, Landroid/widget/CursorAdapter;->onContentChanged()V

    .line 96
    monitor-exit v2

    .line 97
    return-void

    .line 96
    .end local v0    # "cursor":Landroid/database/Cursor;
    :catchall_19
    move-exception v1

    monitor-exit v2
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw v1
.end method
