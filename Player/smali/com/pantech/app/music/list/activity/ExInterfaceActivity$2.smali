.class Lcom/pantech/app/music/list/activity/ExInterfaceActivity$2;
.super Ljava/lang/Object;
.source "ExInterfaceActivity.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/music/list/activity/ExInterfaceActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/music/list/activity/ExInterfaceActivity;


# direct methods
.method constructor <init>(Lcom/pantech/app/music/list/activity/ExInterfaceActivity;)V
    .registers 2

    .prologue
    .line 214
    iput-object p1, p0, Lcom/pantech/app/music/list/activity/ExInterfaceActivity$2;->this$0:Lcom/pantech/app/music/list/activity/ExInterfaceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .registers 19
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 218
    const-string v1, "ExInterfaceActivity"

    const-string v2, "mCursorLoaderCallback onCreateLoader()"

    invoke-static {v1, v2}, Lcom/pantech/app/music/utils/MLog;->debugI(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    const-string v1, "com.pantech.app.music.extras.category"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v10

    .line 220
    .local v10, "categoryType":I
    invoke-static {v10}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->fromOrdinal(I)Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    move-result-object v9

    .line 221
    .local v9, "category":Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;
    const-string v1, "com.pantech.app.music.extras.listID"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 223
    .local v11, "extraValue":Ljava/lang/String;
    const-string v1, "ExInterfaceActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onCreateLoader id:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/music/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    const-string v1, "ExInterfaceActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "categoryType:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/music/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    const-string v1, "ExInterfaceActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "extraValue:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/music/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    const/16 v1, 0x67

    move/from16 v0, p1

    if-ne v0, v1, :cond_10c

    .line 230
    const-string v1, "ExInterfaceActivity"

    const-string v2, "id:103"

    invoke-static {v1, v2}, Lcom/pantech/app/music/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-static {v9, v1, v2}, Lcom/pantech/app/music/list/db/DBInterfaceHelper;->getUri(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object v3

    .line 233
    .local v3, "uri":Landroid/net/Uri;
    invoke-static {v9}, Lcom/pantech/app/music/list/db/DBInterfaceHelper;->getProjection(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;)[Ljava/lang/String;

    move-result-object v4

    .line 234
    .local v4, "projection":[Ljava/lang/String;
    invoke-static {v9}, Lcom/pantech/app/music/list/db/DBInterfaceHelper;->getDefaultOrderby(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;)Ljava/lang/String;

    move-result-object v7

    .line 236
    .local v7, "orderby":Ljava/lang/String;
    const-string v13, ""

    .line 237
    .local v13, "keywords":Ljava/lang/String;
    const/4 v1, 0x0

    invoke-static {v11, v1}, Lcom/pantech/app/music/list/utility/MusicLibraryUtils;->getSearchWords(Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v15

    .line 239
    .local v15, "wildcardWords":[Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 240
    .local v8, "builder":Ljava/lang/StringBuilder;
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_8d
    if-eqz v15, :cond_ba

    array-length v1, v15

    if-ge v12, v1, :cond_ba

    .line 242
    if-nez v12, :cond_99

    .line 243
    const-string v1, "\'"

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    :cond_99
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v2, v15, v12

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    add-int/lit8 v12, v12, 0x1

    goto :goto_8d

    .line 247
    :cond_ba
    if-eqz v8, :cond_dc

    if-eqz v15, :cond_dc

    array-length v1, v15

    if-lez v1, :cond_dc

    .line 249
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 252
    :cond_dc
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 253
    .local v14, "where":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "(name LIKE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ESCAPE \'#\')"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    new-instance v1, Landroid/content/CursorLoader;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/app/music/list/activity/ExInterfaceActivity$2;->this$0:Lcom/pantech/app/music/list/activity/ExInterfaceActivity;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v7}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    .end local v3    # "uri":Landroid/net/Uri;
    .end local v4    # "projection":[Ljava/lang/String;
    .end local v7    # "orderby":Ljava/lang/String;
    .end local v8    # "builder":Ljava/lang/StringBuilder;
    .end local v12    # "i":I
    .end local v13    # "keywords":Ljava/lang/String;
    .end local v14    # "where":Ljava/lang/StringBuilder;
    .end local v15    # "wildcardWords":[Ljava/lang/String;
    :goto_10b
    return-object v1

    :cond_10c
    const/4 v1, 0x0

    goto :goto_10b
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .registers 8
    .param p2, "cursor"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    const/4 v2, 0x1

    .line 264
    const-string v0, "ExInterfaceActivity"

    const-string v1, "mCursorLoaderCallback onLoadFinished()"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/MLog;->debugI(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    invoke-virtual {p1}, Landroid/content/Loader;->getId()I

    move-result v0

    const/16 v1, 0x67

    if-ne v0, v1, :cond_67

    .line 268
    if-eqz p2, :cond_39

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ne v0, v2, :cond_39

    .line 270
    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 272
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/pantech/app/music/list/activity/ExInterfaceActivity$PlayPlaylistSong;

    iget-object v2, p0, Lcom/pantech/app/music/list/activity/ExInterfaceActivity$2;->this$0:Lcom/pantech/app/music/list/activity/ExInterfaceActivity;

    iget-object v3, p0, Lcom/pantech/app/music/list/activity/ExInterfaceActivity$2;->this$0:Lcom/pantech/app/music/list/activity/ExInterfaceActivity;

    const-string v4, "_id"

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-direct {v1, v2, v3, v4}, Lcom/pantech/app/music/list/activity/ExInterfaceActivity$PlayPlaylistSong;-><init>(Lcom/pantech/app/music/list/activity/ExInterfaceActivity;Landroid/app/Activity;I)V

    const-string v2, "ExInterface.PlayPlaylistSong.one"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 298
    :cond_38
    :goto_38
    return-void

    .line 276
    :cond_39
    if-eqz p2, :cond_54

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-le v0, v2, :cond_54

    .line 278
    iget-object v0, p0, Lcom/pantech/app/music/list/activity/ExInterfaceActivity$2;->this$0:Lcom/pantech/app/music/list/activity/ExInterfaceActivity;

    iget-object v0, v0, Lcom/pantech/app/music/list/activity/ExInterfaceActivity;->mProgress:Lcom/pantech/app/music/view/SkyProgressDialog;

    if-eqz v0, :cond_4e

    .line 279
    iget-object v0, p0, Lcom/pantech/app/music/list/activity/ExInterfaceActivity$2;->this$0:Lcom/pantech/app/music/list/activity/ExInterfaceActivity;

    iget-object v0, v0, Lcom/pantech/app/music/list/activity/ExInterfaceActivity;->mProgress:Lcom/pantech/app/music/view/SkyProgressDialog;

    invoke-virtual {v0}, Lcom/pantech/app/music/view/SkyProgressDialog;->dismiss()V

    .line 282
    :cond_4e
    iget-object v0, p0, Lcom/pantech/app/music/list/activity/ExInterfaceActivity$2;->this$0:Lcom/pantech/app/music/list/activity/ExInterfaceActivity;

    invoke-static {v0, p2}, Lcom/pantech/app/music/list/activity/ExInterfaceActivity;->access$100(Lcom/pantech/app/music/list/activity/ExInterfaceActivity;Landroid/database/Cursor;)V

    goto :goto_38

    .line 287
    :cond_54
    iget-object v0, p0, Lcom/pantech/app/music/list/activity/ExInterfaceActivity$2;->this$0:Lcom/pantech/app/music/list/activity/ExInterfaceActivity;

    invoke-static {v0}, Lcom/pantech/app/music/list/activity/ExInterfaceActivity;->access$000(Lcom/pantech/app/music/list/activity/ExInterfaceActivity;)V

    .line 289
    iget-object v0, p0, Lcom/pantech/app/music/list/activity/ExInterfaceActivity$2;->this$0:Lcom/pantech/app/music/list/activity/ExInterfaceActivity;

    iget-object v0, v0, Lcom/pantech/app/music/list/activity/ExInterfaceActivity;->mProgress:Lcom/pantech/app/music/view/SkyProgressDialog;

    if-eqz v0, :cond_38

    .line 290
    iget-object v0, p0, Lcom/pantech/app/music/list/activity/ExInterfaceActivity$2;->this$0:Lcom/pantech/app/music/list/activity/ExInterfaceActivity;

    iget-object v0, v0, Lcom/pantech/app/music/list/activity/ExInterfaceActivity;->mProgress:Lcom/pantech/app/music/view/SkyProgressDialog;

    invoke-virtual {v0}, Lcom/pantech/app/music/view/SkyProgressDialog;->dismiss()V

    goto :goto_38

    .line 295
    :cond_67
    iget-object v0, p0, Lcom/pantech/app/music/list/activity/ExInterfaceActivity$2;->this$0:Lcom/pantech/app/music/list/activity/ExInterfaceActivity;

    iget-object v0, v0, Lcom/pantech/app/music/list/activity/ExInterfaceActivity;->mProgress:Lcom/pantech/app/music/view/SkyProgressDialog;

    if-eqz v0, :cond_38

    .line 296
    iget-object v0, p0, Lcom/pantech/app/music/list/activity/ExInterfaceActivity$2;->this$0:Lcom/pantech/app/music/list/activity/ExInterfaceActivity;

    iget-object v0, v0, Lcom/pantech/app/music/list/activity/ExInterfaceActivity;->mProgress:Lcom/pantech/app/music/view/SkyProgressDialog;

    invoke-virtual {v0}, Lcom/pantech/app/music/view/SkyProgressDialog;->dismiss()V

    goto :goto_38
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .registers 3
    .param p1, "x0"    # Landroid/content/Loader;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 214
    check-cast p2, Landroid/database/Cursor;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/pantech/app/music/list/activity/ExInterfaceActivity$2;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 304
    .local p1, "arg0":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    return-void
.end method
