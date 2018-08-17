.class public final Lcom/pantech/app/music/db/PanMediaStore$PlayListWrapper;
.super Ljava/lang/Object;
.source "PanMediaStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/music/db/PanMediaStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PlayListWrapper"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getColumnPlaylistDateAdded(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;)Ljava/lang/String;
    .registers 4
    .param p0, "category"    # Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    .prologue
    .line 146
    invoke-virtual {p0}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->isUBoxCategory()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 148
    const-string v0, "data_added"

    .line 154
    :goto_8
    return-object v0

    .line 151
    :cond_9
    sget-object v0, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_PLAYLIST:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    if-eq p0, v0, :cond_11

    sget-object v0, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_SHORTCUT:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    if-ne p0, v0, :cond_14

    .line 154
    :cond_11
    const-string v0, "date_added"

    goto :goto_8

    .line 157
    :cond_14
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " getColumnPlaylistDateAdded  category:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getColumnPlaylistDateModified(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;)Ljava/lang/String;
    .registers 4
    .param p0, "category"    # Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    .prologue
    .line 162
    invoke-virtual {p0}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->isUBoxCategory()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 164
    const-string v0, "data_modified"

    .line 169
    :goto_8
    return-object v0

    .line 166
    :cond_9
    sget-object v0, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_PLAYLIST:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    if-eq p0, v0, :cond_11

    sget-object v0, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_SHORTCUT:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    if-ne p0, v0, :cond_14

    .line 169
    :cond_11
    const-string v0, "date_modified"

    goto :goto_8

    .line 172
    :cond_14
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " getColumnPlaylistDateModified  category:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getColumnPlaylistID(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;)Ljava/lang/String;
    .registers 4
    .param p0, "category"    # Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->isUBoxCategory()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 68
    const-string v0, "_id"

    .line 73
    :goto_8
    return-object v0

    .line 70
    :cond_9
    sget-object v0, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_PLAYLIST:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    if-eq p0, v0, :cond_11

    sget-object v0, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_SHORTCUT:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    if-ne p0, v0, :cond_14

    .line 73
    :cond_11
    const-string v0, "_id"

    goto :goto_8

    .line 76
    :cond_14
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " getColumnPlaylistID  category:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getColumnPlaylistMemberMediaID(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;)Ljava/lang/String;
    .registers 2
    .param p0, "category"    # Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    .prologue
    .line 120
    invoke-virtual {p0}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->isUBoxCategory()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 122
    const-string v0, "map_file_id"

    .line 126
    :goto_8
    return-object v0

    :cond_9
    const-string v0, "audio_id"

    goto :goto_8
.end method

.method public static getColumnPlaylistMemberPlayOrder(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;)Ljava/lang/String;
    .registers 2
    .param p0, "category"    # Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    .prologue
    .line 102
    invoke-virtual {p0}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->isUBoxCategory()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 104
    const-string v0, "playlist_order"

    .line 108
    :goto_8
    return-object v0

    :cond_9
    const-string v0, "play_order"

    goto :goto_8
.end method

.method public static getColumnPlaylistMemberPlaylistID(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;)Ljava/lang/String;
    .registers 4
    .param p0, "category"    # Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    .prologue
    .line 132
    invoke-virtual {p0}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->isUBoxCategory()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 134
    const-string v0, "map_playlist_id"

    .line 138
    :goto_8
    return-object v0

    .line 136
    :cond_9
    sget-object v0, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_PLAYLIST_SONG:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    if-ne p0, v0, :cond_10

    .line 138
    const-string v0, "playlist_id"

    goto :goto_8

    .line 141
    :cond_10
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " getColumnPlaylistMemberPlaylistID  category:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getColumnPlaylistName(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;)Ljava/lang/String;
    .registers 4
    .param p0, "category"    # Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    .prologue
    .line 81
    invoke-virtual {p0}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->isUBoxCategory()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 83
    const-string v0, "playlist_name"

    .line 88
    :goto_8
    return-object v0

    .line 85
    :cond_9
    sget-object v0, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_PLAYLIST:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    if-eq p0, v0, :cond_11

    sget-object v0, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_SHORTCUT:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    if-ne p0, v0, :cond_14

    .line 88
    :cond_11
    const-string v0, "name"

    goto :goto_8

    .line 91
    :cond_14
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " getColumnPlaylistName  category:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
