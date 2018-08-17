.class public Lcom/pantech/app/music/library/activity/ShortCutActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "ShortCutActivity.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/app/AppCompatActivity;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# static fields
.field public static final PLAYLIST_ID:Ljava/lang/String; = "shortcut_playlist_id"

.field public static final PLAYLIST_TIME_ADDED:Ljava/lang/String; = "shortcut_playlist_time_added"

.field static final TAG:Ljava/lang/String; = "ShortCutActivity"


# instance fields
.field final PROGRESS_MAX_DURATION:I

.field final cursorLockObject:Ljava/lang/Object;

.field mCursor:Landroid/database/Cursor;

.field mCursorLoader:Landroid/content/CursorLoader;

.field mItemList:[Lcom/pantech/app/music/list/MusicItemInfo;

.field mPlaylistID:J

.field mPlaylistTimeAdded:J

.field mProgressDialog:Landroid/app/ProgressDialog;

.field mProgressEndTime:J

.field mProgressStartTime:J

.field mService:Lcom/pantech/app/music/service/IMusicPlaybackService;

.field mServiceToken:Lcom/pantech/app/music/common/MusicUtils$ServiceToken;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 37
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/pantech/app/music/library/activity/ShortCutActivity;->PROGRESS_MAX_DURATION:I

    .line 46
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/pantech/app/music/library/activity/ShortCutActivity;->cursorLockObject:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method bindToService()V
    .registers 2

    .prologue
    .line 89
    new-instance v0, Lcom/pantech/app/music/library/activity/ShortCutActivity$1;

    invoke-direct {v0, p0}, Lcom/pantech/app/music/library/activity/ShortCutActivity$1;-><init>(Lcom/pantech/app/music/library/activity/ShortCutActivity;)V

    invoke-static {p0, v0}, Lcom/pantech/app/music/common/MusicUtils;->bindToService(Landroid/app/Activity;Landroid/content/ServiceConnection;)Lcom/pantech/app/music/common/MusicUtils$ServiceToken;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/music/library/activity/ShortCutActivity;->mServiceToken:Lcom/pantech/app/music/common/MusicUtils$ServiceToken;

    .line 103
    return-void
.end method

.method checkLoadingDialog()V
    .registers 9

    .prologue
    const-wide/16 v6, 0x3e8

    .line 139
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/pantech/app/music/library/activity/ShortCutActivity;->mProgressEndTime:J

    .line 141
    iget-wide v0, p0, Lcom/pantech/app/music/library/activity/ShortCutActivity;->mProgressEndTime:J

    iget-wide v2, p0, Lcom/pantech/app/music/library/activity/ShortCutActivity;->mProgressStartTime:J

    add-long/2addr v2, v6

    cmp-long v0, v0, v2

    if-gez v0, :cond_2a

    .line 142
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/pantech/app/music/library/activity/ShortCutActivity;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/pantech/app/music/library/activity/ShortCutActivity$3;

    invoke-direct {v1, p0}, Lcom/pantech/app/music/library/activity/ShortCutActivity$3;-><init>(Lcom/pantech/app/music/library/activity/ShortCutActivity;)V

    iget-wide v2, p0, Lcom/pantech/app/music/library/activity/ShortCutActivity;->mProgressEndTime:J

    iget-wide v4, p0, Lcom/pantech/app/music/library/activity/ShortCutActivity;->mProgressStartTime:J

    sub-long/2addr v2, v4

    sub-long v2, v6, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 152
    :goto_29
    return-void

    .line 150
    :cond_2a
    iget-object v0, p0, Lcom/pantech/app/music/library/activity/ShortCutActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    goto :goto_29
.end method

.method createLoadingDialog()V
    .registers 3

    .prologue
    .line 112
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/pantech/app/music/library/activity/ShortCutActivity;->mProgressStartTime:J

    .line 114
    const v0, 0x7f080188

    invoke-virtual {p0, v0}, Lcom/pantech/app/music/library/activity/ShortCutActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f080181

    invoke-virtual {p0, v1}, Lcom/pantech/app/music/library/activity/ShortCutActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/music/library/activity/ShortCutActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 115
    iget-object v0, p0, Lcom/pantech/app/music/library/activity/ShortCutActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    new-instance v1, Lcom/pantech/app/music/library/activity/ShortCutActivity$2;

    invoke-direct {v1, p0}, Lcom/pantech/app/music/library/activity/ShortCutActivity$2;-><init>(Lcom/pantech/app/music/library/activity/ShortCutActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 136
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 55
    const-string v1, "ShortCutActivity"

    const-string v2, "onCreate()"

    invoke-static {v1, v2}, Lcom/pantech/app/music/utils/MLog;->debugI(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 58
    invoke-virtual {p0}, Lcom/pantech/app/music/library/activity/ShortCutActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 59
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_27

    .line 60
    const-string v1, "shortcut_playlist_id"

    const-wide/16 v2, -0x63

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/pantech/app/music/library/activity/ShortCutActivity;->mPlaylistID:J

    .line 61
    const-string v1, "shortcut_playlist_time_added"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/pantech/app/music/library/activity/ShortCutActivity;->mPlaylistTimeAdded:J

    .line 64
    invoke-virtual {p0}, Lcom/pantech/app/music/library/activity/ShortCutActivity;->createLoadingDialog()V

    .line 66
    :cond_27
    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .registers 11
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
    .line 156
    const-string v0, "ShortCutActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCreateLoader()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/pantech/app/music/library/activity/ShortCutActivity;->mPlaylistID:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/pantech/app/music/utils/MLog;->debugI(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    const/4 v1, 0x0

    .line 159
    .local v1, "info":Lcom/pantech/app/music/library/FragmentInfo;
    iget-wide v2, p0, Lcom/pantech/app/music/library/activity/ShortCutActivity;->mPlaylistID:J

    long-to-int v0, v2

    sparse-switch v0, :sswitch_data_72

    .line 170
    iget-wide v2, p0, Lcom/pantech/app/music/library/activity/ShortCutActivity;->mPlaylistID:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-gtz v0, :cond_53

    .line 178
    :cond_29
    :goto_29
    if-eqz v1, :cond_6d

    .line 179
    new-instance v0, Lcom/pantech/app/music/component/ExtendCursorLoader;

    invoke-direct {v0, p0, v1}, Lcom/pantech/app/music/component/ExtendCursorLoader;-><init>(Landroid/content/Context;Lcom/pantech/app/music/library/FragmentInfo;)V

    iput-object v0, p0, Lcom/pantech/app/music/library/activity/ShortCutActivity;->mCursorLoader:Landroid/content/CursorLoader;

    .line 186
    :goto_32
    iget-object v0, p0, Lcom/pantech/app/music/library/activity/ShortCutActivity;->mCursorLoader:Landroid/content/CursorLoader;

    return-object v0

    .line 161
    :sswitch_35
    new-instance v1, Lcom/pantech/app/music/library/FragmentInfo;

    .end local v1    # "info":Lcom/pantech/app/music/library/FragmentInfo;
    sget-object v0, Lcom/pantech/app/music/library/FragmentInfo$Category;->CATEGORY_TRACK:Lcom/pantech/app/music/library/FragmentInfo$Category;

    const-string v2, ""

    invoke-direct {v1, v0, v2}, Lcom/pantech/app/music/library/FragmentInfo;-><init>(Lcom/pantech/app/music/library/FragmentInfo$Category;Ljava/lang/String;)V

    .line 162
    .restart local v1    # "info":Lcom/pantech/app/music/library/FragmentInfo;
    goto :goto_29

    .line 164
    :sswitch_3f
    new-instance v1, Lcom/pantech/app/music/library/FragmentInfo;

    .end local v1    # "info":Lcom/pantech/app/music/library/FragmentInfo;
    sget-object v0, Lcom/pantech/app/music/library/FragmentInfo$Category;->CATEGORY_FAVORITE_TRACK:Lcom/pantech/app/music/library/FragmentInfo$Category;

    const-string v2, ""

    invoke-direct {v1, v0, v2}, Lcom/pantech/app/music/library/FragmentInfo;-><init>(Lcom/pantech/app/music/library/FragmentInfo$Category;Ljava/lang/String;)V

    .line 165
    .restart local v1    # "info":Lcom/pantech/app/music/library/FragmentInfo;
    goto :goto_29

    .line 167
    :sswitch_49
    new-instance v1, Lcom/pantech/app/music/library/FragmentInfo;

    .end local v1    # "info":Lcom/pantech/app/music/library/FragmentInfo;
    sget-object v0, Lcom/pantech/app/music/library/FragmentInfo$Category;->CATEGORY_MOST_PLAYED_TRACK:Lcom/pantech/app/music/library/FragmentInfo$Category;

    const-string v2, ""

    invoke-direct {v1, v0, v2}, Lcom/pantech/app/music/library/FragmentInfo;-><init>(Lcom/pantech/app/music/library/FragmentInfo$Category;Ljava/lang/String;)V

    .line 168
    .restart local v1    # "info":Lcom/pantech/app/music/library/FragmentInfo;
    goto :goto_29

    .line 172
    :cond_53
    iget-wide v2, p0, Lcom/pantech/app/music/library/activity/ShortCutActivity;->mPlaylistTimeAdded:J

    iget-wide v4, p0, Lcom/pantech/app/music/library/activity/ShortCutActivity;->mPlaylistID:J

    invoke-static {p0, v4, v5}, Lcom/pantech/app/music/library/helper/PlaylistHelper;->getAddedTime(Landroid/content/Context;J)J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-nez v0, :cond_29

    .line 174
    new-instance v1, Lcom/pantech/app/music/library/FragmentInfo;

    .end local v1    # "info":Lcom/pantech/app/music/library/FragmentInfo;
    sget-object v2, Lcom/pantech/app/music/library/FragmentInfo$Category;->CATEGORY_PLAYLIST_TRACK:Lcom/pantech/app/music/library/FragmentInfo$Category;

    const-string v3, ""

    const-wide/16 v4, -0x1

    iget-wide v6, p0, Lcom/pantech/app/music/library/activity/ShortCutActivity;->mPlaylistID:J

    invoke-direct/range {v1 .. v7}, Lcom/pantech/app/music/library/FragmentInfo;-><init>(Lcom/pantech/app/music/library/FragmentInfo$Category;Ljava/lang/String;JJ)V

    .restart local v1    # "info":Lcom/pantech/app/music/library/FragmentInfo;
    goto :goto_29

    .line 183
    :cond_6d
    invoke-virtual {p0}, Lcom/pantech/app/music/library/activity/ShortCutActivity;->checkLoadingDialog()V

    goto :goto_32

    .line 159
    nop

    :sswitch_data_72
    .sparse-switch
        -0x64 -> :sswitch_35
        -0x6 -> :sswitch_3f
        -0x5 -> :sswitch_49
    .end sparse-switch
.end method

.method protected onDestroy()V
    .registers 3

    .prologue
    .line 84
    const-string v0, "ShortCutActivity"

    const-string v1, "onDestroy()"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/MLog;->debugI(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onDestroy()V

    .line 86
    return-void
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .registers 5
    .param p2, "data"    # Landroid/database/Cursor;
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
    .line 191
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    const-string v0, "ShortCutActivity"

    const-string v1, "onLoadFinished()"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/MLog;->debugI(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    iget-object v1, p0, Lcom/pantech/app/music/library/activity/ShortCutActivity;->cursorLockObject:Ljava/lang/Object;

    monitor-enter v1

    .line 193
    :try_start_a
    iput-object p2, p0, Lcom/pantech/app/music/library/activity/ShortCutActivity;->mCursor:Landroid/database/Cursor;

    .line 194
    monitor-exit v1
    :try_end_d
    .catchall {:try_start_a .. :try_end_d} :catchall_1d

    .line 195
    iget-object v0, p0, Lcom/pantech/app/music/library/activity/ShortCutActivity;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/pantech/app/music/library/activity/ShortCutActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_20

    .line 196
    :cond_19
    invoke-virtual {p0}, Lcom/pantech/app/music/library/activity/ShortCutActivity;->checkLoadingDialog()V

    .line 218
    :goto_1c
    return-void

    .line 194
    :catchall_1d
    move-exception v0

    :try_start_1e
    monitor-exit v1
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    throw v0

    .line 201
    :cond_20
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/pantech/app/music/library/activity/ShortCutActivity$4;

    invoke-direct {v1, p0}, Lcom/pantech/app/music/library/activity/ShortCutActivity$4;-><init>(Lcom/pantech/app/music/library/activity/ShortCutActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_1c
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .registers 3
    .param p1, "x0"    # Landroid/content/Loader;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 31
    check-cast p2, Landroid/database/Cursor;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/pantech/app/music/library/activity/ShortCutActivity;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

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
    .line 228
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    return-void
.end method

.method protected onStart()V
    .registers 3

    .prologue
    .line 70
    const-string v0, "ShortCutActivity"

    const-string v1, "onStart()"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/MLog;->debugI(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onStart()V

    .line 72
    invoke-virtual {p0}, Lcom/pantech/app/music/library/activity/ShortCutActivity;->bindToService()V

    .line 73
    return-void
.end method

.method protected onStop()V
    .registers 3

    .prologue
    .line 77
    const-string v0, "ShortCutActivity"

    const-string v1, "onStop()"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/MLog;->debugI(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onStop()V

    .line 79
    invoke-virtual {p0}, Lcom/pantech/app/music/library/activity/ShortCutActivity;->unbindFromService()V

    .line 80
    return-void
.end method

.method unbindFromService()V
    .registers 2

    .prologue
    .line 106
    iget-object v0, p0, Lcom/pantech/app/music/library/activity/ShortCutActivity;->mServiceToken:Lcom/pantech/app/music/common/MusicUtils$ServiceToken;

    if-eqz v0, :cond_9

    .line 107
    iget-object v0, p0, Lcom/pantech/app/music/library/activity/ShortCutActivity;->mServiceToken:Lcom/pantech/app/music/common/MusicUtils$ServiceToken;

    invoke-static {v0}, Lcom/pantech/app/music/common/MusicUtils;->unbindFromService(Lcom/pantech/app/music/common/MusicUtils$ServiceToken;)V

    .line 109
    :cond_9
    return-void
.end method
