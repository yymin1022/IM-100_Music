.class Lcom/pantech/app/music/list/component/AddToCartDialog$1;
.super Landroid/support/v4/widget/CursorAdapter;
.source "AddToCartDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/app/music/list/component/AddToCartDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/app/music/list/component/AddToCartDialog$1$ViewHolder;
    }
.end annotation


# static fields
.field protected static final CURSOR_POSITION:Ljava/lang/String; = "cursor_position"

.field static final VIEWTYPE_NORMAL:I = 0x0

.field static final VIEWTYPE_SEPARATER:I = 0x1


# instance fields
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

.field final synthetic this$0:Lcom/pantech/app/music/list/component/AddToCartDialog;


# direct methods
.method constructor <init>(Lcom/pantech/app/music/list/component/AddToCartDialog;Landroid/content/Context;Landroid/database/Cursor;Z)V
    .registers 6
    .param p2, "x0"    # Landroid/content/Context;
    .param p3, "x1"    # Landroid/database/Cursor;
    .param p4, "x2"    # Z

    .prologue
    .line 316
    iput-object p1, p0, Lcom/pantech/app/music/list/component/AddToCartDialog$1;->this$0:Lcom/pantech/app/music/list/component/AddToCartDialog;

    invoke-direct {p0, p2, p3, p4}, Landroid/support/v4/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 320
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/pantech/app/music/list/component/AddToCartDialog$1;->mCursorLock:Ljava/lang/Object;

    .line 366
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/pantech/app/music/list/component/AddToCartDialog$1;->mInternalList:Ljava/util/ArrayList;

    return-void
.end method

.method private newView(I)Landroid/view/View;
    .registers 7
    .param p1, "iViewType"    # I

    .prologue
    const/4 v4, 0x0

    .line 432
    const/4 v1, 0x0

    .line 434
    .local v1, "view":Landroid/view/View;
    packed-switch p1, :pswitch_data_40

    .line 451
    :goto_5
    return-object v1

    .line 437
    :pswitch_6
    iget-object v2, p0, Lcom/pantech/app/music/list/component/AddToCartDialog$1;->this$0:Lcom/pantech/app/music/list/component/AddToCartDialog;

    iget-object v2, v2, Lcom/pantech/app/music/list/component/AddToCartDialog;->mViewInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f030075

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 438
    goto :goto_5

    .line 441
    :pswitch_12
    iget-object v2, p0, Lcom/pantech/app/music/list/component/AddToCartDialog$1;->this$0:Lcom/pantech/app/music/list/component/AddToCartDialog;

    iget-object v2, v2, Lcom/pantech/app/music/list/component/AddToCartDialog;->mViewInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f030088

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 443
    new-instance v0, Lcom/pantech/app/music/list/component/AddToCartDialog$1$ViewHolder;

    invoke-direct {v0, p0}, Lcom/pantech/app/music/list/component/AddToCartDialog$1$ViewHolder;-><init>(Lcom/pantech/app/music/list/component/AddToCartDialog$1;)V

    .line 444
    .local v0, "vh":Lcom/pantech/app/music/list/component/AddToCartDialog$1$ViewHolder;
    const v2, 0x7f1000f3

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/pantech/app/music/list/component/AddToCartDialog$1$ViewHolder;->mTextView:Landroid/widget/TextView;

    .line 445
    const v2, 0x7f1000f2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Lcom/pantech/app/music/list/component/AddToCartDialog$1$ViewHolder;->mMainIcon:Landroid/widget/ImageView;

    .line 447
    const v2, 0x7f100013

    invoke-virtual {v1, v2, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    goto :goto_5

    .line 434
    nop

    :pswitch_data_40
    .packed-switch 0x0
        :pswitch_12
        :pswitch_6
    .end packed-switch
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .registers 2

    .prologue
    .line 611
    const/4 v0, 0x0

    return v0
.end method

.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 616
    return-void
.end method

.method protected buildIndexBarInformation(Landroid/database/Cursor;)V
    .registers 11
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/16 v8, -0x67

    .line 370
    iget-object v6, p0, Lcom/pantech/app/music/list/component/AddToCartDialog$1;->mCursorLock:Ljava/lang/Object;

    monitor-enter v6

    .line 372
    if-eqz p1, :cond_99

    .line 374
    const/4 v4, 0x0

    .line 376
    .local v4, "prevPlaylist":I
    :try_start_8
    invoke-interface {p1}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v0

    .line 377
    .local v0, "columnNames":[Ljava/lang/String;
    iget-object v5, p0, Lcom/pantech/app/music/list/component/AddToCartDialog$1;->mInternalList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 378
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_12
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-ge v1, v5, :cond_99

    .line 380
    invoke-interface {p1, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 381
    const-string v5, "_id"

    invoke-static {p1, v5}, Lcom/pantech/app/music/list/db/CursorUtils;->getCursorInt(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    .line 384
    .local v3, "playlistID":I
    if-nez v1, :cond_64

    if-gez v3, :cond_64

    .line 386
    new-instance v2, Ljava/util/Hashtable;

    invoke-direct {v2}, Ljava/util/Hashtable;-><init>()V

    .line 387
    .local v2, "item":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v5, "_id"

    const/4 v7, -0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v5, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 388
    const-string v5, "seperator_type"

    const/16 v7, -0x65

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v5, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 389
    const-string v5, "cursor_position"

    const/4 v7, -0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v5, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 390
    iget-object v5, p0, Lcom/pantech/app/music/list/component/AddToCartDialog$1;->mInternalList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 403
    .end local v2    # "item":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_4e
    :goto_4e
    invoke-static {p1, v0}, Lcom/pantech/app/music/list/module/QuerySimilartySort;->convertCursorToHashtable(Landroid/database/Cursor;[Ljava/lang/String;)Ljava/util/Hashtable;

    move-result-object v2

    .line 404
    .restart local v2    # "item":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v5, "cursor_position"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v5, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 405
    iget-object v5, p0, Lcom/pantech/app/music/list/component/AddToCartDialog$1;->mInternalList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 407
    move v4, v3

    .line 378
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 393
    .end local v2    # "item":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_64
    if-gez v4, :cond_4e

    if-eq v4, v8, :cond_4e

    if-eq v3, v8, :cond_6c

    if-ltz v3, :cond_4e

    .line 395
    :cond_6c
    new-instance v2, Ljava/util/Hashtable;

    invoke-direct {v2}, Ljava/util/Hashtable;-><init>()V

    .line 396
    .restart local v2    # "item":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v5, "_id"

    const/4 v7, -0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v5, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 397
    const-string v5, "seperator_type"

    const/16 v7, -0x66

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v5, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 399
    const-string v5, "cursor_position"

    const/4 v7, -0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v5, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 400
    iget-object v5, p0, Lcom/pantech/app/music/list/component/AddToCartDialog$1;->mInternalList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4e

    .line 410
    .end local v0    # "columnNames":[Ljava/lang/String;
    .end local v1    # "i":I
    .end local v2    # "item":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v3    # "playlistID":I
    .end local v4    # "prevPlaylist":I
    :catchall_96
    move-exception v5

    monitor-exit v6
    :try_end_98
    .catchall {:try_start_8 .. :try_end_98} :catchall_96

    throw v5

    :cond_99
    :try_start_99
    monitor-exit v6
    :try_end_9a
    .catchall {:try_start_99 .. :try_end_9a} :catchall_96

    .line 411
    return-void
.end method

.method public changeCursor(Landroid/database/Cursor;)V
    .registers 4
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 357
    iget-object v1, p0, Lcom/pantech/app/music/list/component/AddToCartDialog$1;->mCursorLock:Ljava/lang/Object;

    monitor-enter v1

    .line 359
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/pantech/app/music/list/component/AddToCartDialog$1;->buildIndexBarInformation(Landroid/database/Cursor;)V

    .line 360
    invoke-super {p0, p1}, Landroid/support/v4/widget/CursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 361
    monitor-exit v1

    .line 362
    return-void

    .line 361
    :catchall_b
    move-exception v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v0
.end method

.method public getCount()I
    .registers 2

    .prologue
    .line 548
    iget-object v0, p0, Lcom/pantech/app/music/list/component/AddToCartDialog$1;->mInternalList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getCursorPosition(I)I
    .registers 6
    .param p1, "iInternalPosition"    # I

    .prologue
    const/4 v1, -0x1

    .line 415
    if-gez p1, :cond_4

    .line 426
    :goto_3
    return v1

    .line 418
    :cond_4
    iget-object v2, p0, Lcom/pantech/app/music/list/component/AddToCartDialog$1;->mCursorLock:Ljava/lang/Object;

    monitor-enter v2

    .line 420
    :try_start_7
    iget-object v3, p0, Lcom/pantech/app/music/list/component/AddToCartDialog$1;->mInternalList:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Hashtable;

    .line 421
    .local v0, "item":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz v0, :cond_22

    .line 423
    const-string v1, "cursor_position"

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    monitor-exit v2

    goto :goto_3

    .line 427
    .end local v0    # "item":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    :catchall_1f
    move-exception v1

    monitor-exit v2
    :try_end_21
    .catchall {:try_start_7 .. :try_end_21} :catchall_1f

    throw v1

    .line 426
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
    .line 560
    invoke-virtual {p0, p1}, Lcom/pantech/app/music/list/component/AddToCartDialog$1;->getCursorPosition(I)I

    move-result v0

    .line 561
    .local v0, "cursorPosition":I
    if-ltz v0, :cond_b

    .line 562
    invoke-super {p0, v0}, Landroid/support/v4/widget/CursorAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    .line 564
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
    .line 576
    invoke-virtual {p0, p1}, Lcom/pantech/app/music/list/component/AddToCartDialog$1;->getCursorPosition(I)I

    move-result v0

    .line 578
    .local v0, "cursorPos":I
    if-ltz v0, :cond_8

    .line 579
    const/4 v1, 0x0

    .line 581
    :goto_7
    return v1

    :cond_8
    const/4 v1, 0x1

    goto :goto_7
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 15
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 458
    iget-object v8, p0, Lcom/pantech/app/music/list/component/AddToCartDialog$1;->mCursorLock:Ljava/lang/Object;

    monitor-enter v8

    .line 460
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/pantech/app/music/list/component/AddToCartDialog$1;->getItemViewType(I)I

    move-result v3

    .line 462
    .local v3, "iViewType":I
    if-eqz p2, :cond_12

    .line 464
    move-object v6, p2

    .line 465
    .local v6, "view":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->clearAnimation()V

    .line 472
    :goto_d
    if-nez v6, :cond_17

    .line 473
    const/4 v6, 0x0

    monitor-exit v8

    .line 535
    .end local v6    # "view":Landroid/view/View;
    :goto_11
    return-object v6

    .line 469
    :cond_12
    invoke-direct {p0, v3}, Lcom/pantech/app/music/list/component/AddToCartDialog$1;->newView(I)Landroid/view/View;

    move-result-object v6

    .restart local v6    # "view":Landroid/view/View;
    goto :goto_d

    .line 475
    :cond_17
    packed-switch v3, :pswitch_data_cc

    .line 533
    :cond_1a
    :goto_1a
    monitor-exit v8

    goto :goto_11

    .end local v3    # "iViewType":I
    .end local v6    # "view":Landroid/view/View;
    :catchall_1c
    move-exception v7

    monitor-exit v8
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    throw v7

    .line 479
    .restart local v3    # "iViewType":I
    .restart local v6    # "view":Landroid/view/View;
    :pswitch_1f
    :try_start_1f
    iget-object v9, p0, Lcom/pantech/app/music/list/component/AddToCartDialog$1;->mCursorLock:Ljava/lang/Object;

    monitor-enter v9
    :try_end_22
    .catchall {:try_start_1f .. :try_end_22} :catchall_1c

    .line 481
    :try_start_22
    invoke-virtual {p0}, Lcom/pantech/app/music/list/component/AddToCartDialog$1;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 483
    .local v0, "cursor":Landroid/database/Cursor;
    invoke-virtual {p0, p1}, Lcom/pantech/app/music/list/component/AddToCartDialog$1;->getCursorPosition(I)I

    move-result v2

    .line 485
    .local v2, "iMap":I
    const/4 v7, 0x1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v10

    if-ne v7, v10, :cond_6a

    .line 487
    const v7, 0x7f100013

    invoke-virtual {v6, v7}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pantech/app/music/list/component/AddToCartDialog$1$ViewHolder;

    .line 488
    .local v1, "holder":Lcom/pantech/app/music/list/component/AddToCartDialog$1$ViewHolder;
    iget-object v7, v1, Lcom/pantech/app/music/list/component/AddToCartDialog$1$ViewHolder;->mTextView:Landroid/widget/TextView;

    iget-object v10, p0, Lcom/pantech/app/music/list/component/AddToCartDialog$1;->this$0:Lcom/pantech/app/music/list/component/AddToCartDialog;

    iget-object v10, v10, Lcom/pantech/app/music/list/component/AddToCartDialog;->mPlaylistCategory:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-static {v10}, Lcom/pantech/app/music/db/PanMediaStore$PlayListWrapper;->getColumnPlaylistName(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 490
    iget-object v7, p0, Lcom/pantech/app/music/list/component/AddToCartDialog$1;->this$0:Lcom/pantech/app/music/list/component/AddToCartDialog;

    iget-object v7, v7, Lcom/pantech/app/music/list/component/AddToCartDialog;->mPlaylistCategory:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-static {v7}, Lcom/pantech/app/music/db/PanMediaStore$PlayListWrapper;->getColumnPlaylistID(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    sparse-switch v7, :sswitch_data_d4

    .line 502
    iget-object v7, v1, Lcom/pantech/app/music/list/component/AddToCartDialog$1$ViewHolder;->mMainIcon:Landroid/widget/ImageView;

    const v10, 0x7f020126

    invoke-virtual {v7, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 506
    .end local v1    # "holder":Lcom/pantech/app/music/list/component/AddToCartDialog$1$ViewHolder;
    :cond_6a
    :goto_6a
    monitor-exit v9

    goto :goto_1a

    .end local v0    # "cursor":Landroid/database/Cursor;
    .end local v2    # "iMap":I
    :catchall_6c
    move-exception v7

    monitor-exit v9
    :try_end_6e
    .catchall {:try_start_22 .. :try_end_6e} :catchall_6c

    :try_start_6e
    throw v7
    :try_end_6f
    .catchall {:try_start_6e .. :try_end_6f} :catchall_1c

    .line 493
    .restart local v0    # "cursor":Landroid/database/Cursor;
    .restart local v1    # "holder":Lcom/pantech/app/music/list/component/AddToCartDialog$1$ViewHolder;
    .restart local v2    # "iMap":I
    :sswitch_6f
    :try_start_6f
    iget-object v7, v1, Lcom/pantech/app/music/list/component/AddToCartDialog$1$ViewHolder;->mMainIcon:Landroid/widget/ImageView;

    const v10, 0x7f020125

    invoke-virtual {v7, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_6a

    .line 496
    :sswitch_78
    iget-object v7, v1, Lcom/pantech/app/music/list/component/AddToCartDialog$1$ViewHolder;->mMainIcon:Landroid/widget/ImageView;

    const v10, 0x7f020124

    invoke-virtual {v7, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_6a

    .line 499
    :sswitch_81
    iget-object v7, v1, Lcom/pantech/app/music/list/component/AddToCartDialog$1$ViewHolder;->mMainIcon:Landroid/widget/ImageView;

    const v10, 0x7f02011b

    invoke-virtual {v7, v10}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_89
    .catchall {:try_start_6f .. :try_end_89} :catchall_6c

    goto :goto_6a

    .line 512
    .end local v0    # "cursor":Landroid/database/Cursor;
    .end local v1    # "holder":Lcom/pantech/app/music/list/component/AddToCartDialog$1$ViewHolder;
    .end local v2    # "iMap":I
    :pswitch_8a
    const v7, 0x7f100121

    :try_start_8d
    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 513
    .local v5, "text":Landroid/widget/TextView;
    if-eqz v5, :cond_1a

    .line 515
    iget-object v7, p0, Lcom/pantech/app/music/list/component/AddToCartDialog$1;->mInternalList:Ljava/util/ArrayList;

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Hashtable;

    const-string v9, "seperator_type"

    invoke-virtual {v7, v9}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 517
    .local v4, "seperatorType":I
    packed-switch v4, :pswitch_data_e2

    .line 528
    :goto_ac
    iget-object v7, p0, Lcom/pantech/app/music/list/component/AddToCartDialog$1;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v9, 0x7f0f014a

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_1a

    .line 520
    :pswitch_be
    const v7, 0x7f0800c9

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(I)V

    goto :goto_ac

    .line 524
    :pswitch_c5
    const v7, 0x7f0800ca

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(I)V
    :try_end_cb
    .catchall {:try_start_8d .. :try_end_cb} :catchall_1c

    goto :goto_ac

    .line 475
    :pswitch_data_cc
    .packed-switch 0x0
        :pswitch_1f
        :pswitch_8a
    .end packed-switch

    .line 490
    :sswitch_data_d4
    .sparse-switch
        -0x67 -> :sswitch_78
        -0x65 -> :sswitch_6f
        -0x6 -> :sswitch_81
    .end sparse-switch

    .line 517
    :pswitch_data_e2
    .packed-switch -0x66
        :pswitch_c5
        :pswitch_be
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .registers 2

    .prologue
    .line 587
    const/4 v0, 0x2

    return v0
.end method

.method public isEnabled(I)Z
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 593
    invoke-virtual {p0, p1}, Lcom/pantech/app/music/list/component/AddToCartDialog$1;->getItemViewType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_c

    .line 599
    const/4 v0, 0x1

    :goto_8
    return v0

    .line 596
    :pswitch_9
    const/4 v0, 0x0

    goto :goto_8

    .line 593
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
    .line 618
    const/4 v0, 0x0

    return-object v0
.end method

.method public notifyDataSetChanged()V
    .registers 4

    .prologue
    .line 331
    iget-object v2, p0, Lcom/pantech/app/music/list/component/AddToCartDialog$1;->mCursorLock:Ljava/lang/Object;

    monitor-enter v2

    .line 333
    :try_start_3
    invoke-virtual {p0}, Lcom/pantech/app/music/list/component/AddToCartDialog$1;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 336
    .local v0, "cursor":Landroid/database/Cursor;
    if-eqz v0, :cond_12

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_12

    .line 338
    invoke-virtual {p0, v0}, Lcom/pantech/app/music/list/component/AddToCartDialog$1;->buildIndexBarInformation(Landroid/database/Cursor;)V

    .line 341
    :cond_12
    invoke-super {p0}, Landroid/support/v4/widget/CursorAdapter;->notifyDataSetChanged()V

    .line 342
    monitor-exit v2

    .line 343
    return-void

    .line 342
    .end local v0    # "cursor":Landroid/database/Cursor;
    :catchall_17
    move-exception v1

    monitor-exit v2
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw v1
.end method

.method public notifyDataSetInvalidated()V
    .registers 3

    .prologue
    .line 348
    iget-object v1, p0, Lcom/pantech/app/music/list/component/AddToCartDialog$1;->mCursorLock:Ljava/lang/Object;

    monitor-enter v1

    .line 350
    :try_start_3
    invoke-super {p0}, Landroid/support/v4/widget/CursorAdapter;->notifyDataSetInvalidated()V

    .line 351
    monitor-exit v1

    .line 352
    return-void

    .line 351
    :catchall_8
    move-exception v0

    monitor-exit v1
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v0
.end method
