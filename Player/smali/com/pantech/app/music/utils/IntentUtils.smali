.class public Lcom/pantech/app/music/utils/IntentUtils;
.super Ljava/lang/Object;
.source "IntentUtils.java"


# static fields
.field public static final BUNDLE_KEY_FRAGMENT:Ljava/lang/String; = "bundle.key.fragment"

.field public static final EXTRAS_KEY_CATEGORY:Ljava/lang/String; = "com.pantech.app.music.extras.category"

.field public static final EXTRAS_KEY_EDITMODE:Ljava/lang/String; = "com.pantech.app.music.extras.editMode"

.field public static final EXTRAS_KEY_LIST_ID:Ljava/lang/String; = "com.pantech.app.music.extras.listID"

.field public static final EXTRAS_KEY_LIST_INFO:Ljava/lang/String; = "com.pantech.app.music.extras.listinfo"

.field public static final EXTRAS_KEY_NOWPLAYING_LIST_VIEWSTATE:Ljava/lang/String; = "com.pantech.app.music.extras.nowplayinglist.viewstate"

.field public static final EXTRAS_KEY_ORIENTATION:Ljava/lang/String; = "com.pantech.app.music.extras.orientation"

.field public static final EXTRAS_KEY_PICKER_MODE:Ljava/lang/String; = "com.pantech.app.music.extras.pickerMode"

.field public static final EXTRAS_KEY_SEARCH_CNTS_TYPE:Ljava/lang/String; = "extras.searchCntsType"

.field public static final EXTRAS_KEY_SEARCH_FROM_PLAYBACK:Ljava/lang/String; = "extras.searchFromPlayback"

.field public static final EXTRAS_KEY_SEARCH_MODE:Ljava/lang/String; = "com.pantech.app.music.extras.searchMode"

.field public static final EXTRAS_KEY_SUBACTIVITY_ROTATION_GROUPID:Ljava/lang/String; = "com.pantech.app.music.extras.subactivity.rotation.groupid"

.field public static final EXTRAS_KEY_TARGET_CATEGORY:Ljava/lang/String; = "com.pantech.app.music.extras.targetCategory"

.field public static final EXTRAS_KEY_TARGET_MEDIA_ID:Ljava/lang/String; = "extras.targetMediaID"

.field public static final EXTRAS_KEY_TARGET_PLAYLIST_ID:Ljava/lang/String; = "com.pantech.app.music.extras.targetPlaylistID"

.field public static final EXTRAS_KEY_TARGET_PLAYLIST_NAME:Ljava/lang/String; = "com.pantech.app.music.extras.targetPlaylistName"

.field public static final INTENT_EXTRA_PLAYLIST_ID:Ljava/lang/String; = "playlist_id"

.field private static final SHARE_MAX_COUNT:I = 0x1f4

.field private static final TAG:Ljava/lang/String; = "intentUtils"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static gotoDetailList(Landroid/app/Activity;Lcom/pantech/app/music/library/FragmentInfo;Landroid/view/View;)V
    .registers 8
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "fragmentInfo"    # Lcom/pantech/app/music/library/FragmentInfo;
    .param p2, "transitionView"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 152
    if-nez p1, :cond_4

    .line 172
    :goto_3
    return-void

    .line 156
    :cond_4
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 157
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v3, "bundle.key.fragment"

    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 161
    if-eqz p2, :cond_2a

    .line 162
    invoke-virtual {p2}, Landroid/view/View;->getTransitionName()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, p2, v3}, Landroid/app/ActivityOptions;->makeSceneTransitionAnimation(Landroid/app/Activity;Landroid/view/View;Ljava/lang/String;)Landroid/app/ActivityOptions;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    .line 169
    .local v1, "bundleOptions":Landroid/os/Bundle;
    :goto_1c
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/pantech/app/music/library/activity/ListDetailActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 170
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {v2, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 171
    invoke-virtual {p0, v2, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    goto :goto_3

    .line 165
    .end local v1    # "bundleOptions":Landroid/os/Bundle;
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_2a
    invoke-static {p0, v4, v4}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    .restart local v1    # "bundleOptions":Landroid/os/Bundle;
    goto :goto_1c
.end method

.method public static gotoNowPlaying(Landroid/app/Activity;I)V
    .registers 13
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "RequestCode"    # I

    .prologue
    const/4 v10, 0x0

    .line 132
    new-instance v1, Lcom/pantech/app/music/library/FragmentInfo;

    sget-object v2, Lcom/pantech/app/music/library/FragmentInfo$Category;->CATEGORY_NOW_PLAYING:Lcom/pantech/app/music/library/FragmentInfo$Category;

    const v3, 0x7f0801af

    const-wide/16 v4, -0x1

    const-wide/16 v6, -0x7

    invoke-direct/range {v1 .. v7}, Lcom/pantech/app/music/library/FragmentInfo;-><init>(Lcom/pantech/app/music/library/FragmentInfo$Category;IJJ)V

    .line 133
    .local v1, "fragmentInfo":Lcom/pantech/app/music/library/FragmentInfo;
    const/16 v2, 0x2c

    invoke-virtual {v1, v2}, Lcom/pantech/app/music/library/FragmentInfo;->addOptions(I)V

    .line 136
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 137
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "bundle.key.fragment"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 140
    invoke-static {p0, v10, v10}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v8

    .line 143
    .local v8, "bundleOptions":Landroid/os/Bundle;
    new-instance v9, Landroid/content/Intent;

    const-class v2, Lcom/pantech/app/music/library/activity/NowPlayingActivity;

    invoke-direct {v9, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 144
    .local v9, "intent":Landroid/content/Intent;
    invoke-virtual {v9, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 145
    if-lez p1, :cond_36

    .line 146
    invoke-virtual {p0, v9, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 150
    :goto_35
    return-void

    .line 148
    :cond_36
    invoke-virtual {p0, v9, v8}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    goto :goto_35
.end method

.method public static gotoPlayer(Landroid/app/Activity;)V
    .registers 4
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 190
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.pantech.app.music.player.PLAYBACK_VIEWER"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x4000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 191
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 192
    return-void
.end method

.method public static gotoPlayerFromList(Landroid/app/Activity;)V
    .registers 4
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 183
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.pantech.app.music.player.PLAYBACK_VIEWER"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x4000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 184
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "fromlist"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 185
    const-string v1, "callerType"

    sget-object v2, Lcom/pantech/app/music/list/module/PlayInterface$PlayerCallerType;->LIST:Lcom/pantech/app/music/list/module/PlayInterface$PlayerCallerType;

    invoke-virtual {v2}, Lcom/pantech/app/music/list/module/PlayInterface$PlayerCallerType;->ordinal()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 186
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 187
    return-void
.end method

.method public static gotoProperty(Landroid/app/Activity;J)V
    .registers 8
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "audioID"    # J

    .prologue
    .line 122
    const-string v1, "intentUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "gotoProperty()  audioID:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/music/utils/MLog;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/pantech/app/music/properties/MusicPropertiesActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 126
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "extras.targetMediaID"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 128
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 129
    return-void
.end method

.method public static gotoSelectList(Landroid/app/Activity;J)V
    .registers 8
    .param p0, "context"    # Landroid/app/Activity;
    .param p1, "playlistID"    # J

    .prologue
    .line 175
    const-string v1, "intentUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "gotoSelectList() id:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/music/utils/MLog;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/pantech/app/music/library/activity/ListSelectActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 178
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "playlist_id"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 179
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 180
    return-void
.end method

.method public static sendShortcutInfoIntent(Landroid/app/Activity;JLjava/lang/String;)V
    .registers 11
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "playlistID"    # J
    .param p3, "playlistName"    # Ljava/lang/String;

    .prologue
    .line 103
    const-string v2, "intentUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendShortcutInfoIntent()"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pantech/app/music/utils/MLog;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 106
    .local v1, "shortcutIntent":Landroid/content/Intent;
    const-string v2, "shortcut_playlist_id"

    invoke-virtual {v1, v2, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 107
    const-string v2, "shortcut_playlist_time_added"

    invoke-static {p0, p1, p2}, Lcom/pantech/app/music/library/helper/PlaylistHelper;->getAddedTime(Landroid/content/Context;J)J

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 108
    const/high16 v2, 0x4000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 109
    const-string v2, "music_starter_branch_command"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 110
    new-instance v2, Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".MusicStarter"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 112
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 113
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 114
    const-string v2, "android.intent.extra.shortcut.NAME"

    invoke-virtual {v0, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 115
    const-string v2, "android.intent.extra.shortcut.ICON_RESOURCE"

    const v3, 0x7f02015a

    invoke-static {p0, v3}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 117
    const/4 v2, -0x1

    invoke-virtual {p0, v2, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 118
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 119
    return-void
.end method

.method public static shareContents(Landroid/app/Activity;Ljava/util/ArrayList;)V
    .registers 11
    .param p0, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "arrayUri":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    const/16 v6, 0x1f4

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 61
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_11

    .line 62
    const v4, 0x7f0800fa

    invoke-static {p0, v4}, Lcom/pantech/app/music/common/MusicUtils;->showToast(Landroid/content/Context;I)V

    .line 100
    :cond_10
    :goto_10
    return-void

    .line 66
    :cond_11
    const-string v2, "audio/*"

    .line 68
    .local v2, "mimeType":Ljava/lang/String;
    const/4 v1, 0x0

    .line 69
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ne v4, v7, :cond_57

    .line 70
    new-instance v1, Landroid/content/Intent;

    .end local v1    # "intent":Landroid/content/Intent;
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 71
    .restart local v1    # "intent":Landroid/content/Intent;
    const-string v4, "android.intent.action.SEND"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 72
    const-string v4, "android.intent.category.DEFAULT"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 73
    const-string v4, "exit_on_sent"

    invoke-virtual {v1, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 74
    const-string v5, "android.intent.extra.STREAM"

    invoke-virtual {p1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Parcelable;

    invoke-virtual {v1, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 75
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 97
    :cond_3c
    :goto_3c
    if-eqz v1, :cond_10

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, v1, v8}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v4

    if-eqz v4, :cond_10

    .line 98
    const v4, 0x7f080069

    invoke-virtual {p0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {p0, v4}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_10

    .line 77
    :cond_57
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-le v4, v6, :cond_9d

    .line 78
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 79
    .local v3, "newUris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_63
    if-ge v0, v6, :cond_6f

    .line 80
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    add-int/lit8 v0, v0, 0x1

    goto :goto_63

    .line 82
    :cond_6f
    new-instance v1, Landroid/content/Intent;

    .end local v1    # "intent":Landroid/content/Intent;
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 83
    .restart local v1    # "intent":Landroid/content/Intent;
    const-string v4, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 84
    const-string v4, "android.intent.extra.STREAM"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 85
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 86
    const-string v4, "exit_on_sent"

    invoke-virtual {v1, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 87
    const v4, 0x7f0800df

    invoke-virtual {p0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4, v7}, Lcom/pantech/app/music/common/MusicUtils;->showToast(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_3c

    .line 89
    .end local v0    # "i":I
    .end local v3    # "newUris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    :cond_9d
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-le v4, v7, :cond_3c

    .line 90
    new-instance v1, Landroid/content/Intent;

    .end local v1    # "intent":Landroid/content/Intent;
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 91
    .restart local v1    # "intent":Landroid/content/Intent;
    const-string v4, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 92
    const-string v4, "android.intent.extra.STREAM"

    invoke-virtual {v1, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 93
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 94
    const-string v4, "exit_on_sent"

    invoke-virtual {v1, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_3c
.end method
