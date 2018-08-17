.class Lcom/pantech/app/music/list/activity/ExInterfaceActivity$1;
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
        "<[",
        "Lcom/pantech/app/music/list/MusicItemInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/music/list/activity/ExInterfaceActivity;


# direct methods
.method constructor <init>(Lcom/pantech/app/music/list/activity/ExInterfaceActivity;)V
    .registers 2

    .prologue
    .line 95
    iput-object p1, p0, Lcom/pantech/app/music/list/activity/ExInterfaceActivity$1;->this$0:Lcom/pantech/app/music/list/activity/ExInterfaceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .registers 25
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<[",
            "Lcom/pantech/app/music/list/MusicItemInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 99
    const-string v1, "ExInterfaceActivity"

    const-string v2, "mMusicItemLoaderCallback onCreateLoader()"

    invoke-static {v1, v2}, Lcom/pantech/app/music/utils/MLog;->debugI(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    const-string v1, "com.pantech.app.music.extras.category"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v20

    .line 101
    .local v20, "categoryType":I
    invoke-static/range {v20 .. v20}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->fromOrdinal(I)Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    move-result-object v8

    .line 102
    .local v8, "category":Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;
    const-string v1, "com.pantech.app.music.extras.editMode"

    sget-object v2, Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;->NORMAL:Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;

    invoke-virtual {v2}, Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;->ordinal()I

    move-result v2

    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v21

    .line 103
    .local v21, "editMode":I
    const-string v1, "com.pantech.app.music.extras.listID"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 105
    .local v5, "groupID":Ljava/lang/String;
    const-string v1, "ExInterfaceActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCreateLoader id:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/music/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    const-string v1, "ExInterfaceActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "categoryType:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/music/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    const-string v1, "ExInterfaceActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "extraValue:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/music/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    const/16 v1, 0x64

    move/from16 v0, p1

    if-ne v0, v1, :cond_be

    .line 111
    const-string v1, "com.pantech.app.music.extras.searchMode"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 113
    .local v4, "searchMode":I
    const-string v1, "ExInterfaceActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "searchMode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/music/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    const/4 v1, -0x1

    invoke-static {v8, v5, v1}, Lcom/pantech/app/music/list/db/DBInterfaceHelper;->getUri(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object v9

    .line 116
    .local v9, "uri":Landroid/net/Uri;
    invoke-static {v8}, Lcom/pantech/app/music/list/db/DBInterfaceHelper;->getProjection(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;)[Ljava/lang/String;

    move-result-object v10

    .line 117
    .local v10, "projection":[Ljava/lang/String;
    invoke-static {v8}, Lcom/pantech/app/music/list/db/DBInterfaceHelper;->getDefaultOrderby(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;)Ljava/lang/String;

    move-result-object v13

    .line 118
    .local v13, "orderby":Ljava/lang/String;
    new-instance v1, Lcom/pantech/app/music/list/db/DBInterfaceHelper$MusicQueryWhereCondition;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v6, ""

    invoke-direct/range {v1 .. v6}, Lcom/pantech/app/music/list/db/DBInterfaceHelper$MusicQueryWhereCondition;-><init>(ZZILjava/lang/String;Ljava/lang/String;)V

    invoke-static {v8, v1}, Lcom/pantech/app/music/list/db/DBInterfaceHelper;->getDefaultWhere(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Lcom/pantech/app/music/list/db/DBInterfaceHelper$MusicQueryWhereCondition;)Ljava/lang/String;

    move-result-object v11

    .line 120
    .local v11, "where":Ljava/lang/String;
    new-instance v6, Lcom/pantech/app/music/list/module/QueryToMusicItemInfoLoader;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/pantech/app/music/list/activity/ExInterfaceActivity$1;->this$0:Lcom/pantech/app/music/list/activity/ExInterfaceActivity;

    const/4 v12, 0x0

    invoke-direct/range {v6 .. v13}, Lcom/pantech/app/music/list/module/QueryToMusicItemInfoLoader;-><init>(Landroid/content/Context;Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    .end local v4    # "searchMode":I
    :goto_bd
    return-object v6

    .line 124
    .end local v9    # "uri":Landroid/net/Uri;
    .end local v10    # "projection":[Ljava/lang/String;
    .end local v11    # "where":Ljava/lang/String;
    .end local v13    # "orderby":Ljava/lang/String;
    :cond_be
    const/4 v1, -0x1

    invoke-static {v8, v5, v1}, Lcom/pantech/app/music/list/db/DBInterfaceHelper;->getUri(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object v9

    .line 125
    .restart local v9    # "uri":Landroid/net/Uri;
    invoke-static {v8}, Lcom/pantech/app/music/list/db/DBInterfaceHelper;->getProjection(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;)[Ljava/lang/String;

    move-result-object v10

    .line 126
    .restart local v10    # "projection":[Ljava/lang/String;
    invoke-static {v8}, Lcom/pantech/app/music/list/db/DBInterfaceHelper;->getDefaultOrderby(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;)Ljava/lang/String;

    move-result-object v13

    .line 127
    .restart local v13    # "orderby":Ljava/lang/String;
    new-instance v14, Lcom/pantech/app/music/list/db/DBInterfaceHelper$MusicQueryWhereCondition;

    const/4 v15, 0x1

    const/16 v16, 0x0

    sget-object v1, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_SEARCH:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    if-ne v8, v1, :cond_ec

    const/16 v17, 0x7

    :goto_d6
    const-string v19, ""

    move-object/from16 v18, v5

    invoke-direct/range {v14 .. v19}, Lcom/pantech/app/music/list/db/DBInterfaceHelper$MusicQueryWhereCondition;-><init>(ZZILjava/lang/String;Ljava/lang/String;)V

    invoke-static {v8, v14}, Lcom/pantech/app/music/list/db/DBInterfaceHelper;->getDefaultWhere(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Lcom/pantech/app/music/list/db/DBInterfaceHelper$MusicQueryWhereCondition;)Ljava/lang/String;

    move-result-object v11

    .line 129
    .restart local v11    # "where":Ljava/lang/String;
    new-instance v6, Lcom/pantech/app/music/list/module/QueryToMusicItemInfoLoader;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/pantech/app/music/list/activity/ExInterfaceActivity$1;->this$0:Lcom/pantech/app/music/list/activity/ExInterfaceActivity;

    const/4 v12, 0x0

    invoke-direct/range {v6 .. v13}, Lcom/pantech/app/music/list/module/QueryToMusicItemInfoLoader;-><init>(Landroid/content/Context;Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_bd

    .line 127
    .end local v11    # "where":Ljava/lang/String;
    :cond_ec
    const/16 v17, 0x0

    goto :goto_d6
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .registers 3
    .param p1, "x0"    # Landroid/content/Loader;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 95
    check-cast p2, [Lcom/pantech/app/music/list/MusicItemInfo;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/pantech/app/music/list/activity/ExInterfaceActivity$1;->onLoadFinished(Landroid/content/Loader;[Lcom/pantech/app/music/list/MusicItemInfo;)V

    return-void
.end method

.method public onLoadFinished(Landroid/content/Loader;[Lcom/pantech/app/music/list/MusicItemInfo;)V
    .registers 13
    .param p2, "item"    # [Lcom/pantech/app/music/list/MusicItemInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<[",
            "Lcom/pantech/app/music/list/MusicItemInfo;",
            ">;[",
            "Lcom/pantech/app/music/list/MusicItemInfo;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<[Lcom/pantech/app/music/list/MusicItemInfo;>;"
    const/16 v3, 0x66

    const/4 v4, 0x1

    const/4 v9, 0x0

    .line 136
    const-string v1, "ExInterfaceActivity"

    const-string v2, "mMusicItemLoaderCallback onLoadFinished()"

    invoke-static {v1, v2}, Lcom/pantech/app/music/utils/MLog;->debugI(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    invoke-virtual {p1}, Landroid/content/Loader;->getId()I

    move-result v1

    const/16 v2, 0x64

    if-ne v1, v2, :cond_58

    .line 140
    if-eqz p2, :cond_18

    array-length v1, p2

    if-nez v1, :cond_2b

    .line 142
    :cond_18
    iget-object v1, p0, Lcom/pantech/app/music/list/activity/ExInterfaceActivity$1;->this$0:Lcom/pantech/app/music/list/activity/ExInterfaceActivity;

    invoke-static {v1}, Lcom/pantech/app/music/list/activity/ExInterfaceActivity;->access$000(Lcom/pantech/app/music/list/activity/ExInterfaceActivity;)V

    .line 202
    :goto_1d
    iget-object v1, p0, Lcom/pantech/app/music/list/activity/ExInterfaceActivity$1;->this$0:Lcom/pantech/app/music/list/activity/ExInterfaceActivity;

    iget-object v1, v1, Lcom/pantech/app/music/list/activity/ExInterfaceActivity;->mProgress:Lcom/pantech/app/music/view/SkyProgressDialog;

    if-eqz v1, :cond_2a

    .line 203
    iget-object v1, p0, Lcom/pantech/app/music/list/activity/ExInterfaceActivity$1;->this$0:Lcom/pantech/app/music/list/activity/ExInterfaceActivity;

    iget-object v1, v1, Lcom/pantech/app/music/list/activity/ExInterfaceActivity;->mProgress:Lcom/pantech/app/music/view/SkyProgressDialog;

    invoke-virtual {v1}, Lcom/pantech/app/music/view/SkyProgressDialog;->dismiss()V

    .line 204
    :cond_2a
    return-void

    .line 146
    :cond_2b
    new-instance v0, Lcom/pantech/app/music/list/PageInfoType;

    iget-object v1, p0, Lcom/pantech/app/music/list/activity/ExInterfaceActivity$1;->this$0:Lcom/pantech/app/music/list/activity/ExInterfaceActivity;

    iget-object v1, v1, Lcom/pantech/app/music/list/activity/ExInterfaceActivity;->mCategory:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    sget-object v2, Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;->NORMAL:Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;

    sget-object v3, Lcom/pantech/app/music/utils/LibraryUtils$PickingSelectModeType;->NONE:Lcom/pantech/app/music/utils/LibraryUtils$PickingSelectModeType;

    const-string v5, ""

    invoke-direct/range {v0 .. v5}, Lcom/pantech/app/music/list/PageInfoType;-><init>(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;Lcom/pantech/app/music/utils/LibraryUtils$PickingSelectModeType;ILjava/lang/String;)V

    .line 148
    .local v0, "tmpPageInfo":Lcom/pantech/app/music/list/PageInfoType;
    iget-object v1, p0, Lcom/pantech/app/music/list/activity/ExInterfaceActivity$1;->this$0:Lcom/pantech/app/music/list/activity/ExInterfaceActivity;

    iget-object v2, p0, Lcom/pantech/app/music/list/activity/ExInterfaceActivity$1;->this$0:Lcom/pantech/app/music/list/activity/ExInterfaceActivity;

    iget-object v2, v2, Lcom/pantech/app/music/list/activity/ExInterfaceActivity;->mService:Lcom/pantech/app/music/service/IMusicPlaybackService;

    new-instance v3, Lcom/pantech/app/music/list/module/PlayInterface$MakePlayInfoParam;

    sget-object v5, Lcom/pantech/app/music/list/module/PlayInterface$PlayerCallerType;->EXINTERFACE:Lcom/pantech/app/music/list/module/PlayInterface$PlayerCallerType;

    invoke-direct {v3, v0, v5, v4}, Lcom/pantech/app/music/list/module/PlayInterface$MakePlayInfoParam;-><init>(Lcom/pantech/app/music/list/PageInfoType;Lcom/pantech/app/music/list/module/PlayInterface$PlayerCallerType;Z)V

    move-object v4, p2

    move v5, v9

    move v6, v9

    invoke-static/range {v1 .. v6}, Lcom/pantech/app/music/list/module/PlayInterface;->playPlayer(Landroid/app/Activity;Lcom/pantech/app/music/service/IMusicPlaybackService;Lcom/pantech/app/music/list/module/PlayInterface$MakePlayInfoParam;[Lcom/pantech/app/music/list/MusicItemInfo;II)Z

    .line 153
    iget-object v1, p0, Lcom/pantech/app/music/list/activity/ExInterfaceActivity$1;->this$0:Lcom/pantech/app/music/list/activity/ExInterfaceActivity;

    invoke-virtual {v1, v9, v9}, Lcom/pantech/app/music/list/activity/ExInterfaceActivity;->overridePendingTransition(II)V

    .line 155
    iget-object v1, p0, Lcom/pantech/app/music/list/activity/ExInterfaceActivity$1;->this$0:Lcom/pantech/app/music/list/activity/ExInterfaceActivity;

    invoke-virtual {v1}, Lcom/pantech/app/music/list/activity/ExInterfaceActivity;->finish()V

    goto :goto_1d

    .line 160
    .end local v0    # "tmpPageInfo":Lcom/pantech/app/music/list/PageInfoType;
    :cond_58
    const/4 v8, 0x1

    .line 162
    .local v8, "runPlayback":Z
    invoke-virtual {p1}, Landroid/content/Loader;->getId()I

    move-result v1

    if-ne v1, v3, :cond_60

    .line 164
    const/4 v8, 0x0

    .line 167
    :cond_60
    if-eqz p2, :cond_65

    array-length v1, p2

    if-nez v1, :cond_73

    .line 169
    :cond_65
    iget-object v1, p0, Lcom/pantech/app/music/list/activity/ExInterfaceActivity$1;->this$0:Lcom/pantech/app/music/list/activity/ExInterfaceActivity;

    const v2, 0x7f080138

    invoke-virtual {v1, v2}, Lcom/pantech/app/music/list/activity/ExInterfaceActivity;->showToast(I)V

    .line 199
    :goto_6d
    iget-object v1, p0, Lcom/pantech/app/music/list/activity/ExInterfaceActivity$1;->this$0:Lcom/pantech/app/music/list/activity/ExInterfaceActivity;

    invoke-virtual {v1}, Lcom/pantech/app/music/list/activity/ExInterfaceActivity;->finish()V

    goto :goto_1d

    .line 174
    :cond_73
    invoke-virtual {p1}, Landroid/content/Loader;->getId()I

    move-result v1

    if-ne v1, v3, :cond_b3

    .line 176
    iget-object v1, p0, Lcom/pantech/app/music/list/activity/ExInterfaceActivity$1;->this$0:Lcom/pantech/app/music/list/activity/ExInterfaceActivity;

    iget-object v1, v1, Lcom/pantech/app/music/list/activity/ExInterfaceActivity;->mExtraValue:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b3

    .line 179
    new-instance v7, Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Loader;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/pantech/app/music/list/activity/SubListActivity;

    invoke-direct {v7, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 180
    .local v7, "intent":Landroid/content/Intent;
    const-string v1, "com.pantech.app.music.extras.category"

    iget-object v2, p0, Lcom/pantech/app/music/list/activity/ExInterfaceActivity$1;->this$0:Lcom/pantech/app/music/list/activity/ExInterfaceActivity;

    iget-object v2, v2, Lcom/pantech/app/music/list/activity/ExInterfaceActivity;->mCategory:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-virtual {v2}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->ordinal()I

    move-result v2

    invoke-virtual {v7, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 181
    const-string v1, "com.pantech.app.music.extras.listID"

    iget-object v2, p0, Lcom/pantech/app/music/list/activity/ExInterfaceActivity$1;->this$0:Lcom/pantech/app/music/list/activity/ExInterfaceActivity;

    iget-object v2, v2, Lcom/pantech/app/music/list/activity/ExInterfaceActivity;->mExtraValue:Ljava/lang/String;

    invoke-virtual {v7, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 183
    const/high16 v1, 0x14000000

    invoke-virtual {v7, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 185
    iget-object v1, p0, Lcom/pantech/app/music/list/activity/ExInterfaceActivity$1;->this$0:Lcom/pantech/app/music/list/activity/ExInterfaceActivity;

    invoke-virtual {v1, v7}, Lcom/pantech/app/music/list/activity/ExInterfaceActivity;->startActivity(Landroid/content/Intent;)V

    .line 186
    iget-object v1, p0, Lcom/pantech/app/music/list/activity/ExInterfaceActivity$1;->this$0:Lcom/pantech/app/music/list/activity/ExInterfaceActivity;

    invoke-virtual {v1, v9, v9}, Lcom/pantech/app/music/list/activity/ExInterfaceActivity;->overridePendingTransition(II)V

    .line 190
    .end local v7    # "intent":Landroid/content/Intent;
    :cond_b3
    new-instance v0, Lcom/pantech/app/music/list/PageInfoType;

    iget-object v1, p0, Lcom/pantech/app/music/list/activity/ExInterfaceActivity$1;->this$0:Lcom/pantech/app/music/list/activity/ExInterfaceActivity;

    iget-object v1, v1, Lcom/pantech/app/music/list/activity/ExInterfaceActivity;->mCategory:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    sget-object v2, Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;->NORMAL:Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;

    sget-object v3, Lcom/pantech/app/music/utils/LibraryUtils$PickingSelectModeType;->NONE:Lcom/pantech/app/music/utils/LibraryUtils$PickingSelectModeType;

    const-string v5, ""

    move v4, v9

    invoke-direct/range {v0 .. v5}, Lcom/pantech/app/music/list/PageInfoType;-><init>(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;Lcom/pantech/app/music/utils/LibraryUtils$PickingSelectModeType;ILjava/lang/String;)V

    .line 192
    .restart local v0    # "tmpPageInfo":Lcom/pantech/app/music/list/PageInfoType;
    iget-object v1, p0, Lcom/pantech/app/music/list/activity/ExInterfaceActivity$1;->this$0:Lcom/pantech/app/music/list/activity/ExInterfaceActivity;

    iget-object v2, p0, Lcom/pantech/app/music/list/activity/ExInterfaceActivity$1;->this$0:Lcom/pantech/app/music/list/activity/ExInterfaceActivity;

    iget-object v2, v2, Lcom/pantech/app/music/list/activity/ExInterfaceActivity;->mService:Lcom/pantech/app/music/service/IMusicPlaybackService;

    new-instance v3, Lcom/pantech/app/music/list/module/PlayInterface$MakePlayInfoParam;

    sget-object v4, Lcom/pantech/app/music/list/module/PlayInterface$PlayerCallerType;->EXINTERFACE:Lcom/pantech/app/music/list/module/PlayInterface$PlayerCallerType;

    invoke-direct {v3, v0, v4, v8}, Lcom/pantech/app/music/list/module/PlayInterface$MakePlayInfoParam;-><init>(Lcom/pantech/app/music/list/PageInfoType;Lcom/pantech/app/music/list/module/PlayInterface$PlayerCallerType;Z)V

    move-object v4, p2

    move v5, v9

    move v6, v9

    invoke-static/range {v1 .. v6}, Lcom/pantech/app/music/list/module/PlayInterface;->playPlayer(Landroid/app/Activity;Lcom/pantech/app/music/service/IMusicPlaybackService;Lcom/pantech/app/music/list/module/PlayInterface$MakePlayInfoParam;[Lcom/pantech/app/music/list/MusicItemInfo;II)Z

    .line 196
    iget-object v1, p0, Lcom/pantech/app/music/list/activity/ExInterfaceActivity$1;->this$0:Lcom/pantech/app/music/list/activity/ExInterfaceActivity;

    invoke-virtual {v1, v9, v9}, Lcom/pantech/app/music/list/activity/ExInterfaceActivity;->overridePendingTransition(II)V

    goto :goto_6d
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<[",
            "Lcom/pantech/app/music/list/MusicItemInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 210
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<[Lcom/pantech/app/music/list/MusicItemInfo;>;"
    return-void
.end method
