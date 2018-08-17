.class public Lcom/pantech/app/music/library/helper/DuplicateHelper;
.super Ljava/lang/Object;
.source "DuplicateHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DuplicateHelper"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearCursor()V
    .registers 0

    .prologue
    .line 36
    invoke-static {}, Lcom/pantech/app/music/list/module/QuerySimilartySort;->clearSavedCursor()V

    .line 37
    return-void
.end method

.method public static getCursor(Landroid/content/Context;)Landroid/database/Cursor;
    .registers 12
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 14
    sget-object v0, Lcom/pantech/app/music/library/FragmentInfo$Category;->CATEGORY_DUPLICATE:Lcom/pantech/app/music/library/FragmentInfo$Category;

    const-wide/16 v2, -0x1

    const/4 v1, -0x1

    invoke-static {v0, v2, v3, v1}, Lcom/pantech/app/music/library/helper/DBProviderHelper;->getQueryInfo(Lcom/pantech/app/music/library/FragmentInfo$Category;JI)Lcom/pantech/app/music/library/helper/DBProviderHelper$QueryInfo;

    move-result-object v9

    .line 15
    .local v9, "info":Lcom/pantech/app/music/library/helper/DBProviderHelper$QueryInfo;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, v9, Lcom/pantech/app/music/library/helper/DBProviderHelper$QueryInfo;->mContentUri:Landroid/net/Uri;

    iget-object v2, v9, Lcom/pantech/app/music/library/helper/DBProviderHelper$QueryInfo;->mProjection:[Ljava/lang/String;

    iget-object v3, v9, Lcom/pantech/app/music/library/helper/DBProviderHelper$QueryInfo;->mSelection:Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, v9, Lcom/pantech/app/music/library/helper/DBProviderHelper$QueryInfo;->mSortOrder:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 17
    .local v7, "data":Landroid/database/Cursor;
    const-string v0, "DuplicateHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "data count:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/MLog;->debugE(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    new-instance v10, Lcom/pantech/app/music/list/module/QuerySimilartySort;

    const v0, 0x3f4ccccd    # 0.8f

    invoke-direct {v10, p0, v0, v7}, Lcom/pantech/app/music/list/module/QuerySimilartySort;-><init>(Landroid/content/Context;FLandroid/database/Cursor;)V

    .line 21
    .local v10, "task":Lcom/pantech/app/music/list/module/QuerySimilartySort;
    const/4 v6, 0x0

    .line 23
    .local v6, "c":Landroid/database/Cursor;
    :try_start_3f
    invoke-virtual {v10}, Lcom/pantech/app/music/list/module/QuerySimilartySort;->call()Landroid/database/Cursor;
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_42} :catch_49

    move-result-object v6

    .line 29
    :goto_43
    if-eqz v7, :cond_48

    .line 30
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 32
    :cond_48
    return-object v6

    .line 25
    :catch_49
    move-exception v8

    .line 26
    .local v8, "e":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_43
.end method
