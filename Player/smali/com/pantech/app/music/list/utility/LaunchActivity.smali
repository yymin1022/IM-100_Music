.class public Lcom/pantech/app/music/list/utility/LaunchActivity;
.super Ljava/lang/Object;
.source "LaunchActivity.java"

# interfaces
.implements Lcom/pantech/app/music/utils/LibraryUtils;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMusicReenterPoint()Ljava/lang/Class;
    .registers 1

    .prologue
    .line 240
    const-class v0, Lcom/pantech/app/music/MusicStarter;

    return-object v0
.end method

.method public static startAddFavorites(Landroid/app/Activity;)V
    .registers 4
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 204
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/pantech/app/music/list/activity/TABSelectPickerActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 206
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.pantech.app.music.extras.pickerMode"

    sget-object v2, Lcom/pantech/app/music/utils/LibraryUtils$PickingSelectModeType;->ADD_TO_FAVORITES:Lcom/pantech/app/music/utils/LibraryUtils$PickingSelectModeType;

    invoke-virtual {v2}, Lcom/pantech/app/music/utils/LibraryUtils$PickingSelectModeType;->ordinal()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 207
    const-string v1, "com.pantech.app.music.extras.category"

    sget-object v2, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_SONG:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-virtual {v2}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->ordinal()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 208
    const-string v1, "com.pantech.app.music.extras.targetCategory"

    sget-object v2, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_FAVORITES:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-virtual {v2}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->ordinal()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 209
    const-string v1, "com.pantech.app.music.extras.searchMode"

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 210
    const-string v1, "com.pantech.app.music.extras.editMode"

    sget-object v2, Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;->SELECTABLE_PICKER:Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;

    invoke-virtual {v2}, Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;->ordinal()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 211
    const-string v1, "firstStart"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 213
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 214
    return-void
.end method

.method public static startAddPlaylist(Landroid/app/Activity;Lcom/pantech/app/music/list/PageInfoType;J)V
    .registers 8
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "pageInfo"    # Lcom/pantech/app/music/list/PageInfoType;
    .param p2, "playlistID"    # J

    .prologue
    const-wide/16 v2, -0x65

    .line 162
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/pantech/app/music/list/activity/TABSelectPickerActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 163
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p1}, Lcom/pantech/app/music/list/PageInfoType;->getCategoryTypeWithCntsType()Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->isUBoxCategory()Z

    move-result v1

    if-eqz v1, :cond_81

    .line 165
    cmp-long v1, p2, v2

    if-nez v1, :cond_5f

    .line 167
    const-string v1, "com.pantech.app.music.extras.pickerMode"

    sget-object v2, Lcom/pantech/app/music/utils/LibraryUtils$PickingSelectModeType;->ADD_PLAYLIST:Lcom/pantech/app/music/utils/LibraryUtils$PickingSelectModeType;

    invoke-virtual {v2}, Lcom/pantech/app/music/utils/LibraryUtils$PickingSelectModeType;->ordinal()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 168
    const-string v1, "com.pantech.app.music.extras.category"

    sget-object v2, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_UBOX:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-virtual {v2}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->ordinal()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 169
    const-string v1, "com.pantech.app.music.extras.targetCategory"

    sget-object v2, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_NOWPLAYING:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-virtual {v2}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->ordinal()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 194
    :goto_38
    const-string v1, "com.pantech.app.music.extras.searchMode"

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 195
    const-string v1, "com.pantech.app.music.extras.editMode"

    sget-object v2, Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;->SELECTABLE_PICKER:Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;

    invoke-virtual {v2}, Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;->ordinal()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 196
    const-string v1, "com.pantech.app.music.extras.listID"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 197
    const-string v1, "com.pantech.app.music.extras.targetPlaylistID"

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 198
    const-string v1, "firstStart"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 199
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 200
    return-void

    .line 173
    :cond_5f
    const-string v1, "com.pantech.app.music.extras.pickerMode"

    sget-object v2, Lcom/pantech/app/music/utils/LibraryUtils$PickingSelectModeType;->ADD_PLAYLIST:Lcom/pantech/app/music/utils/LibraryUtils$PickingSelectModeType;

    invoke-virtual {v2}, Lcom/pantech/app/music/utils/LibraryUtils$PickingSelectModeType;->ordinal()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 174
    const-string v1, "com.pantech.app.music.extras.category"

    sget-object v2, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_UBOX:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-virtual {v2}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->ordinal()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 175
    const-string v1, "com.pantech.app.music.extras.targetCategory"

    sget-object v2, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_UBOX_PLAYLIST:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-virtual {v2}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->ordinal()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_38

    .line 180
    :cond_81
    cmp-long v1, p2, v2

    if-nez v1, :cond_a7

    .line 182
    const-string v1, "com.pantech.app.music.extras.pickerMode"

    sget-object v2, Lcom/pantech/app/music/utils/LibraryUtils$PickingSelectModeType;->ADD_PLAYLIST:Lcom/pantech/app/music/utils/LibraryUtils$PickingSelectModeType;

    invoke-virtual {v2}, Lcom/pantech/app/music/utils/LibraryUtils$PickingSelectModeType;->ordinal()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 183
    const-string v1, "com.pantech.app.music.extras.category"

    sget-object v2, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_SONG:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-virtual {v2}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->ordinal()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 184
    const-string v1, "com.pantech.app.music.extras.targetCategory"

    sget-object v2, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_NOWPLAYING:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-virtual {v2}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->ordinal()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_38

    .line 188
    :cond_a7
    const-string v1, "com.pantech.app.music.extras.pickerMode"

    sget-object v2, Lcom/pantech/app/music/utils/LibraryUtils$PickingSelectModeType;->ADD_PLAYLIST:Lcom/pantech/app/music/utils/LibraryUtils$PickingSelectModeType;

    invoke-virtual {v2}, Lcom/pantech/app/music/utils/LibraryUtils$PickingSelectModeType;->ordinal()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 189
    const-string v1, "com.pantech.app.music.extras.category"

    sget-object v2, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_SONG:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-virtual {v2}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->ordinal()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 190
    const-string v1, "com.pantech.app.music.extras.targetCategory"

    sget-object v2, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_PLAYLIST:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-virtual {v2}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->ordinal()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_38
.end method

.method public static startMakePlaylist(Landroid/app/Activity;Lcom/pantech/app/music/list/PageInfoType;Ljava/lang/String;)V
    .registers 6
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "pageInfo"    # Lcom/pantech/app/music/list/PageInfoType;
    .param p2, "newPlaylistName"    # Ljava/lang/String;

    .prologue
    .line 138
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/pantech/app/music/list/activity/TABSelectPickerActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 139
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p1}, Lcom/pantech/app/music/list/PageInfoType;->getCategoryType()Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->isUBoxCategory()Z

    move-result v1

    if-eqz v1, :cond_59

    .line 141
    const-string v1, "com.pantech.app.music.extras.pickerMode"

    sget-object v2, Lcom/pantech/app/music/utils/LibraryUtils$PickingSelectModeType;->MAKE_AND_ADD_PLAYLIST:Lcom/pantech/app/music/utils/LibraryUtils$PickingSelectModeType;

    invoke-virtual {v2}, Lcom/pantech/app/music/utils/LibraryUtils$PickingSelectModeType;->ordinal()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 142
    const-string v1, "com.pantech.app.music.extras.category"

    sget-object v2, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_UBOX:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-virtual {v2}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->ordinal()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 143
    const-string v1, "com.pantech.app.music.extras.targetCategory"

    sget-object v2, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_UBOX_PLAYLIST:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-virtual {v2}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->ordinal()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 152
    :goto_32
    const-string v1, "com.pantech.app.music.extras.searchMode"

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 153
    const-string v1, "com.pantech.app.music.extras.editMode"

    sget-object v2, Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;->SELECTABLE_PICKER:Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;

    invoke-virtual {v2}, Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;->ordinal()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 154
    const-string v1, "com.pantech.app.music.extras.listID"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 155
    const-string v1, "com.pantech.app.music.extras.targetPlaylistName"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 156
    const-string v1, "firstStart"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 157
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 158
    return-void

    .line 147
    :cond_59
    const-string v1, "com.pantech.app.music.extras.pickerMode"

    sget-object v2, Lcom/pantech/app/music/utils/LibraryUtils$PickingSelectModeType;->MAKE_AND_ADD_PLAYLIST:Lcom/pantech/app/music/utils/LibraryUtils$PickingSelectModeType;

    invoke-virtual {v2}, Lcom/pantech/app/music/utils/LibraryUtils$PickingSelectModeType;->ordinal()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 148
    const-string v1, "com.pantech.app.music.extras.category"

    sget-object v2, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_SONG:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-virtual {v2}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->ordinal()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 149
    const-string v1, "com.pantech.app.music.extras.targetCategory"

    sget-object v2, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_PLAYLIST:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-virtual {v2}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->ordinal()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_32
.end method

.method public static startNowplaying(Landroid/app/Activity;)V
    .registers 4
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 65
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/pantech/app/music/list/activity/SubListActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 66
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.pantech.app.music.extras.category"

    sget-object v2, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_NOWPLAYING:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-virtual {v2}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->ordinal()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 67
    const-string v1, "com.pantech.app.music.extras.searchMode"

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 68
    const-string v1, "com.pantech.app.music.extras.editMode"

    sget-object v2, Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;->NORMAL:Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;

    invoke-virtual {v2}, Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;->ordinal()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 69
    const-string v1, "com.pantech.app.music.extras.listID"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 70
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 71
    return-void
.end method

.method public static startNowplayingSelectable(Landroid/content/Context;)V
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 128
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/pantech/app/music/list/activity/SubListActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 130
    .local v0, "subListActivity":Landroid/content/Intent;
    const-string v1, "com.pantech.app.music.extras.category"

    sget-object v2, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_NOWPLAYING:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-virtual {v2}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->ordinal()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 131
    const-string v1, "com.pantech.app.music.extras.editMode"

    sget-object v2, Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;->SELECTABLE:Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;

    invoke-virtual {v2}, Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;->ordinal()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 133
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 134
    return-void
.end method

.method public static startProperties(Landroid/app/Activity;Lcom/pantech/app/music/list/PageInfoType;IJ)V
    .registers 10
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "pageInfo"    # Lcom/pantech/app/music/list/PageInfoType;
    .param p2, "cntsType"    # I
    .param p3, "mediaID"    # J

    .prologue
    .line 218
    invoke-virtual {p1}, Lcom/pantech/app/music/list/PageInfoType;->clone()Lcom/pantech/app/music/list/PageInfoType;

    move-result-object v1

    .line 228
    .local v1, "propertyPageInfo":Lcom/pantech/app/music/list/PageInfoType;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startProperties:  mediaID ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/pantech/app/music/utils/MLog;->i(Ljava/lang/String;)V

    .line 230
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/pantech/app/music/properties/MusicPropertiesActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 231
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "extras.targetMediaID"

    invoke-virtual {v0, v2, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 233
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 234
    return-void
.end method

.method public static startSearch(Landroid/app/Activity;Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;)V
    .registers 8
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "categoryType"    # Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    .prologue
    const v5, 0x7f080137

    const/4 v4, 0x7

    const/4 v3, 0x0

    .line 28
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/pantech/app/music/list/activity/SubListActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 30
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p1}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->isUBoxCategory()Z

    move-result v1

    if-eqz v1, :cond_4b

    .line 32
    sget-object v1, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_UBOX:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    const-string v2, ""

    new-instance v3, Lcom/pantech/app/music/list/db/DBInterfaceCommon$GetCountOptionParams;

    invoke-direct {v3}, Lcom/pantech/app/music/list/db/DBInterfaceCommon$GetCountOptionParams;-><init>()V

    invoke-static {p0, v1, v2, v3}, Lcom/pantech/app/music/list/db/DBInterfaceCommon;->getCountList(Landroid/content/Context;Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Ljava/lang/String;Lcom/pantech/app/music/list/db/DBInterfaceCommon$GetCountOptionParams;)I

    move-result v1

    if-nez v1, :cond_25

    .line 34
    invoke-static {p0, v5}, Lcom/pantech/app/music/list/utility/ListUtil;->showToast(Landroid/content/Context;I)V

    .line 61
    :goto_24
    return-void

    .line 38
    :cond_25
    const-string v1, "com.pantech.app.music.extras.category"

    sget-object v2, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_UBOX_SEARCH:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-virtual {v2}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->ordinal()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 39
    const-string v1, "com.pantech.app.music.extras.searchMode"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 57
    :goto_35
    const-string v1, "com.pantech.app.music.extras.editMode"

    sget-object v2, Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;->NORMAL:Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;

    invoke-virtual {v2}, Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;->ordinal()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 58
    const-string v1, "com.pantech.app.music.extras.listID"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 60
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_24

    .line 47
    :cond_4b
    new-instance v1, Lcom/pantech/app/music/list/db/DBInterfaceCommon$GetCountOptionParams;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v3}, Lcom/pantech/app/music/list/db/DBInterfaceCommon$GetCountOptionParams;-><init>(ZZ)V

    invoke-static {p0, v3, v1}, Lcom/pantech/app/music/list/db/DBInterfaceCommon;->getMusicCount(Landroid/content/Context;ZLcom/pantech/app/music/list/db/DBInterfaceCommon$GetCountOptionParams;)I

    move-result v1

    if-nez v1, :cond_5b

    .line 49
    invoke-static {p0, v5}, Lcom/pantech/app/music/list/utility/ListUtil;->showToast(Landroid/content/Context;I)V

    goto :goto_24

    .line 53
    :cond_5b
    const-string v1, "com.pantech.app.music.extras.category"

    sget-object v2, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_SEARCH:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-virtual {v2}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->ordinal()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 54
    const-string v1, "com.pantech.app.music.extras.searchMode"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_35
.end method

.method public static startSettings(Landroid/app/Activity;Z)V
    .registers 5
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "transitionAnimation"    # Z

    .prologue
    const/4 v2, 0x0

    .line 109
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/pantech/app/music/settings/SettingsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 110
    .local v0, "settingIntent":Landroid/content/Intent;
    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 111
    if-nez p1, :cond_11

    .line 112
    invoke-virtual {p0, v2, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 113
    :cond_11
    return-void
.end method

.method public static startShopMusicApp(Landroid/app/Activity;)V
    .registers 6
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v4, 0x0

    .line 75
    invoke-static {}, Lcom/pantech/app/music/common/ModelInfo;->isLGUPlus()Z

    move-result v2

    if-eqz v2, :cond_20

    .line 77
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 78
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "com.lgu.BellRing.Load"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 80
    if-eqz p0, :cond_21

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v0, v4}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    if-eqz v2, :cond_21

    .line 82
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 91
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_20
    :goto_20
    return-void

    .line 87
    .restart local v0    # "intent":Landroid/content/Intent;
    :cond_21
    new-instance v1, Lcom/lgupluse/marketCheck/ExternalLinkedCheck;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/lgupluse/marketCheck/ExternalLinkedCheck;-><init>(Landroid/app/Activity;Z)V

    .line 88
    .local v1, "oz":Lcom/lgupluse/marketCheck/ExternalLinkedCheck;
    const-string v2, "QA6010054881"

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3, v4}, Lcom/lgupluse/marketCheck/ExternalLinkedCheck;->detail(Ljava/lang/String;IZ)V

    goto :goto_20
.end method

.method public static startSimilaritySortList(Landroid/app/Activity;)V
    .registers 4
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 97
    invoke-static {}, Lcom/pantech/app/music/list/module/QuerySimilartySort;->clearSavedCursor()V

    .line 99
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/pantech/app/music/list/activity/SubListActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 101
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.pantech.app.music.extras.category"

    sget-object v2, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_SIMILARITY:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-virtual {v2}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->ordinal()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 102
    const-string v1, "com.pantech.app.music.extras.editMode"

    sget-object v2, Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;->NORMAL:Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;

    invoke-virtual {v2}, Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;->ordinal()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 104
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 105
    return-void
.end method

.method public static startSubListActivity(Landroid/app/Activity;Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Ljava/lang/String;)V
    .registers 6
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "childCategory"    # Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;
    .param p2, "subListID"    # Ljava/lang/String;

    .prologue
    .line 117
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/pantech/app/music/list/activity/SubListActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 119
    .local v0, "subListActivity":Landroid/content/Intent;
    const-string v1, "com.pantech.app.music.extras.category"

    invoke-virtual {p1}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->ordinal()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 120
    const-string v1, "com.pantech.app.music.extras.editMode"

    sget-object v2, Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;->NORMAL:Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;

    invoke-virtual {v2}, Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;->ordinal()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 121
    const-string v1, "com.pantech.app.music.extras.listID"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 123
    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 124
    return-void
.end method
