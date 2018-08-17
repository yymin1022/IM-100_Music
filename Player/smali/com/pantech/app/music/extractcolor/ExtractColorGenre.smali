.class public Lcom/pantech/app/music/extractcolor/ExtractColorGenre;
.super Lcom/pantech/app/music/extractcolor/ColorForm;
.source "ExtractColorGenre.java"


# instance fields
.field mPresent:Lcom/pantech/util/music/GenreRepresent;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/Object;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Lcom/pantech/app/music/extractcolor/ColorForm;-><init>(Landroid/content/Context;Ljava/lang/Object;)V

    .line 19
    new-instance v0, Lcom/pantech/util/music/GenreRepresent;

    invoke-direct {v0}, Lcom/pantech/util/music/GenreRepresent;-><init>()V

    iput-object v0, p0, Lcom/pantech/app/music/extractcolor/ExtractColorGenre;->mPresent:Lcom/pantech/util/music/GenreRepresent;

    .line 20
    return-void
.end method


# virtual methods
.method extractColor()I
    .registers 15

    .prologue
    .line 24
    const v10, -0xff0001

    .line 25
    .local v10, "color":I
    iget-object v0, p0, Lcom/pantech/app/music/extractcolor/ExtractColorGenre;->mData:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 26
    .local v8, "audioid":J
    const/4 v7, 0x0

    .line 28
    .local v7, "c":Landroid/database/Cursor;
    :try_start_c
    sget-object v0, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, v8, v9}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    .line 29
    .local v6, "audioUri":Landroid/net/Uri;
    const-string v0, "/genres"

    invoke-static {v6, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 30
    .local v1, "genreUri":Landroid/net/Uri;
    iget-object v0, p0, Lcom/pantech/app/music/extractcolor/ExtractColorGenre;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "name"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 31
    if-eqz v7, :cond_3a

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I
    :try_end_37
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_37} :catch_a7
    .catchall {:try_start_c .. :try_end_37} :catchall_be

    move-result v0

    if-nez v0, :cond_42

    .line 32
    :cond_3a
    const/high16 v0, -0x1000000

    .line 45
    if-eqz v7, :cond_41

    .line 46
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 49
    .end local v1    # "genreUri":Landroid/net/Uri;
    .end local v6    # "audioUri":Landroid/net/Uri;
    :cond_41
    :goto_41
    return v0

    .line 34
    .restart local v1    # "genreUri":Landroid/net/Uri;
    .restart local v6    # "audioUri":Landroid/net/Uri;
    :cond_42
    :goto_42
    :try_start_42
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_b8

    .line 35
    const-string v0, "name"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 36
    .local v12, "genre":Ljava/lang/String;
    iget-object v0, p0, Lcom/pantech/app/music/extractcolor/ExtractColorGenre;->mPresent:Lcom/pantech/util/music/GenreRepresent;

    invoke-virtual {v0, v12}, Lcom/pantech/util/music/GenreRepresent;->getGenre(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 37
    .local v13, "represent":Ljava/lang/String;
    iget-object v0, p0, Lcom/pantech/app/music/extractcolor/ExtractColorGenre;->mPresent:Lcom/pantech/util/music/GenreRepresent;

    invoke-virtual {v0, v12}, Lcom/pantech/util/music/GenreRepresent;->getColor(Ljava/lang/String;)I

    move-result v10

    .line 38
    const-string v0, "ExtractColorGenre"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "->Genre:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/pantech/app/music/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    const-string v0, "ExtractColorGenre"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "->represent:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/pantech/app/music/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    const-string v0, "ExtractColorGenre"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "->color:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/pantech/app/music/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a6
    .catch Ljava/lang/RuntimeException; {:try_start_42 .. :try_end_a6} :catch_a7
    .catchall {:try_start_42 .. :try_end_a6} :catchall_be

    goto :goto_42

    .line 42
    .end local v1    # "genreUri":Landroid/net/Uri;
    .end local v6    # "audioUri":Landroid/net/Uri;
    .end local v12    # "genre":Ljava/lang/String;
    .end local v13    # "represent":Ljava/lang/String;
    :catch_a7
    move-exception v11

    .line 43
    .local v11, "ex":Ljava/lang/RuntimeException;
    :try_start_a8
    const-string v0, "ExtractColorGenre"

    invoke-virtual {v11}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/pantech/app/music/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b1
    .catchall {:try_start_a8 .. :try_end_b1} :catchall_be

    .line 45
    if-eqz v7, :cond_b6

    .line 46
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .end local v11    # "ex":Ljava/lang/RuntimeException;
    :cond_b6
    :goto_b6
    move v0, v10

    .line 49
    goto :goto_41

    .line 45
    .restart local v1    # "genreUri":Landroid/net/Uri;
    .restart local v6    # "audioUri":Landroid/net/Uri;
    :cond_b8
    if-eqz v7, :cond_b6

    .line 46
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_b6

    .line 45
    .end local v1    # "genreUri":Landroid/net/Uri;
    .end local v6    # "audioUri":Landroid/net/Uri;
    :catchall_be
    move-exception v0

    if-eqz v7, :cond_c4

    .line 46
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_c4
    throw v0
.end method

.method public getData()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 60
    iget-object v0, p0, Lcom/pantech/app/music/extractcolor/ExtractColorGenre;->mData:Ljava/lang/Object;

    return-object v0
.end method

.method public getExtractedColor()I
    .registers 2

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/pantech/app/music/extractcolor/ExtractColorGenre;->extractColor()I

    move-result v0

    .line 55
    .local v0, "color":I
    return v0
.end method
