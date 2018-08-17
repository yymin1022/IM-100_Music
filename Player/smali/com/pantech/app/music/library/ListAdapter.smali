.class public Lcom/pantech/app/music/library/ListAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "ListAdapter.java"

# interfaces
.implements Lcom/pantech/app/music/library/IListAdapter;
.implements Lcom/pantech/app/music/library/helper/ItemTouchHelperAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/app/music/library/ListAdapter$1;,
        Lcom/pantech/app/music/library/ListAdapter$ListItemDecoration;,
        Lcom/pantech/app/music/library/ListAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lcom/pantech/app/music/library/ListAdapter$ViewHolder;",
        ">;",
        "Lcom/pantech/app/music/library/IListAdapter;",
        "Lcom/pantech/app/music/library/helper/ItemTouchHelperAdapter;"
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private mActionMode:Lcom/pantech/app/music/library/ActionModeInfo;

.field private mArrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/pantech/app/music/library/IListHolderHelper$ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mAvailableCount:I

.field private mBlockUpdateForListChanged:Z

.field private mContext:Landroid/content/Context;

.field private mCursor:Landroid/database/Cursor;

.field private mFirstUpdated:[Z

.field private mFragmentInfo:Lcom/pantech/app/music/library/FragmentInfo;

.field private mHighlightWordList:[Ljava/lang/String;

.field private mItemDecoration:Lcom/pantech/app/music/library/ListAdapter$ListItemDecoration;

.field private mMusicList:[Lcom/pantech/app/music/list/MusicItemInfo;

.field private mOnItemClickListener:Lcom/pantech/app/music/library/IListAdapter$OnItemClickListener;

.field private mOnItemDragListener:Lcom/pantech/app/music/library/IListAdapter$OnItemDragListener;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 46
    const-string v0, "ListAdapter"

    sput-object v0, Lcom/pantech/app/music/library/ListAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/pantech/app/music/library/FragmentInfo;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "info"    # Lcom/pantech/app/music/library/FragmentInfo;

    .prologue
    .line 76
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pantech/app/music/library/ListAdapter;->mCursor:Landroid/database/Cursor;

    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pantech/app/music/library/ListAdapter;->mBlockUpdateForListChanged:Z

    .line 62
    const/4 v0, -0x1

    iput v0, p0, Lcom/pantech/app/music/library/ListAdapter;->mAvailableCount:I

    .line 77
    sget-object v0, Lcom/pantech/app/music/library/ListAdapter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "created!! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/pantech/app/music/library/FragmentInfo;->getCategory()Lcom/pantech/app/music/library/FragmentInfo$Category;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/MLog;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    iput-object p1, p0, Lcom/pantech/app/music/library/ListAdapter;->mContext:Landroid/content/Context;

    .line 79
    iput-object p2, p0, Lcom/pantech/app/music/library/ListAdapter;->mFragmentInfo:Lcom/pantech/app/music/library/FragmentInfo;

    .line 80
    new-instance v0, Lcom/pantech/app/music/library/ActionModeInfo;

    invoke-direct {v0}, Lcom/pantech/app/music/library/ActionModeInfo;-><init>()V

    iput-object v0, p0, Lcom/pantech/app/music/library/ListAdapter;->mActionMode:Lcom/pantech/app/music/library/ActionModeInfo;

    .line 81
    new-instance v0, Lcom/pantech/app/music/library/ListAdapter$ListItemDecoration;

    invoke-direct {v0, p0}, Lcom/pantech/app/music/library/ListAdapter$ListItemDecoration;-><init>(Lcom/pantech/app/music/library/ListAdapter;)V

    iput-object v0, p0, Lcom/pantech/app/music/library/ListAdapter;->mItemDecoration:Lcom/pantech/app/music/library/ListAdapter$ListItemDecoration;

    .line 83
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4d

    .line 84
    const/4 v0, 0x4

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/pantech/app/music/library/ListAdapter;->mFirstUpdated:[Z

    .line 87
    :goto_4c
    return-void

    .line 86
    :cond_4d
    const/16 v0, 0x9

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/pantech/app/music/library/ListAdapter;->mFirstUpdated:[Z

    goto :goto_4c
.end method

.method static synthetic access$000(Lcom/pantech/app/music/library/ListAdapter;)Lcom/pantech/app/music/library/FragmentInfo;
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/library/ListAdapter;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/pantech/app/music/library/ListAdapter;->mFragmentInfo:Lcom/pantech/app/music/library/FragmentInfo;

    return-object v0
.end method

.method static synthetic access$100(Lcom/pantech/app/music/library/ListAdapter;)Lcom/pantech/app/music/library/IListAdapter$OnItemClickListener;
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/library/ListAdapter;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/pantech/app/music/library/ListAdapter;->mOnItemClickListener:Lcom/pantech/app/music/library/IListAdapter$OnItemClickListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/pantech/app/music/library/ListAdapter;)Lcom/pantech/app/music/library/ActionModeInfo;
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/library/ListAdapter;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/pantech/app/music/library/ListAdapter;->mActionMode:Lcom/pantech/app/music/library/ActionModeInfo;

    return-object v0
.end method

.method static synthetic access$400(Lcom/pantech/app/music/library/ListAdapter;)Lcom/pantech/app/music/library/IListAdapter$OnItemDragListener;
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/library/ListAdapter;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/pantech/app/music/library/ListAdapter;->mOnItemDragListener:Lcom/pantech/app/music/library/IListAdapter$OnItemDragListener;

    return-object v0
.end method

.method static synthetic access$600(Lcom/pantech/app/music/library/ListAdapter;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/library/ListAdapter;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/pantech/app/music/library/ListAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/pantech/app/music/library/ListAdapter;)[Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/library/ListAdapter;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/pantech/app/music/library/ListAdapter;->mHighlightWordList:[Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public changeArrayList(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/pantech/app/music/library/IListHolderHelper$ItemInfo;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 412
    .local p1, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/pantech/app/music/library/IListHolderHelper$ItemInfo;>;"
    .local p2, "selectIndexList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    sget-object v3, Lcom/pantech/app/music/library/ListAdapter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "changeArrayList() length:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz p1, :cond_3e

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_13
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/pantech/app/music/utils/MLog;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    iput-object p1, p0, Lcom/pantech/app/music/library/ListAdapter;->mArrayList:Ljava/util/ArrayList;

    .line 414
    const/4 v2, -0x1

    iput v2, p0, Lcom/pantech/app/music/library/ListAdapter;->mAvailableCount:I

    .line 415
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_27
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_40

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 416
    .local v1, "index":Ljava/lang/Integer;
    iget-object v2, p0, Lcom/pantech/app/music/library/ListAdapter;->mActionMode:Lcom/pantech/app/music/library/ActionModeInfo;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/pantech/app/music/library/ActionModeInfo;->checkItem(IZ)V

    goto :goto_27

    .line 412
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "index":Ljava/lang/Integer;
    :cond_3e
    const/4 v2, 0x0

    goto :goto_13

    .line 418
    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_40
    invoke-virtual {p0}, Lcom/pantech/app/music/library/ListAdapter;->refreshAll()V

    .line 419
    return-void
.end method

.method public changeCursor(Landroid/database/Cursor;)V
    .registers 5
    .param p1, "newCursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v2, 0x0

    .line 393
    iget-object v1, p0, Lcom/pantech/app/music/library/ListAdapter;->mCursor:Landroid/database/Cursor;

    if-ne p1, v1, :cond_6

    .line 408
    :goto_5
    return-void

    .line 397
    :cond_6
    iget-object v0, p0, Lcom/pantech/app/music/library/ListAdapter;->mCursor:Landroid/database/Cursor;

    .line 398
    .local v0, "old":Landroid/database/Cursor;
    if-eqz v0, :cond_14

    .line 399
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 400
    iget-object v1, p0, Lcom/pantech/app/music/library/ListAdapter;->mActionMode:Lcom/pantech/app/music/library/ActionModeInfo;

    invoke-virtual {v1, v2}, Lcom/pantech/app/music/library/ActionModeInfo;->setActivated(Z)V

    .line 401
    iput-boolean v2, p0, Lcom/pantech/app/music/library/ListAdapter;->mBlockUpdateForListChanged:Z

    .line 404
    :cond_14
    iput-object p1, p0, Lcom/pantech/app/music/library/ListAdapter;->mCursor:Landroid/database/Cursor;

    .line 405
    const/4 v1, -0x1

    iput v1, p0, Lcom/pantech/app/music/library/ListAdapter;->mAvailableCount:I

    .line 407
    invoke-virtual {p0}, Lcom/pantech/app/music/library/ListAdapter;->refreshAll()V

    goto :goto_5
.end method

.method public changeMusicList([Lcom/pantech/app/music/list/MusicItemInfo;)V
    .registers 6
    .param p1, "musicList"    # [Lcom/pantech/app/music/list/MusicItemInfo;

    .prologue
    const/4 v1, 0x0

    .line 423
    sget-object v2, Lcom/pantech/app/music/library/ListAdapter;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "changeMusicList() length:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz p1, :cond_2c

    array-length v0, p1

    :goto_11
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/pantech/app/music/utils/MLog;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    iput-object p1, p0, Lcom/pantech/app/music/library/ListAdapter;->mMusicList:[Lcom/pantech/app/music/list/MusicItemInfo;

    .line 425
    const/4 v0, -0x1

    iput v0, p0, Lcom/pantech/app/music/library/ListAdapter;->mAvailableCount:I

    .line 427
    iget-object v0, p0, Lcom/pantech/app/music/library/ListAdapter;->mActionMode:Lcom/pantech/app/music/library/ActionModeInfo;

    invoke-virtual {v0, v1}, Lcom/pantech/app/music/library/ActionModeInfo;->setActivated(Z)V

    .line 428
    iput-boolean v1, p0, Lcom/pantech/app/music/library/ListAdapter;->mBlockUpdateForListChanged:Z

    .line 430
    invoke-virtual {p0}, Lcom/pantech/app/music/library/ListAdapter;->refreshAll()V

    .line 431
    return-void

    :cond_2c
    move v0, v1

    .line 423
    goto :goto_11
.end method

.method public checkAll(Z)V
    .registers 9
    .param p1, "check"    # Z

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 319
    iget-object v2, p0, Lcom/pantech/app/music/library/ListAdapter;->mFragmentInfo:Lcom/pantech/app/music/library/FragmentInfo;

    invoke-virtual {v2}, Lcom/pantech/app/music/library/FragmentInfo;->isCustomCursor()Z

    move-result v2

    if-eqz v2, :cond_37

    .line 320
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_b
    invoke-virtual {p0}, Lcom/pantech/app/music/library/ListAdapter;->getItemCount()I

    move-result v2

    if-ge v0, v2, :cond_46

    iget-object v2, p0, Lcom/pantech/app/music/library/ListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v2

    if-eqz v2, :cond_46

    .line 321
    iget-object v2, p0, Lcom/pantech/app/music/library/ListAdapter;->mCursor:Landroid/database/Cursor;

    iget-object v3, p0, Lcom/pantech/app/music/library/ListAdapter;->mCursor:Landroid/database/Cursor;

    const-string v4, "viewType"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 322
    .local v1, "viewType":I
    sget-object v2, Lcom/pantech/app/music/library/IListHolderHelper$ViewType;->VIEW_TYPE_NORMAL:Lcom/pantech/app/music/library/IListHolderHelper$ViewType;

    invoke-virtual {v2}, Lcom/pantech/app/music/library/IListHolderHelper$ViewType;->ordinal()I

    move-result v2

    if-ne v1, v2, :cond_34

    .line 323
    iget-object v2, p0, Lcom/pantech/app/music/library/ListAdapter;->mActionMode:Lcom/pantech/app/music/library/ActionModeInfo;

    invoke-virtual {v2, v0, p1}, Lcom/pantech/app/music/library/ActionModeInfo;->checkItem(IZ)V

    .line 320
    :cond_34
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 328
    .end local v0    # "i":I
    .end local v1    # "viewType":I
    :cond_37
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_38
    invoke-virtual {p0}, Lcom/pantech/app/music/library/ListAdapter;->getItemCount()I

    move-result v2

    if-ge v0, v2, :cond_46

    .line 329
    iget-object v2, p0, Lcom/pantech/app/music/library/ListAdapter;->mActionMode:Lcom/pantech/app/music/library/ActionModeInfo;

    invoke-virtual {v2, v0, p1}, Lcom/pantech/app/music/library/ActionModeInfo;->checkItem(IZ)V

    .line 328
    add-int/lit8 v0, v0, 0x1

    goto :goto_38

    .line 334
    :cond_46
    iget-object v2, p0, Lcom/pantech/app/music/library/ListAdapter;->mOnItemClickListener:Lcom/pantech/app/music/library/IListAdapter$OnItemClickListener;

    if-eqz v2, :cond_56

    .line 335
    if-eqz p1, :cond_5a

    .line 336
    iget-object v2, p0, Lcom/pantech/app/music/library/ListAdapter;->mOnItemClickListener:Lcom/pantech/app/music/library/IListAdapter$OnItemClickListener;

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/pantech/app/music/library/ListAdapter;->getAvailableCount()I

    move-result v4

    invoke-interface {v2, v5, v3, v4}, Lcom/pantech/app/music/library/IListAdapter$OnItemClickListener;->onItemChecked(IZI)V

    .line 342
    :cond_56
    :goto_56
    invoke-virtual {p0}, Lcom/pantech/app/music/library/ListAdapter;->refreshAll()V

    .line 343
    return-void

    .line 338
    :cond_5a
    iget-object v2, p0, Lcom/pantech/app/music/library/ListAdapter;->mOnItemClickListener:Lcom/pantech/app/music/library/IListAdapter$OnItemClickListener;

    invoke-interface {v2, v5, v6, v6}, Lcom/pantech/app/music/library/IListAdapter$OnItemClickListener;->onItemChecked(IZI)V

    goto :goto_56
.end method

.method public getAvailableCount()I
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 225
    iget-object v3, p0, Lcom/pantech/app/music/library/ListAdapter;->mFragmentInfo:Lcom/pantech/app/music/library/FragmentInfo;

    invoke-virtual {v3}, Lcom/pantech/app/music/library/FragmentInfo;->isCustomCursor()Z

    move-result v3

    if-eqz v3, :cond_49

    .line 226
    iget-object v3, p0, Lcom/pantech/app/music/library/ListAdapter;->mCursor:Landroid/database/Cursor;

    if-nez v3, :cond_10

    .line 227
    iput v2, p0, Lcom/pantech/app/music/library/ListAdapter;->mAvailableCount:I

    .line 245
    :goto_f
    return v2

    .line 230
    :cond_10
    iget v3, p0, Lcom/pantech/app/music/library/ListAdapter;->mAvailableCount:I

    if-ltz v3, :cond_17

    .line 231
    iget v2, p0, Lcom/pantech/app/music/library/ListAdapter;->mAvailableCount:I

    goto :goto_f

    .line 234
    :cond_17
    iput v2, p0, Lcom/pantech/app/music/library/ListAdapter;->mAvailableCount:I

    .line 235
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1a
    iget-object v2, p0, Lcom/pantech/app/music/library/ListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-ge v0, v2, :cond_4f

    iget-object v2, p0, Lcom/pantech/app/music/library/ListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v2

    if-eqz v2, :cond_4f

    .line 236
    iget-object v2, p0, Lcom/pantech/app/music/library/ListAdapter;->mCursor:Landroid/database/Cursor;

    iget-object v3, p0, Lcom/pantech/app/music/library/ListAdapter;->mCursor:Landroid/database/Cursor;

    const-string v4, "viewType"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 237
    .local v1, "viewType":I
    sget-object v2, Lcom/pantech/app/music/library/IListHolderHelper$ViewType;->VIEW_TYPE_NORMAL:Lcom/pantech/app/music/library/IListHolderHelper$ViewType;

    invoke-virtual {v2}, Lcom/pantech/app/music/library/IListHolderHelper$ViewType;->ordinal()I

    move-result v2

    if-ne v1, v2, :cond_46

    .line 238
    iget v2, p0, Lcom/pantech/app/music/library/ListAdapter;->mAvailableCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/pantech/app/music/library/ListAdapter;->mAvailableCount:I

    .line 235
    :cond_46
    add-int/lit8 v0, v0, 0x1

    goto :goto_1a

    .line 243
    .end local v0    # "i":I
    .end local v1    # "viewType":I
    :cond_49
    invoke-virtual {p0}, Lcom/pantech/app/music/library/ListAdapter;->getItemCount()I

    move-result v2

    iput v2, p0, Lcom/pantech/app/music/library/ListAdapter;->mAvailableCount:I

    .line 245
    :cond_4f
    iget v2, p0, Lcom/pantech/app/music/library/ListAdapter;->mAvailableCount:I

    goto :goto_f
.end method

.method public getCheckedCount()I
    .registers 2

    .prologue
    .line 217
    iget-object v0, p0, Lcom/pantech/app/music/library/ListAdapter;->mActionMode:Lcom/pantech/app/music/library/ActionModeInfo;

    invoke-virtual {v0}, Lcom/pantech/app/music/library/ActionModeInfo;->isActivated()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 218
    iget-object v0, p0, Lcom/pantech/app/music/library/ListAdapter;->mActionMode:Lcom/pantech/app/music/library/ActionModeInfo;

    invoke-virtual {v0}, Lcom/pantech/app/music/library/ActionModeInfo;->getSelectedCount()I

    move-result v0

    .line 220
    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public getGroupList()Ljava/util/ArrayList;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 294
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 295
    .local v0, "groupArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    invoke-virtual {p0}, Lcom/pantech/app/music/library/ListAdapter;->getItemCount()I

    move-result v2

    if-ge v1, v2, :cond_90

    .line 296
    iget-object v2, p0, Lcom/pantech/app/music/library/ListAdapter;->mActionMode:Lcom/pantech/app/music/library/ActionModeInfo;

    invoke-virtual {v2}, Lcom/pantech/app/music/library/ActionModeInfo;->isActivated()Z

    move-result v2

    if-eqz v2, :cond_1f

    iget-object v2, p0, Lcom/pantech/app/music/library/ListAdapter;->mActionMode:Lcom/pantech/app/music/library/ActionModeInfo;

    invoke-virtual {v2, v1}, Lcom/pantech/app/music/library/ActionModeInfo;->isChecked(I)Z

    move-result v2

    if-nez v2, :cond_1f

    .line 295
    :cond_1c
    :goto_1c
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 298
    :cond_1f
    iget-object v2, p0, Lcom/pantech/app/music/library/ListAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v2, :cond_64

    iget-object v2, p0, Lcom/pantech/app/music/library/ListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_64

    .line 299
    iget-object v2, p0, Lcom/pantech/app/music/library/ListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 300
    iget-object v2, p0, Lcom/pantech/app/music/library/ListAdapter;->mFragmentInfo:Lcom/pantech/app/music/library/FragmentInfo;

    invoke-virtual {v2}, Lcom/pantech/app/music/library/FragmentInfo;->isCustomCursor()Z

    move-result v2

    if-eqz v2, :cond_4e

    .line 301
    iget-object v2, p0, Lcom/pantech/app/music/library/ListAdapter;->mCursor:Landroid/database/Cursor;

    iget-object v3, p0, Lcom/pantech/app/music/library/ListAdapter;->mCursor:Landroid/database/Cursor;

    const-string v4, "itemID"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1c

    .line 303
    :cond_4e
    iget-object v2, p0, Lcom/pantech/app/music/library/ListAdapter;->mCursor:Landroid/database/Cursor;

    iget-object v3, p0, Lcom/pantech/app/music/library/ListAdapter;->mCursor:Landroid/database/Cursor;

    const-string v4, "_id"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1c

    .line 306
    :cond_64
    iget-object v2, p0, Lcom/pantech/app/music/library/ListAdapter;->mArrayList:Ljava/util/ArrayList;

    if-eqz v2, :cond_7c

    .line 307
    iget-object v2, p0, Lcom/pantech/app/music/library/ListAdapter;->mArrayList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pantech/app/music/library/IListHolderHelper$ItemInfo;

    invoke-virtual {v2}, Lcom/pantech/app/music/library/IListHolderHelper$ItemInfo;->getID()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1c

    .line 309
    :cond_7c
    iget-object v2, p0, Lcom/pantech/app/music/library/ListAdapter;->mMusicList:[Lcom/pantech/app/music/list/MusicItemInfo;

    if-eqz v2, :cond_1c

    .line 310
    iget-object v2, p0, Lcom/pantech/app/music/library/ListAdapter;->mMusicList:[Lcom/pantech/app/music/list/MusicItemInfo;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/pantech/app/music/list/MusicItemInfo;->getAudioID()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1c

    .line 313
    :cond_90
    return-object v0
.end method

.method public getItemCount()I
    .registers 4

    .prologue
    .line 199
    const/4 v0, 0x0

    .line 200
    .local v0, "count":I
    iget-object v1, p0, Lcom/pantech/app/music/library/ListAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_2e

    iget-object v1, p0, Lcom/pantech/app/music/library/ListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_2e

    .line 201
    iget-object v1, p0, Lcom/pantech/app/music/library/ListAdapter;->mFragmentInfo:Lcom/pantech/app/music/library/FragmentInfo;

    invoke-virtual {v1}, Lcom/pantech/app/music/library/FragmentInfo;->getLimit()I

    move-result v1

    if-lez v1, :cond_27

    .line 202
    iget-object v1, p0, Lcom/pantech/app/music/library/ListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    iget-object v2, p0, Lcom/pantech/app/music/library/ListAdapter;->mFragmentInfo:Lcom/pantech/app/music/library/FragmentInfo;

    invoke-virtual {v2}, Lcom/pantech/app/music/library/FragmentInfo;->getLimit()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    :cond_25
    :goto_25
    move v1, v0

    .line 212
    :goto_26
    return v1

    .line 204
    :cond_27
    iget-object v1, p0, Lcom/pantech/app/music/library/ListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    goto :goto_25

    .line 206
    :cond_2e
    iget-object v1, p0, Lcom/pantech/app/music/library/ListAdapter;->mArrayList:Ljava/util/ArrayList;

    if-eqz v1, :cond_39

    .line 207
    iget-object v1, p0, Lcom/pantech/app/music/library/ListAdapter;->mArrayList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    goto :goto_26

    .line 209
    :cond_39
    iget-object v1, p0, Lcom/pantech/app/music/library/ListAdapter;->mMusicList:[Lcom/pantech/app/music/list/MusicItemInfo;

    if-eqz v1, :cond_25

    .line 210
    iget-object v1, p0, Lcom/pantech/app/music/library/ListAdapter;->mMusicList:[Lcom/pantech/app/music/list/MusicItemInfo;

    array-length v1, v1

    goto :goto_26
.end method

.method public getItemDecoration()Landroid/support/v7/widget/RecyclerView$ItemDecoration;
    .registers 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/pantech/app/music/library/ListAdapter;->mItemDecoration:Lcom/pantech/app/music/library/ListAdapter$ListItemDecoration;

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .param p1, "position"    # I

    .prologue
    .line 194
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemId(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .registers 5
    .param p1, "position"    # I

    .prologue
    .line 179
    iget-object v0, p0, Lcom/pantech/app/music/library/ListAdapter;->mFragmentInfo:Lcom/pantech/app/music/library/FragmentInfo;

    invoke-virtual {v0}, Lcom/pantech/app/music/library/FragmentInfo;->isCustomCursor()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 180
    iget-object v0, p0, Lcom/pantech/app/music/library/ListAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/pantech/app/music/library/ListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_2c

    iget-object v0, p0, Lcom/pantech/app/music/library/ListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 182
    :try_start_1c
    iget-object v0, p0, Lcom/pantech/app/music/library/ListAdapter;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/pantech/app/music/library/ListAdapter;->mCursor:Landroid/database/Cursor;

    const-string v2, "viewType"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_29} :catch_2b

    move-result v0

    .line 188
    :goto_2a
    return v0

    .line 183
    :catch_2b
    move-exception v0

    .line 188
    :cond_2c
    sget-object v0, Lcom/pantech/app/music/library/IListHolderHelper$ViewType;->VIEW_TYPE_NORMAL:Lcom/pantech/app/music/library/IListHolderHelper$ViewType;

    invoke-virtual {v0}, Lcom/pantech/app/music/library/IListHolderHelper$ViewType;->ordinal()I

    move-result v0

    goto :goto_2a
.end method

.method public getMusicList()[Lcom/pantech/app/music/list/MusicItemInfo;
    .registers 9

    .prologue
    .line 250
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 251
    .local v4, "musicItemArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/pantech/app/music/list/MusicItemInfo;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 253
    .local v2, "idArray4CustomCursor":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_b
    invoke-virtual {p0}, Lcom/pantech/app/music/library/ListAdapter;->getItemCount()I

    move-result v5

    if-ge v1, v5, :cond_87

    .line 254
    iget-object v5, p0, Lcom/pantech/app/music/library/ListAdapter;->mActionMode:Lcom/pantech/app/music/library/ActionModeInfo;

    invoke-virtual {v5}, Lcom/pantech/app/music/library/ActionModeInfo;->isActivated()Z

    move-result v5

    if-eqz v5, :cond_24

    iget-object v5, p0, Lcom/pantech/app/music/library/ListAdapter;->mActionMode:Lcom/pantech/app/music/library/ActionModeInfo;

    invoke-virtual {v5, v1}, Lcom/pantech/app/music/library/ActionModeInfo;->isChecked(I)Z

    move-result v5

    if-nez v5, :cond_24

    .line 253
    :cond_21
    :goto_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 257
    :cond_24
    iget-object v5, p0, Lcom/pantech/app/music/library/ListAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v5, :cond_7b

    iget-object v5, p0, Lcom/pantech/app/music/library/ListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v5}, Landroid/database/Cursor;->isClosed()Z

    move-result v5

    if-nez v5, :cond_7b

    .line 258
    iget-object v5, p0, Lcom/pantech/app/music/library/ListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v5, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 259
    iget-object v5, p0, Lcom/pantech/app/music/library/ListAdapter;->mFragmentInfo:Lcom/pantech/app/music/library/FragmentInfo;

    invoke-virtual {v5}, Lcom/pantech/app/music/library/FragmentInfo;->isCustomCursor()Z

    move-result v5

    if-eqz v5, :cond_69

    iget-object v5, p0, Lcom/pantech/app/music/library/ListAdapter;->mCursor:Landroid/database/Cursor;

    iget-object v6, p0, Lcom/pantech/app/music/library/ListAdapter;->mCursor:Landroid/database/Cursor;

    const-string v7, "category"

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    sget-object v6, Lcom/pantech/app/music/library/FragmentInfo$Category;->CATEGORY_TRACK:Lcom/pantech/app/music/library/FragmentInfo$Category;

    invoke-virtual {v6}, Lcom/pantech/app/music/library/FragmentInfo$Category;->ordinal()I

    move-result v6

    if-ne v5, v6, :cond_69

    .line 260
    iget-object v5, p0, Lcom/pantech/app/music/library/ListAdapter;->mCursor:Landroid/database/Cursor;

    iget-object v6, p0, Lcom/pantech/app/music/library/ListAdapter;->mCursor:Landroid/database/Cursor;

    const-string v7, "itemID"

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_21

    .line 262
    :cond_69
    iget-object v5, p0, Lcom/pantech/app/music/library/ListAdapter;->mFragmentInfo:Lcom/pantech/app/music/library/FragmentInfo;

    invoke-virtual {v5}, Lcom/pantech/app/music/library/FragmentInfo;->getCategory()Lcom/pantech/app/music/library/FragmentInfo$Category;

    move-result-object v5

    iget-object v6, p0, Lcom/pantech/app/music/library/ListAdapter;->mCursor:Landroid/database/Cursor;

    iget-object v7, p0, Lcom/pantech/app/music/library/ListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v5, v6, v7}, Lcom/pantech/app/music/list/MusicItemInfo;->getList(Lcom/pantech/app/music/library/FragmentInfo$Category;Landroid/database/Cursor;Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_21

    .line 265
    :cond_7b
    iget-object v5, p0, Lcom/pantech/app/music/library/ListAdapter;->mMusicList:[Lcom/pantech/app/music/list/MusicItemInfo;

    if-eqz v5, :cond_21

    .line 266
    iget-object v5, p0, Lcom/pantech/app/music/library/ListAdapter;->mMusicList:[Lcom/pantech/app/music/list/MusicItemInfo;

    aget-object v5, v5, v1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_21

    .line 271
    :cond_87
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_9c

    .line 272
    iget-object v5, p0, Lcom/pantech/app/music/library/ListAdapter;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/pantech/app/music/library/ListAdapter;->mFragmentInfo:Lcom/pantech/app/music/library/FragmentInfo;

    invoke-virtual {v6}, Lcom/pantech/app/music/library/FragmentInfo;->getCategory()Lcom/pantech/app/music/library/FragmentInfo$Category;

    move-result-object v6

    invoke-static {v5, v2, v6}, Lcom/pantech/app/music/list/MusicItemInfo;->getList(Landroid/content/Context;Ljava/util/ArrayList;Lcom/pantech/app/music/library/FragmentInfo$Category;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 278
    :cond_9c
    iget-object v5, p0, Lcom/pantech/app/music/library/ListAdapter;->mFragmentInfo:Lcom/pantech/app/music/library/FragmentInfo;

    invoke-virtual {v5}, Lcom/pantech/app/music/library/FragmentInfo;->getCategory()Lcom/pantech/app/music/library/FragmentInfo$Category;

    move-result-object v5

    sget-object v6, Lcom/pantech/app/music/library/FragmentInfo$Category;->CATEGORY_SEARCH_GROUPS:Lcom/pantech/app/music/library/FragmentInfo$Category;

    if-ne v5, v6, :cond_e2

    .line 279
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0, v4}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    .line 280
    .local v0, "hs":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Lcom/pantech/app/music/list/MusicItemInfo;>;"
    sget-object v5, Lcom/pantech/app/music/library/ListAdapter;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "hs size: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", musicItemArray size: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/pantech/app/music/utils/MLog;->debugW(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->size()I

    move-result v5

    new-array v3, v5, [Lcom/pantech/app/music/list/MusicItemInfo;

    .line 283
    .local v3, "itemInfo":[Lcom/pantech/app/music/list/MusicItemInfo;
    invoke-virtual {v0, v3}, Ljava/util/LinkedHashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "itemInfo":[Lcom/pantech/app/music/list/MusicItemInfo;
    check-cast v3, [Lcom/pantech/app/music/list/MusicItemInfo;

    .line 289
    .end local v0    # "hs":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Lcom/pantech/app/music/list/MusicItemInfo;>;"
    .restart local v3    # "itemInfo":[Lcom/pantech/app/music/list/MusicItemInfo;
    :goto_e1
    return-object v3

    .line 287
    .end local v3    # "itemInfo":[Lcom/pantech/app/music/list/MusicItemInfo;
    :cond_e2
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v3, v5, [Lcom/pantech/app/music/list/MusicItemInfo;

    .line 288
    .restart local v3    # "itemInfo":[Lcom/pantech/app/music/list/MusicItemInfo;
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "itemInfo":[Lcom/pantech/app/music/list/MusicItemInfo;
    check-cast v3, [Lcom/pantech/app/music/list/MusicItemInfo;

    .line 289
    .restart local v3    # "itemInfo":[Lcom/pantech/app/music/list/MusicItemInfo;
    goto :goto_e1
.end method

.method public isFixedItemChecked()Z
    .registers 4

    .prologue
    .line 352
    sget-object v1, Lcom/pantech/app/music/library/ListAdapter$1;->$SwitchMap$com$pantech$app$music$library$FragmentInfo$Category:[I

    iget-object v2, p0, Lcom/pantech/app/music/library/ListAdapter;->mFragmentInfo:Lcom/pantech/app/music/library/FragmentInfo;

    invoke-virtual {v2}, Lcom/pantech/app/music/library/FragmentInfo;->getCategory()Lcom/pantech/app/music/library/FragmentInfo$Category;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pantech/app/music/library/FragmentInfo$Category;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_22

    .line 360
    :cond_11
    const/4 v1, 0x0

    :goto_12
    return v1

    .line 354
    :pswitch_13
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_14
    const/4 v1, 0x5

    if-ge v0, v1, :cond_11

    .line 355
    invoke-virtual {p0, v0}, Lcom/pantech/app/music/library/ListAdapter;->isItemChecked(I)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 356
    const/4 v1, 0x1

    goto :goto_12

    .line 354
    :cond_1f
    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    .line 352
    :pswitch_data_22
    .packed-switch 0x1
        :pswitch_13
    .end packed-switch
.end method

.method public isItemChecked(I)Z
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 347
    iget-object v0, p0, Lcom/pantech/app/music/library/ListAdapter;->mActionMode:Lcom/pantech/app/music/library/ActionModeInfo;

    invoke-virtual {v0}, Lcom/pantech/app/music/library/ActionModeInfo;->isActivated()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/pantech/app/music/library/ListAdapter;->mActionMode:Lcom/pantech/app/music/library/ActionModeInfo;

    invoke-virtual {v0, p1}, Lcom/pantech/app/music/library/ActionModeInfo;->isChecked(I)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method moveToDetailList(Lcom/pantech/app/music/library/FragmentInfo;Landroid/view/View;)V
    .registers 4
    .param p1, "info"    # Lcom/pantech/app/music/library/FragmentInfo;
    .param p2, "transitionView"    # Landroid/view/View;

    .prologue
    .line 503
    iget-object v0, p0, Lcom/pantech/app/music/library/ListAdapter;->mOnItemClickListener:Lcom/pantech/app/music/library/IListAdapter$OnItemClickListener;

    if-eqz v0, :cond_9

    .line 504
    iget-object v0, p0, Lcom/pantech/app/music/library/ListAdapter;->mOnItemClickListener:Lcom/pantech/app/music/library/IListAdapter$OnItemClickListener;

    invoke-interface {v0, p1, p2}, Lcom/pantech/app/music/library/IListAdapter$OnItemClickListener;->onRequestDetailList(Lcom/pantech/app/music/library/FragmentInfo;Landroid/view/View;)V

    .line 506
    :cond_9
    return-void
.end method

.method public onActionModeChanged(Z)V
    .registers 5
    .param p1, "mode"    # Z

    .prologue
    .line 435
    sget-object v0, Lcom/pantech/app/music/library/ListAdapter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActionModeChanged("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/MLog;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    iget-object v0, p0, Lcom/pantech/app/music/library/ListAdapter;->mActionMode:Lcom/pantech/app/music/library/ActionModeInfo;

    invoke-virtual {v0, p1}, Lcom/pantech/app/music/library/ActionModeInfo;->setActivated(Z)V

    .line 446
    invoke-virtual {p0}, Lcom/pantech/app/music/library/ListAdapter;->refreshAll()V

    .line 447
    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .registers 3
    .param p1, "x0"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p2, "x1"    # I

    .prologue
    .line 45
    check-cast p1, Lcom/pantech/app/music/library/ListAdapter$ViewHolder;

    .end local p1    # "x0":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    invoke-virtual {p0, p1, p2}, Lcom/pantech/app/music/library/ListAdapter;->onBindViewHolder(Lcom/pantech/app/music/library/ListAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/pantech/app/music/library/ListAdapter$ViewHolder;I)V
    .registers 9
    .param p1, "holder"    # Lcom/pantech/app/music/library/ListAdapter$ViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 127
    iget-boolean v1, p0, Lcom/pantech/app/music/library/ListAdapter;->mBlockUpdateForListChanged:Z

    if-eqz v1, :cond_a

    .line 128
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Lcom/pantech/app/music/library/ListAdapter$ViewHolder;->updateWithCursor(ILandroid/database/Cursor;)V

    .line 158
    :cond_9
    :goto_9
    return-void

    .line 133
    :cond_a
    iget-object v1, p0, Lcom/pantech/app/music/library/ListAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_83

    iget-object v1, p0, Lcom/pantech/app/music/library/ListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_83

    .line 134
    iget-object v1, p0, Lcom/pantech/app/music/library/ListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-virtual {p1, p2, v1}, Lcom/pantech/app/music/library/ListAdapter$ViewHolder;->updateWithCursor(ILandroid/database/Cursor;)V

    .line 135
    invoke-virtual {p1}, Lcom/pantech/app/music/library/ListAdapter$ViewHolder;->updateColorInfo()V

    .line 146
    :cond_1e
    :goto_1e
    invoke-virtual {p1}, Lcom/pantech/app/music/library/ListAdapter$ViewHolder;->updateCheckInfo()V

    .line 149
    iget-object v1, p0, Lcom/pantech/app/music/library/ListAdapter;->mFirstUpdated:[Z

    array-length v1, v1

    if-ge p2, v1, :cond_9

    iget-object v1, p0, Lcom/pantech/app/music/library/ListAdapter;->mFirstUpdated:[Z

    aget-boolean v1, v1, p2

    if-nez v1, :cond_9

    iget-object v1, p0, Lcom/pantech/app/music/library/ListAdapter;->mFragmentInfo:Lcom/pantech/app/music/library/FragmentInfo;

    invoke-virtual {v1}, Lcom/pantech/app/music/library/FragmentInfo;->getAnimationID()I

    move-result v1

    if-lez v1, :cond_9

    .line 150
    iget-object v1, p0, Lcom/pantech/app/music/library/ListAdapter;->mFirstUpdated:[Z

    const/4 v2, 0x1

    aput-boolean v2, v1, p2

    .line 151
    iget-object v1, p0, Lcom/pantech/app/music/library/ListAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/pantech/app/music/library/ListAdapter;->mFragmentInfo:Lcom/pantech/app/music/library/FragmentInfo;

    invoke-virtual {v2}, Lcom/pantech/app/music/library/FragmentInfo;->getAnimationID()I

    move-result v2

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 152
    .local v0, "ani":Landroid/view/animation/Animation;
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 153
    invoke-virtual {v0}, Landroid/view/animation/Animation;->getStartOffset()J

    move-result-wide v2

    mul-int/lit8 v1, p2, 0xa

    int-to-long v4, v1

    add-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 154
    const-wide/16 v2, 0x190

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 155
    iget-object v1, p1, Lcom/pantech/app/music/library/ListAdapter$ViewHolder;->mMainLayout:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 156
    sget-object v1, Lcom/pantech/app/music/library/ListAdapter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "position: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " -> startAnimation"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/music/utils/MLog;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    .line 137
    .end local v0    # "ani":Landroid/view/animation/Animation;
    :cond_83
    iget-object v1, p0, Lcom/pantech/app/music/library/ListAdapter;->mArrayList:Ljava/util/ArrayList;

    if-eqz v1, :cond_8d

    .line 138
    iget-object v1, p0, Lcom/pantech/app/music/library/ListAdapter;->mArrayList:Ljava/util/ArrayList;

    invoke-virtual {p1, p2, v1}, Lcom/pantech/app/music/library/ListAdapter$ViewHolder;->updateWithArray(ILjava/util/ArrayList;)V

    goto :goto_1e

    .line 140
    :cond_8d
    iget-object v1, p0, Lcom/pantech/app/music/library/ListAdapter;->mMusicList:[Lcom/pantech/app/music/list/MusicItemInfo;

    if-eqz v1, :cond_1e

    .line 141
    iget-object v1, p0, Lcom/pantech/app/music/library/ListAdapter;->mMusicList:[Lcom/pantech/app/music/list/MusicItemInfo;

    invoke-virtual {p1, p2, v1}, Lcom/pantech/app/music/library/ListAdapter$ViewHolder;->updateWithMusicItem(I[Lcom/pantech/app/music/list/MusicItemInfo;)V

    .line 142
    invoke-virtual {p1}, Lcom/pantech/app/music/library/ListAdapter$ViewHolder;->updateColorInfo()V

    goto :goto_1e
.end method

.method public onConfigureChanged()V
    .registers 4

    .prologue
    .line 169
    iget-object v1, p0, Lcom/pantech/app/music/library/ListAdapter;->mFirstUpdated:[Z

    if-eqz v1, :cond_19

    iget-object v1, p0, Lcom/pantech/app/music/library/ListAdapter;->mFirstUpdated:[Z

    const/4 v2, 0x0

    aget-boolean v1, v1, v2

    if-eqz v1, :cond_19

    .line 170
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_c
    iget-object v1, p0, Lcom/pantech/app/music/library/ListAdapter;->mFirstUpdated:[Z

    array-length v1, v1

    if-ge v0, v1, :cond_19

    .line 171
    iget-object v1, p0, Lcom/pantech/app/music/library/ListAdapter;->mFirstUpdated:[Z

    const/4 v2, 0x1

    aput-boolean v2, v1, v0

    .line 170
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 174
    .end local v0    # "index":I
    :cond_19
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .registers 4
    .param p1, "x0"    # Landroid/view/ViewGroup;
    .param p2, "x1"    # I

    .prologue
    .line 45
    invoke-virtual {p0, p1, p2}, Lcom/pantech/app/music/library/ListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/pantech/app/music/library/ListAdapter$ViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/pantech/app/music/library/ListAdapter$ViewHolder;
    .registers 8
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewTypeOrdinal"    # I

    .prologue
    const/4 v4, 0x0

    .line 93
    invoke-static {p2}, Lcom/pantech/app/music/library/IListHolderHelper$ViewType;->fromOrdinal(I)Lcom/pantech/app/music/library/IListHolderHelper$ViewType;

    move-result-object v1

    .line 94
    .local v1, "viewType":Lcom/pantech/app/music/library/IListHolderHelper$ViewType;
    sget-object v2, Lcom/pantech/app/music/library/ListAdapter$1;->$SwitchMap$com$pantech$app$music$library$IListHolderHelper$ViewType:[I

    invoke-virtual {v1}, Lcom/pantech/app/music/library/IListHolderHelper$ViewType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_66

    .line 105
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    iget-object v3, p0, Lcom/pantech/app/music/library/ListAdapter;->mFragmentInfo:Lcom/pantech/app/music/library/FragmentInfo;

    invoke-virtual {v3}, Lcom/pantech/app/music/library/FragmentInfo;->getLayoutAdapterID()I

    move-result v3

    invoke-virtual {v2, v3, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 110
    .local v0, "view":Landroid/view/View;
    :goto_22
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/view/View;->setFocusable(Z)V

    .line 112
    new-instance v2, Lcom/pantech/app/music/library/ListAdapter$ViewHolder;

    invoke-direct {v2, p0, v0, v1}, Lcom/pantech/app/music/library/ListAdapter$ViewHolder;-><init>(Lcom/pantech/app/music/library/ListAdapter;Landroid/view/View;Lcom/pantech/app/music/library/IListHolderHelper$ViewType;)V

    return-object v2

    .line 96
    .end local v0    # "view":Landroid/view/View;
    :pswitch_2c
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f030061

    invoke-virtual {v2, v3, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 97
    .restart local v0    # "view":Landroid/view/View;
    goto :goto_22

    .line 99
    .end local v0    # "view":Landroid/view/View;
    :pswitch_3c
    iget-object v2, p0, Lcom/pantech/app/music/library/ListAdapter;->mFragmentInfo:Lcom/pantech/app/music/library/FragmentInfo;

    const/16 v3, 0x40

    invoke-virtual {v2, v3}, Lcom/pantech/app/music/library/FragmentInfo;->hasOptions(I)Z

    move-result v2

    if-eqz v2, :cond_56

    .line 100
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f030058

    invoke-virtual {v2, v3, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .restart local v0    # "view":Landroid/view/View;
    goto :goto_22

    .line 102
    .end local v0    # "view":Landroid/view/View;
    :cond_56
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f030060

    invoke-virtual {v2, v3, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 103
    .restart local v0    # "view":Landroid/view/View;
    goto :goto_22

    .line 94
    :pswitch_data_66
    .packed-switch 0x1
        :pswitch_2c
        :pswitch_3c
    .end packed-switch
.end method

.method public onItemDismiss(I)V
    .registers 6
    .param p1, "position"    # I

    .prologue
    .line 524
    sget-object v1, Lcom/pantech/app/music/library/ListAdapter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onItemDismiss() position:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/music/utils/MLog;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    .line 525
    if-ltz p1, :cond_1e

    iget-boolean v1, p0, Lcom/pantech/app/music/library/ListAdapter;->mBlockUpdateForListChanged:Z

    if-eqz v1, :cond_1f

    .line 545
    :cond_1e
    :goto_1e
    return-void

    .line 528
    :cond_1f
    invoke-virtual {p0, p1}, Lcom/pantech/app/music/library/ListAdapter;->notifyItemRemoved(I)V

    .line 530
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 531
    .local v0, "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    iget-object v1, p0, Lcom/pantech/app/music/library/ListAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_5a

    iget-object v1, p0, Lcom/pantech/app/music/library/ListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_5a

    .line 532
    iget-object v1, p0, Lcom/pantech/app/music/library/ListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 533
    iget-object v1, p0, Lcom/pantech/app/music/library/ListAdapter;->mCursor:Landroid/database/Cursor;

    iget-object v2, p0, Lcom/pantech/app/music/library/ListAdapter;->mCursor:Landroid/database/Cursor;

    const-string v3, "_id"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 540
    :cond_4d
    :goto_4d
    iget-object v1, p0, Lcom/pantech/app/music/library/ListAdapter;->mOnItemClickListener:Lcom/pantech/app/music/library/IListAdapter$OnItemClickListener;

    if-eqz v1, :cond_56

    .line 541
    iget-object v1, p0, Lcom/pantech/app/music/library/ListAdapter;->mOnItemClickListener:Lcom/pantech/app/music/library/IListAdapter$OnItemClickListener;

    invoke-interface {v1, v0}, Lcom/pantech/app/music/library/IListAdapter$OnItemClickListener;->onItemRemoved(Ljava/util/ArrayList;)V

    .line 544
    :cond_56
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/pantech/app/music/library/ListAdapter;->mBlockUpdateForListChanged:Z

    goto :goto_1e

    .line 535
    :cond_5a
    iget-object v1, p0, Lcom/pantech/app/music/library/ListAdapter;->mMusicList:[Lcom/pantech/app/music/list/MusicItemInfo;

    if-eqz v1, :cond_4d

    .line 536
    iget-object v1, p0, Lcom/pantech/app/music/library/ListAdapter;->mMusicList:[Lcom/pantech/app/music/list/MusicItemInfo;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Lcom/pantech/app/music/list/MusicItemInfo;->getAudioID()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4d
.end method

.method public onItemDragStart(I)V
    .registers 5
    .param p1, "position"    # I

    .prologue
    .line 549
    sget-object v0, Lcom/pantech/app/music/library/ListAdapter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onItemDragStart() from:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/MLog;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    .line 550
    return-void
.end method

.method public onItemDragStop(II)V
    .registers 10
    .param p1, "from"    # I
    .param p2, "to"    # I

    .prologue
    .line 554
    sget-object v1, Lcom/pantech/app/music/library/ListAdapter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onItemDragStop() from:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", to:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/music/utils/MLog;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    .line 555
    sget-object v1, Lcom/pantech/app/music/library/ListAdapter$1;->$SwitchMap$com$pantech$app$music$library$FragmentInfo$Category:[I

    iget-object v2, p0, Lcom/pantech/app/music/library/ListAdapter;->mFragmentInfo:Lcom/pantech/app/music/library/FragmentInfo;

    invoke-virtual {v2}, Lcom/pantech/app/music/library/FragmentInfo;->getCategory()Lcom/pantech/app/music/library/FragmentInfo$Category;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pantech/app/music/library/FragmentInfo$Category;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_5e

    .line 563
    if-ltz p2, :cond_37

    if-gez p1, :cond_4c

    .line 571
    :cond_37
    :goto_37
    return-void

    .line 557
    :pswitch_38
    iget-object v1, p0, Lcom/pantech/app/music/library/ListAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/pantech/app/music/library/ListAdapter;->mFragmentInfo:Lcom/pantech/app/music/library/FragmentInfo;

    invoke-virtual {v2}, Lcom/pantech/app/music/library/FragmentInfo;->getGroupID()J

    move-result-wide v2

    iget-object v4, p0, Lcom/pantech/app/music/library/ListAdapter;->mCursor:Landroid/database/Cursor;

    move v5, p1

    move v6, p2

    invoke-static/range {v1 .. v6}, Lcom/pantech/app/music/library/helper/PlaylistHelper;->rearrangeItemList(Landroid/content/Context;JLandroid/database/Cursor;II)V

    goto :goto_37

    .line 560
    :pswitch_48
    invoke-static {p1, p2}, Lcom/pantech/app/music/library/helper/PlaylistHelper;->rearrangeNowPlaying(II)V

    goto :goto_37

    .line 565
    :cond_4c
    iget-object v1, p0, Lcom/pantech/app/music/library/ListAdapter;->mArrayList:Ljava/util/ArrayList;

    if-eqz v1, :cond_37

    .line 566
    iget-object v1, p0, Lcom/pantech/app/music/library/ListAdapter;->mArrayList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/music/library/IListHolderHelper$ItemInfo;

    .line 567
    .local v0, "fromInfo":Lcom/pantech/app/music/library/IListHolderHelper$ItemInfo;
    iget-object v1, p0, Lcom/pantech/app/music/library/ListAdapter;->mArrayList:Ljava/util/ArrayList;

    invoke-virtual {v1, p2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_37

    .line 555
    :pswitch_data_5e
    .packed-switch 0x2
        :pswitch_38
        :pswitch_48
    .end packed-switch
.end method

.method public onItemMove(II)Z
    .registers 6
    .param p1, "fromPosition"    # I
    .param p2, "toPosition"    # I

    .prologue
    .line 516
    sget-object v0, Lcom/pantech/app/music/library/ListAdapter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onItemMove() from:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", to:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/MLog;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    .line 517
    invoke-virtual {p0, p1, p2}, Lcom/pantech/app/music/library/ListAdapter;->notifyItemMoved(II)V

    .line 518
    iget-object v0, p0, Lcom/pantech/app/music/library/ListAdapter;->mActionMode:Lcom/pantech/app/music/library/ActionModeInfo;

    invoke-virtual {v0, p1, p2}, Lcom/pantech/app/music/library/ActionModeInfo;->moveItem(II)V

    .line 519
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic onViewRecycled(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .registers 2
    .param p1, "x0"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .prologue
    .line 45
    check-cast p1, Lcom/pantech/app/music/library/ListAdapter$ViewHolder;

    .end local p1    # "x0":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    invoke-virtual {p0, p1}, Lcom/pantech/app/music/library/ListAdapter;->onViewRecycled(Lcom/pantech/app/music/library/ListAdapter$ViewHolder;)V

    return-void
.end method

.method public onViewRecycled(Lcom/pantech/app/music/library/ListAdapter$ViewHolder;)V
    .registers 2
    .param p1, "holder"    # Lcom/pantech/app/music/library/ListAdapter$ViewHolder;

    .prologue
    .line 118
    invoke-virtual {p1}, Lcom/pantech/app/music/library/ListAdapter$ViewHolder;->clearAll()V

    .line 119
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->onViewRecycled(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 120
    return-void
.end method

.method playArtistAlbumTrack(JJ)V
    .registers 10
    .param p1, "artistID"    # J
    .param p3, "albumID"    # J

    .prologue
    .line 488
    iget-object v2, p0, Lcom/pantech/app/music/library/ListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2, p1, p2, p3, p4}, Lcom/pantech/app/music/list/MusicItemInfo;->getArtistAlbumList(Landroid/content/Context;JJ)Ljava/util/ArrayList;

    move-result-object v1

    .line 489
    .local v1, "musicItemArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/pantech/app/music/list/MusicItemInfo;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v0, v2, [Lcom/pantech/app/music/list/MusicItemInfo;

    .line 490
    .local v0, "itemInfo":[Lcom/pantech/app/music/list/MusicItemInfo;
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "itemInfo":[Lcom/pantech/app/music/list/MusicItemInfo;
    check-cast v0, [Lcom/pantech/app/music/list/MusicItemInfo;

    .line 492
    .restart local v0    # "itemInfo":[Lcom/pantech/app/music/list/MusicItemInfo;
    iget-object v2, p0, Lcom/pantech/app/music/library/ListAdapter;->mOnItemClickListener:Lcom/pantech/app/music/library/IListAdapter$OnItemClickListener;

    if-eqz v2, :cond_1c

    .line 498
    iget-object v2, p0, Lcom/pantech/app/music/library/ListAdapter;->mOnItemClickListener:Lcom/pantech/app/music/library/IListAdapter$OnItemClickListener;

    const/4 v3, -0x1

    invoke-interface {v2, v0, v3}, Lcom/pantech/app/music/library/IListAdapter$OnItemClickListener;->onRequestPlay([Lcom/pantech/app/music/list/MusicItemInfo;I)V

    .line 500
    :cond_1c
    return-void
.end method

.method playOnlyTrack(I)V
    .registers 13
    .param p1, "playPos"    # I

    .prologue
    .line 456
    iget-object v8, p0, Lcom/pantech/app/music/library/ListAdapter;->mFragmentInfo:Lcom/pantech/app/music/library/FragmentInfo;

    invoke-virtual {v8}, Lcom/pantech/app/music/library/FragmentInfo;->isCustomCursor()Z

    move-result v8

    if-nez v8, :cond_9

    .line 485
    :cond_8
    :goto_8
    return-void

    .line 459
    :cond_9
    move v7, p1

    .line 461
    .local v7, "newPos":I
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 462
    .local v6, "musicItemArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/pantech/app/music/list/MusicItemInfo;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 464
    .local v1, "idArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_15
    invoke-virtual {p0}, Lcom/pantech/app/music/library/ListAdapter;->getItemCount()I

    move-result v8

    if-ge v0, v8, :cond_59

    .line 465
    iget-object v8, p0, Lcom/pantech/app/music/library/ListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v8, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 466
    iget-object v8, p0, Lcom/pantech/app/music/library/ListAdapter;->mCursor:Landroid/database/Cursor;

    iget-object v9, p0, Lcom/pantech/app/music/library/ListAdapter;->mCursor:Landroid/database/Cursor;

    const-string v10, "category"

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 467
    .local v5, "itemType":I
    iget-object v8, p0, Lcom/pantech/app/music/library/ListAdapter;->mCursor:Landroid/database/Cursor;

    iget-object v9, p0, Lcom/pantech/app/music/library/ListAdapter;->mCursor:Landroid/database/Cursor;

    const-string v10, "itemID"

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 470
    .local v2, "itemID":J
    sget-object v8, Lcom/pantech/app/music/library/FragmentInfo$Category;->CATEGORY_TRACK:Lcom/pantech/app/music/library/FragmentInfo$Category;

    invoke-virtual {v8}, Lcom/pantech/app/music/library/FragmentInfo$Category;->ordinal()I

    move-result v8

    if-ne v5, v8, :cond_4a

    const-wide/16 v8, 0x0

    cmp-long v8, v2, v8

    if-gez v8, :cond_51

    .line 471
    :cond_4a
    if-gt v0, p1, :cond_4e

    .line 472
    add-int/lit8 v7, v7, -0x1

    .line 464
    :cond_4e
    :goto_4e
    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    .line 476
    :cond_51
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4e

    .line 478
    .end local v2    # "itemID":J
    .end local v5    # "itemType":I
    :cond_59
    sget-object v8, Lcom/pantech/app/music/library/ListAdapter;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "playOnlyTrack() "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/pantech/app/music/utils/MLog;->debugE(Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    iget-object v8, p0, Lcom/pantech/app/music/library/ListAdapter;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/pantech/app/music/library/ListAdapter;->mFragmentInfo:Lcom/pantech/app/music/library/FragmentInfo;

    invoke-virtual {v9}, Lcom/pantech/app/music/library/FragmentInfo;->getCategory()Lcom/pantech/app/music/library/FragmentInfo$Category;

    move-result-object v9

    invoke-static {v8, v1, v9}, Lcom/pantech/app/music/list/MusicItemInfo;->getList(Landroid/content/Context;Ljava/util/ArrayList;Lcom/pantech/app/music/library/FragmentInfo$Category;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 481
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v8

    new-array v4, v8, [Lcom/pantech/app/music/list/MusicItemInfo;

    .line 482
    .local v4, "itemList":[Lcom/pantech/app/music/list/MusicItemInfo;
    iget-object v8, p0, Lcom/pantech/app/music/library/ListAdapter;->mOnItemClickListener:Lcom/pantech/app/music/library/IListAdapter$OnItemClickListener;

    if-eqz v8, :cond_8

    .line 483
    iget-object v9, p0, Lcom/pantech/app/music/library/ListAdapter;->mOnItemClickListener:Lcom/pantech/app/music/library/IListAdapter$OnItemClickListener;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Lcom/pantech/app/music/list/MusicItemInfo;

    invoke-interface {v9, v8, v7}, Lcom/pantech/app/music/library/IListAdapter$OnItemClickListener;->onRequestPlay([Lcom/pantech/app/music/list/MusicItemInfo;I)V

    goto/16 :goto_8
.end method

.method playTotalList(I)V
    .registers 4
    .param p1, "playPos"    # I

    .prologue
    .line 450
    iget-object v0, p0, Lcom/pantech/app/music/library/ListAdapter;->mOnItemClickListener:Lcom/pantech/app/music/library/IListAdapter$OnItemClickListener;

    if-eqz v0, :cond_d

    .line 451
    iget-object v0, p0, Lcom/pantech/app/music/library/ListAdapter;->mOnItemClickListener:Lcom/pantech/app/music/library/IListAdapter$OnItemClickListener;

    invoke-virtual {p0}, Lcom/pantech/app/music/library/ListAdapter;->getMusicList()[Lcom/pantech/app/music/list/MusicItemInfo;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/pantech/app/music/library/IListAdapter$OnItemClickListener;->onRequestPlay([Lcom/pantech/app/music/list/MusicItemInfo;I)V

    .line 453
    :cond_d
    return-void
.end method

.method public refreshAll()V
    .registers 4

    .prologue
    .line 370
    iget-boolean v0, p0, Lcom/pantech/app/music/library/ListAdapter;->mBlockUpdateForListChanged:Z

    if-eqz v0, :cond_5

    .line 374
    :goto_4
    return-void

    .line 372
    :cond_5
    sget-object v0, Lcom/pantech/app/music/library/ListAdapter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "refreshListAll() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/music/library/ListAdapter;->mFragmentInfo:Lcom/pantech/app/music/library/FragmentInfo;

    invoke-virtual {v2}, Lcom/pantech/app/music/library/FragmentInfo;->getCategory()Lcom/pantech/app/music/library/FragmentInfo$Category;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/MLog;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    invoke-virtual {p0}, Lcom/pantech/app/music/library/ListAdapter;->notifyDataSetChanged()V

    goto :goto_4
.end method

.method public removeSelected()I
    .registers 4

    .prologue
    .line 378
    const/4 v1, 0x0

    .line 379
    .local v1, "removeCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    invoke-virtual {p0}, Lcom/pantech/app/music/library/ListAdapter;->getItemCount()I

    move-result v2

    if-ge v0, v2, :cond_23

    .line 380
    iget-object v2, p0, Lcom/pantech/app/music/library/ListAdapter;->mActionMode:Lcom/pantech/app/music/library/ActionModeInfo;

    invoke-virtual {v2}, Lcom/pantech/app/music/library/ActionModeInfo;->isActivated()Z

    move-result v2

    if-eqz v2, :cond_1b

    iget-object v2, p0, Lcom/pantech/app/music/library/ListAdapter;->mActionMode:Lcom/pantech/app/music/library/ActionModeInfo;

    invoke-virtual {v2, v0}, Lcom/pantech/app/music/library/ActionModeInfo;->isChecked(I)Z

    move-result v2

    if-nez v2, :cond_1b

    .line 379
    :goto_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 382
    :cond_1b
    sub-int v2, v0, v1

    invoke-virtual {p0, v2}, Lcom/pantech/app/music/library/ListAdapter;->notifyItemRemoved(I)V

    .line 383
    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    .line 385
    :cond_23
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/pantech/app/music/library/ListAdapter;->mBlockUpdateForListChanged:Z

    .line 386
    iget-object v2, p0, Lcom/pantech/app/music/library/ListAdapter;->mActionMode:Lcom/pantech/app/music/library/ActionModeInfo;

    invoke-virtual {v2}, Lcom/pantech/app/music/library/ActionModeInfo;->clear()V

    .line 387
    return v1
.end method

.method sendSelectedItem(Lcom/pantech/app/music/library/IListHolderHelper$ItemInfo;)V
    .registers 3
    .param p1, "info"    # Lcom/pantech/app/music/library/IListHolderHelper$ItemInfo;

    .prologue
    .line 509
    iget-object v0, p0, Lcom/pantech/app/music/library/ListAdapter;->mOnItemClickListener:Lcom/pantech/app/music/library/IListAdapter$OnItemClickListener;

    if-eqz v0, :cond_9

    .line 510
    iget-object v0, p0, Lcom/pantech/app/music/library/ListAdapter;->mOnItemClickListener:Lcom/pantech/app/music/library/IListAdapter$OnItemClickListener;

    invoke-interface {v0, p1}, Lcom/pantech/app/music/library/IListAdapter$OnItemClickListener;->onItemSelected(Lcom/pantech/app/music/library/IListHolderHelper$ItemInfo;)V

    .line 512
    :cond_9
    return-void
.end method

.method public setHighlightWordList([Ljava/lang/String;)V
    .registers 2
    .param p1, "wordList"    # [Ljava/lang/String;

    .prologue
    .line 365
    iput-object p1, p0, Lcom/pantech/app/music/library/ListAdapter;->mHighlightWordList:[Ljava/lang/String;

    .line 366
    return-void
.end method

.method public setOnItemListener(Lcom/pantech/app/music/library/IListAdapter$OnItemClickListener;Lcom/pantech/app/music/library/IListAdapter$OnItemDragListener;)V
    .registers 3
    .param p1, "clickListener"    # Lcom/pantech/app/music/library/IListAdapter$OnItemClickListener;
    .param p2, "dragListener"    # Lcom/pantech/app/music/library/IListAdapter$OnItemDragListener;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/pantech/app/music/library/ListAdapter;->mOnItemClickListener:Lcom/pantech/app/music/library/IListAdapter$OnItemClickListener;

    .line 73
    iput-object p2, p0, Lcom/pantech/app/music/library/ListAdapter;->mOnItemDragListener:Lcom/pantech/app/music/library/IListAdapter$OnItemDragListener;

    .line 74
    return-void
.end method
