.class public Lcom/pantech/app/music/list/db/SelectManager$GroupSelectInfo;
.super Lcom/pantech/app/music/list/db/SelectManager$SelectInfo;
.source "SelectManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/music/list/db/SelectManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GroupSelectInfo"
.end annotation


# instance fields
.field public mChildTable:Lcom/pantech/app/music/list/component/ArrayListMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/pantech/app/music/list/component/ArrayListMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/pantech/app/music/list/db/SelectManager$ContentSelectInfo;",
            ">;"
        }
    .end annotation
.end field

.field public mChildTotalSize:I

.field public mGroupID:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Ljava/lang/String;I)V
    .registers 7
    .param p1, "category"    # Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;
    .param p2, "groupID"    # Ljava/lang/String;
    .param p3, "count"    # I

    .prologue
    .line 1403
    invoke-direct {p0, p1}, Lcom/pantech/app/music/list/db/SelectManager$SelectInfo;-><init>(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;)V

    .line 1405
    invoke-virtual {p1}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->isGroup()Z

    move-result v0

    if-nez v0, :cond_22

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid Category:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1407
    :cond_22
    iput-object p2, p0, Lcom/pantech/app/music/list/db/SelectManager$GroupSelectInfo;->mGroupID:Ljava/lang/String;

    .line 1408
    new-instance v0, Lcom/pantech/app/music/list/component/ArrayListMap;

    invoke-direct {v0}, Lcom/pantech/app/music/list/component/ArrayListMap;-><init>()V

    iput-object v0, p0, Lcom/pantech/app/music/list/db/SelectManager$GroupSelectInfo;->mChildTable:Lcom/pantech/app/music/list/component/ArrayListMap;

    .line 1409
    iput p3, p0, Lcom/pantech/app/music/list/db/SelectManager$GroupSelectInfo;->mChildTotalSize:I

    .line 1412
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GroupSelectInfo category:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " groupID:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/pantech/app/music/utils/MLog;->i(Ljava/lang/String;)V

    .line 1413
    return-void
.end method

.method public constructor <init>(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Ljava/lang/String;Lcom/pantech/app/music/list/component/ArrayListMap;)V
    .registers 7
    .param p1, "category"    # Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;
    .param p2, "groupID"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;",
            "Ljava/lang/String;",
            "Lcom/pantech/app/music/list/component/ArrayListMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/pantech/app/music/list/db/SelectManager$ContentSelectInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1418
    .local p3, "childTable":Lcom/pantech/app/music/list/component/ArrayListMap;, "Lcom/pantech/app/music/list/component/ArrayListMap<Ljava/lang/String;Lcom/pantech/app/music/list/db/SelectManager$ContentSelectInfo;>;"
    invoke-direct {p0, p1}, Lcom/pantech/app/music/list/db/SelectManager$SelectInfo;-><init>(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;)V

    .line 1420
    invoke-virtual {p1}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->isGroup()Z

    move-result v0

    if-nez v0, :cond_22

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid Category:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1422
    :cond_22
    iput-object p2, p0, Lcom/pantech/app/music/list/db/SelectManager$GroupSelectInfo;->mGroupID:Ljava/lang/String;

    .line 1424
    iput-object p3, p0, Lcom/pantech/app/music/list/db/SelectManager$GroupSelectInfo;->mChildTable:Lcom/pantech/app/music/list/component/ArrayListMap;

    .line 1425
    invoke-virtual {p3}, Lcom/pantech/app/music/list/component/ArrayListMap;->size()I

    move-result v0

    iput v0, p0, Lcom/pantech/app/music/list/db/SelectManager$GroupSelectInfo;->mChildTotalSize:I

    .line 1428
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GroupSelectInfo category:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " groupID:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " add childTable(childTable Count:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p3}, Lcom/pantech/app/music/list/component/ArrayListMap;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/pantech/app/music/utils/MLog;->i(Ljava/lang/String;)V

    .line 1429
    return-void
.end method


# virtual methods
.method public getAllContentsCount()I
    .registers 2

    .prologue
    .line 1571
    iget v0, p0, Lcom/pantech/app/music/list/db/SelectManager$GroupSelectInfo;->mChildTotalSize:I

    if-nez v0, :cond_6

    .line 1572
    const/4 v0, 0x1

    .line 1574
    :goto_5
    return v0

    :cond_6
    iget v0, p0, Lcom/pantech/app/music/list/db/SelectManager$GroupSelectInfo;->mChildTotalSize:I

    goto :goto_5
.end method

.method public getChildCategory(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Ljava/lang/String;)Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;
    .registers 7
    .param p1, "category"    # Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;
    .param p2, "groupID"    # Ljava/lang/String;

    .prologue
    .line 1433
    iget-object v2, p0, Lcom/pantech/app/music/list/db/SelectManager$GroupSelectInfo;->mCategory:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-virtual {v2}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->getChild()Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    move-result-object v0

    .line 1434
    .local v0, "childCategory":Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;
    iget-object v2, p0, Lcom/pantech/app/music/list/db/SelectManager$GroupSelectInfo;->mCategory:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    sget-object v3, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_PLAYLIST:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-virtual {v2, v3}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 1436
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 1438
    .local v1, "nPlaylistID":I
    packed-switch v1, :pswitch_data_2c

    .line 1462
    .end local v1    # "nPlaylistID":I
    :cond_17
    :goto_17
    return-object v0

    .line 1441
    .restart local v1    # "nPlaylistID":I
    :pswitch_18
    sget-object v0, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_PODCAST:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    .line 1442
    const-string p2, ""

    .line 1443
    goto :goto_17

    .line 1446
    :pswitch_1d
    sget-object v0, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_MOSTPLAYED:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    .line 1447
    const-string p2, ""

    .line 1448
    goto :goto_17

    .line 1451
    :pswitch_22
    sget-object v0, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_RECENTLY_ADDED:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    .line 1452
    const-string p2, ""

    .line 1453
    goto :goto_17

    .line 1456
    :pswitch_27
    sget-object v0, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_FAVORITES:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    .line 1457
    const-string p2, ""

    goto :goto_17

    .line 1438
    :pswitch_data_2c
    .packed-switch -0x6
        :pswitch_27
        :pswitch_1d
        :pswitch_22
        :pswitch_18
    .end packed-switch
.end method

.method public getChildCount()I
    .registers 2

    .prologue
    .line 1579
    iget v0, p0, Lcom/pantech/app/music/list/db/SelectManager$GroupSelectInfo;->mChildTotalSize:I

    return v0
.end method

.method public getChildSelectRatio()F
    .registers 15

    .prologue
    const-wide v12, 0x3fe6666666666666L    # 0.7

    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    const-wide v8, 0x3fd3333333333333L    # 0.3

    const-wide v6, 0x3fc3333333333333L    # 0.15

    .line 1604
    invoke-virtual {p0}, Lcom/pantech/app/music/list/db/SelectManager$GroupSelectInfo;->getSelectedContentsCount()I

    move-result v1

    .line 1606
    .local v1, "selectCount":I
    invoke-virtual {p0}, Lcom/pantech/app/music/list/db/SelectManager$GroupSelectInfo;->isChildSomeSelected()Z

    move-result v2

    if-eqz v2, :cond_74

    iget v2, p0, Lcom/pantech/app/music/list/db/SelectManager$GroupSelectInfo;->mChildTotalSize:I

    if-lez v2, :cond_74

    .line 1608
    int-to-float v2, v1

    iget v3, p0, Lcom/pantech/app/music/list/db/SelectManager$GroupSelectInfo;->mChildTotalSize:I

    int-to-float v3, v3

    div-float v0, v2, v3

    .line 1610
    .local v0, "ratio":F
    float-to-double v2, v0

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-ltz v2, :cond_35

    float-to-double v2, v0

    cmpg-double v2, v2, v6

    if-gtz v2, :cond_35

    .line 1612
    const v0, 0x3e4ccccd    # 0.2f

    .line 1638
    .end local v0    # "ratio":F
    :goto_34
    return v0

    .line 1614
    .restart local v0    # "ratio":F
    :cond_35
    float-to-double v2, v0

    cmpl-double v2, v2, v6

    if-lez v2, :cond_43

    float-to-double v2, v0

    cmpg-double v2, v2, v8

    if-gtz v2, :cond_43

    .line 1616
    const v0, 0x3e99999a    # 0.3f

    goto :goto_34

    .line 1618
    :cond_43
    float-to-double v2, v0

    cmpl-double v2, v2, v8

    if-lez v2, :cond_50

    float-to-double v2, v0

    cmpg-double v2, v2, v10

    if-gtz v2, :cond_50

    .line 1620
    const/high16 v0, 0x3f000000    # 0.5f

    goto :goto_34

    .line 1622
    :cond_50
    float-to-double v2, v0

    cmpl-double v2, v2, v10

    if-lez v2, :cond_5e

    float-to-double v2, v0

    cmpg-double v2, v2, v12

    if-gtz v2, :cond_5e

    .line 1624
    const v0, 0x3f19999a    # 0.6f

    goto :goto_34

    .line 1626
    :cond_5e
    float-to-double v2, v0

    cmpl-double v2, v2, v12

    if-lez v2, :cond_71

    float-to-double v2, v0

    const-wide v4, 0x3fefae147ae147aeL    # 0.99

    cmpg-double v2, v2, v4

    if-gtz v2, :cond_71

    .line 1628
    const v0, 0x3f4ccccd    # 0.8f

    goto :goto_34

    .line 1632
    :cond_71
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_34

    .line 1638
    .end local v0    # "ratio":F
    :cond_74
    const/4 v0, 0x0

    goto :goto_34
.end method

.method public getContentsValues()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/pantech/app/music/list/db/SelectManager$ContentSelectInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1643
    iget-object v0, p0, Lcom/pantech/app/music/list/db/SelectManager$GroupSelectInfo;->mChildTable:Lcom/pantech/app/music/list/component/ArrayListMap;

    invoke-virtual {v0}, Lcom/pantech/app/music/list/component/ArrayListMap;->values()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getSelectedContentsCount()I
    .registers 2

    .prologue
    .line 1559
    iget-object v0, p0, Lcom/pantech/app/music/list/db/SelectManager$GroupSelectInfo;->mChildTable:Lcom/pantech/app/music/list/component/ArrayListMap;

    if-nez v0, :cond_6

    .line 1560
    const/4 v0, 0x0

    .line 1565
    :goto_5
    return v0

    .line 1562
    :cond_6
    iget-object v0, p0, Lcom/pantech/app/music/list/db/SelectManager$GroupSelectInfo;->mChildTable:Lcom/pantech/app/music/list/component/ArrayListMap;

    invoke-virtual {v0}, Lcom/pantech/app/music/list/component/ArrayListMap;->size()I

    move-result v0

    if-nez v0, :cond_10

    .line 1563
    const/4 v0, 0x1

    goto :goto_5

    .line 1565
    :cond_10
    iget-object v0, p0, Lcom/pantech/app/music/list/db/SelectManager$GroupSelectInfo;->mChildTable:Lcom/pantech/app/music/list/component/ArrayListMap;

    invoke-virtual {v0}, Lcom/pantech/app/music/list/component/ArrayListMap;->size()I

    move-result v0

    goto :goto_5
.end method

.method public isChildAllSelected()Z
    .registers 3

    .prologue
    .line 1584
    iget-object v0, p0, Lcom/pantech/app/music/list/db/SelectManager$GroupSelectInfo;->mChildTable:Lcom/pantech/app/music/list/component/ArrayListMap;

    invoke-virtual {v0}, Lcom/pantech/app/music/list/component/ArrayListMap;->size()I

    move-result v0

    if-lez v0, :cond_14

    iget-object v0, p0, Lcom/pantech/app/music/list/db/SelectManager$GroupSelectInfo;->mChildTable:Lcom/pantech/app/music/list/component/ArrayListMap;

    invoke-virtual {v0}, Lcom/pantech/app/music/list/component/ArrayListMap;->size()I

    move-result v0

    iget v1, p0, Lcom/pantech/app/music/list/db/SelectManager$GroupSelectInfo;->mChildTotalSize:I

    if-ne v0, v1, :cond_14

    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public isChildSomeSelected()Z
    .registers 2

    .prologue
    .line 1599
    iget v0, p0, Lcom/pantech/app/music/list/db/SelectManager$GroupSelectInfo;->mChildTotalSize:I

    if-lez v0, :cond_c

    invoke-virtual {p0}, Lcom/pantech/app/music/list/db/SelectManager$GroupSelectInfo;->isSelected()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public isSelected()Z
    .registers 3

    .prologue
    .line 1590
    invoke-virtual {p0}, Lcom/pantech/app/music/list/db/SelectManager$GroupSelectInfo;->getSelectedContentsCount()I

    move-result v0

    .line 1592
    .local v0, "selectCount":I
    if-lez v0, :cond_e

    invoke-virtual {p0}, Lcom/pantech/app/music/list/db/SelectManager$GroupSelectInfo;->getAllContentsCount()I

    move-result v1

    if-ne v0, v1, :cond_e

    const/4 v1, 0x1

    :goto_d
    return v1

    :cond_e
    const/4 v1, 0x0

    goto :goto_d
.end method

.method public selectChild(Landroid/database/Cursor;ILjava/lang/Object;Ljava/util/concurrent/locks/ReentrantReadWriteLock;)I
    .registers 11
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "position"    # I
    .param p3, "cursorLock"    # Ljava/lang/Object;
    .param p4, "lock"    # Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .prologue
    .line 1535
    iget-object v0, p0, Lcom/pantech/app/music/list/db/SelectManager$GroupSelectInfo;->mCategory:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    iget-object v2, p0, Lcom/pantech/app/music/list/db/SelectManager$GroupSelectInfo;->mGroupID:Ljava/lang/String;

    invoke-virtual {p0, v0, v2}, Lcom/pantech/app/music/list/db/SelectManager$GroupSelectInfo;->getChildCategory(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Ljava/lang/String;)Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    move-result-object v1

    .line 1537
    .local v1, "childCategory":Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;
    if-eqz p4, :cond_11

    .line 1538
    invoke-virtual {p4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 1542
    :cond_11
    :try_start_11
    iget-object v0, p0, Lcom/pantech/app/music/list/db/SelectManager$GroupSelectInfo;->mChildTable:Lcom/pantech/app/music/list/component/ArrayListMap;

    iget-object v2, p0, Lcom/pantech/app/music/list/db/SelectManager$GroupSelectInfo;->mGroupID:Ljava/lang/String;

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/pantech/app/music/list/db/SelectManager$GroupSelectInfo;->putContentsInfo(Lcom/pantech/app/music/list/component/ArrayListMap;Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Ljava/lang/String;Landroid/database/Cursor;ILjava/lang/Object;)Z
    :try_end_1b
    .catchall {:try_start_11 .. :try_end_1b} :catchall_34

    move-result v0

    if-eqz v0, :cond_29

    .line 1544
    const/4 v0, 0x1

    .line 1549
    if-eqz p4, :cond_28

    .line 1550
    invoke-virtual {p4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 1553
    :cond_28
    :goto_28
    return v0

    .line 1549
    :cond_29
    if-eqz p4, :cond_32

    .line 1550
    invoke-virtual {p4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 1553
    :cond_32
    const/4 v0, 0x0

    goto :goto_28

    .line 1549
    :catchall_34
    move-exception v0

    if-eqz p4, :cond_3e

    .line 1550
    invoke-virtual {p4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    :cond_3e
    throw v0
.end method

.method public selectChildAll(Landroid/content/Context;Ljava/util/concurrent/locks/ReentrantReadWriteLock;)I
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "lock"    # Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .prologue
    .line 1468
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "selectChildAll:start:category:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/pantech/app/music/list/db/SelectManager$GroupSelectInfo;->mCategory:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " childTable:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/pantech/app/music/list/db/SelectManager$GroupSelectInfo;->mChildTotalSize:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/pantech/app/music/utils/MLog;->i(Ljava/lang/String;)V

    .line 1470
    iget-object v0, p0, Lcom/pantech/app/music/list/db/SelectManager$GroupSelectInfo;->mCategory:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    iget-object v2, p0, Lcom/pantech/app/music/list/db/SelectManager$GroupSelectInfo;->mGroupID:Ljava/lang/String;

    invoke-virtual {p0, v0, v2}, Lcom/pantech/app/music/list/db/SelectManager$GroupSelectInfo;->getChildCategory(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Ljava/lang/String;)Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    move-result-object v1

    .line 1472
    .local v1, "childCategory":Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;
    new-instance v0, Lcom/pantech/app/music/list/db/DBInterfaceHelper$MusicQueryWhereCondition;

    iget-object v2, p0, Lcom/pantech/app/music/list/db/SelectManager$GroupSelectInfo;->mGroupID:Ljava/lang/String;

    invoke-direct {v0, v2}, Lcom/pantech/app/music/list/db/DBInterfaceHelper$MusicQueryWhereCondition;-><init>(Ljava/lang/String;)V

    const/4 v2, -0x1

    invoke-static {p1, v1, v0, v2}, Lcom/pantech/app/music/list/db/DBInterfaceCommon;->queryTrackList(Landroid/content/Context;Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Lcom/pantech/app/music/list/db/DBInterfaceHelper$MusicQueryWhereCondition;I)Landroid/database/Cursor;

    move-result-object v3

    .line 1474
    .local v3, "cursor":Landroid/database/Cursor;
    if-eqz p2, :cond_41

    .line 1475
    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 1482
    :cond_41
    :try_start_41
    iget-object v0, p0, Lcom/pantech/app/music/list/db/SelectManager$GroupSelectInfo;->mChildTable:Lcom/pantech/app/music/list/component/ArrayListMap;

    invoke-virtual {v0}, Lcom/pantech/app/music/list/component/ArrayListMap;->clear()V

    .line 1483
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_47
    if-eqz v3, :cond_5a

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ge v4, v0, :cond_5a

    .line 1485
    iget-object v0, p0, Lcom/pantech/app/music/list/db/SelectManager$GroupSelectInfo;->mChildTable:Lcom/pantech/app/music/list/component/ArrayListMap;

    iget-object v2, p0, Lcom/pantech/app/music/list/db/SelectManager$GroupSelectInfo;->mGroupID:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/pantech/app/music/list/db/SelectManager$GroupSelectInfo;->putContentsInfo(Lcom/pantech/app/music/list/component/ArrayListMap;Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Ljava/lang/String;Landroid/database/Cursor;ILjava/lang/Object;)Z

    .line 1483
    add-int/lit8 v4, v4, 0x1

    goto :goto_47

    .line 1488
    :cond_5a
    if-eqz v3, :cond_5f

    .line 1489
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 1491
    :cond_5f
    iget-object v0, p0, Lcom/pantech/app/music/list/db/SelectManager$GroupSelectInfo;->mChildTable:Lcom/pantech/app/music/list/component/ArrayListMap;

    invoke-virtual {v0}, Lcom/pantech/app/music/list/component/ArrayListMap;->size()I

    move-result v0

    iput v0, p0, Lcom/pantech/app/music/list/db/SelectManager$GroupSelectInfo;->mChildTotalSize:I

    .line 1494
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "selectChildAll:end:category:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/pantech/app/music/list/db/SelectManager$GroupSelectInfo;->mCategory:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " childTable:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/pantech/app/music/list/db/SelectManager$GroupSelectInfo;->mChildTotalSize:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/pantech/app/music/utils/MLog;->i(Ljava/lang/String;)V

    .line 1522
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAllSelectedGroupSelectInfo groupID:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/pantech/app/music/list/db/SelectManager$GroupSelectInfo;->mGroupID:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " add childTable(childTable Count:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/pantech/app/music/list/db/SelectManager$GroupSelectInfo;->mChildTotalSize:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/pantech/app/music/utils/MLog;->i(Ljava/lang/String;)V
    :try_end_b5
    .catchall {:try_start_41 .. :try_end_b5} :catchall_c1

    .line 1526
    if-eqz p2, :cond_be

    .line 1527
    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 1530
    :cond_be
    iget v0, p0, Lcom/pantech/app/music/list/db/SelectManager$GroupSelectInfo;->mChildTotalSize:I

    return v0

    .line 1526
    .end local v4    # "i":I
    :catchall_c1
    move-exception v0

    if-eqz p2, :cond_cb

    .line 1527
    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    :cond_cb
    throw v0
.end method
