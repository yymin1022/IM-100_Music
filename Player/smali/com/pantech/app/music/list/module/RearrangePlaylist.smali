.class public Lcom/pantech/app/music/list/module/RearrangePlaylist;
.super Ljava/lang/Object;
.source "RearrangePlaylist.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/app/music/list/module/RearrangePlaylist$RearrangeCompleteListener;
    }
.end annotation


# static fields
.field static mRearrangeLock:Ljava/lang/Object;


# instance fields
.field mCallback:Lcom/pantech/app/music/list/module/RearrangePlaylist$RearrangeCompleteListener;

.field mCategory:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

.field mContextServiceWrapper:Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;

.field mCursor:Landroid/database/Cursor;

.field mCursorLock:Ljava/lang/Object;

.field mHandler:Landroid/os/Handler;

.field mPlaylistID:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 26
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/pantech/app/music/list/module/RearrangePlaylist;->mRearrangeLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Ljava/lang/String;Landroid/database/Cursor;Ljava/lang/Object;Lcom/pantech/app/music/list/module/RearrangePlaylist$RearrangeCompleteListener;)V
    .registers 9
    .param p1, "contextServiceWrapper"    # Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;
    .param p2, "category"    # Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;
    .param p3, "playlistID"    # Ljava/lang/String;
    .param p4, "cursor"    # Landroid/database/Cursor;
    .param p5, "cursorLock"    # Ljava/lang/Object;
    .param p6, "callback"    # Lcom/pantech/app/music/list/module/RearrangePlaylist$RearrangeCompleteListener;

    .prologue
    const/4 v0, 0x0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object v0, p0, Lcom/pantech/app/music/list/module/RearrangePlaylist;->mCursor:Landroid/database/Cursor;

    .line 21
    iput-object v0, p0, Lcom/pantech/app/music/list/module/RearrangePlaylist;->mCursorLock:Ljava/lang/Object;

    .line 47
    iput-object p1, p0, Lcom/pantech/app/music/list/module/RearrangePlaylist;->mContextServiceWrapper:Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;

    .line 49
    iput-object p4, p0, Lcom/pantech/app/music/list/module/RearrangePlaylist;->mCursor:Landroid/database/Cursor;

    .line 50
    iput-object p5, p0, Lcom/pantech/app/music/list/module/RearrangePlaylist;->mCursorLock:Ljava/lang/Object;

    .line 52
    iput-object p2, p0, Lcom/pantech/app/music/list/module/RearrangePlaylist;->mCategory:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    .line 54
    iput-object p3, p0, Lcom/pantech/app/music/list/module/RearrangePlaylist;->mPlaylistID:Ljava/lang/String;

    .line 56
    iput-object p6, p0, Lcom/pantech/app/music/list/module/RearrangePlaylist;->mCallback:Lcom/pantech/app/music/list/module/RearrangePlaylist$RearrangeCompleteListener;

    .line 58
    new-instance v0, Lcom/pantech/app/music/list/module/RearrangePlaylist$1;

    iget-object v1, p0, Lcom/pantech/app/music/list/module/RearrangePlaylist;->mContextServiceWrapper:Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;

    invoke-interface {v1}, Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/pantech/app/music/list/module/RearrangePlaylist$1;-><init>(Lcom/pantech/app/music/list/module/RearrangePlaylist;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/pantech/app/music/list/module/RearrangePlaylist;->mHandler:Landroid/os/Handler;

    .line 70
    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .prologue
    .line 100
    iget-object v0, p0, Lcom/pantech/app/music/list/module/RearrangePlaylist;->mPlaylistID:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_35

    iget-object v0, p0, Lcom/pantech/app/music/list/module/RearrangePlaylist;->mPlaylistID:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 102
    iget-object v0, p0, Lcom/pantech/app/music/list/module/RearrangePlaylist;->mPlaylistID:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 104
    .local v6, "nPlaylistID":I
    sget-object v7, Lcom/pantech/app/music/list/module/RearrangePlaylist;->mRearrangeLock:Ljava/lang/Object;

    monitor-enter v7

    .line 113
    :try_start_19
    iget-object v0, p0, Lcom/pantech/app/music/list/module/RearrangePlaylist;->mContextServiceWrapper:Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;

    invoke-interface {v0}, Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/pantech/app/music/list/module/RearrangePlaylist;->mCategory:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    int-to-long v2, v6

    iget-object v4, p0, Lcom/pantech/app/music/list/module/RearrangePlaylist;->mCursor:Landroid/database/Cursor;

    iget-object v5, p0, Lcom/pantech/app/music/list/module/RearrangePlaylist;->mCursorLock:Ljava/lang/Object;

    invoke-static/range {v0 .. v5}, Lcom/pantech/app/music/list/db/DBInterfacePlaylist;->saveReAraangedList(Landroid/content/Context;Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;JLandroid/database/Cursor;Ljava/lang/Object;)Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistInsertErrorType;

    .line 115
    monitor-exit v7
    :try_end_2a
    .catchall {:try_start_19 .. :try_end_2a} :catchall_36

    .line 117
    iget-object v0, p0, Lcom/pantech/app/music/list/module/RearrangePlaylist;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 119
    .end local v6    # "nPlaylistID":I
    :cond_35
    return-void

    .line 115
    .restart local v6    # "nPlaylistID":I
    :catchall_36
    move-exception v0

    :try_start_37
    monitor-exit v7
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_36

    throw v0
.end method
