.class public Lcom/pantech/app/music/list/module/QueryToMusicItemInfoLoader;
.super Landroid/content/AsyncTaskLoader;
.source "QueryToMusicItemInfoLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/content/AsyncTaskLoader",
        "<[",
        "Lcom/pantech/app/music/list/MusicItemInfo;",
        ">;"
    }
.end annotation


# static fields
.field static final TAG:Ljava/lang/String; = "VMusicInterfaceTag"


# instance fields
.field mCategory:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

.field mList:[Lcom/pantech/app/music/list/MusicItemInfo;

.field mProjection:[Ljava/lang/String;

.field mSelection:Ljava/lang/String;

.field mSelectionArgs:[Ljava/lang/String;

.field mSortOrder:Ljava/lang/String;

.field mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 76
    invoke-direct {p0, p1}, Landroid/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 77
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "category"    # Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;
    .param p3, "uri"    # Landroid/net/Uri;
    .param p4, "projection"    # [Ljava/lang/String;
    .param p5, "selection"    # Ljava/lang/String;
    .param p6, "selectionArgs"    # [Ljava/lang/String;
    .param p7, "sortOrder"    # Ljava/lang/String;

    .prologue
    .line 87
    invoke-direct {p0, p1}, Landroid/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 89
    iput-object p3, p0, Lcom/pantech/app/music/list/module/QueryToMusicItemInfoLoader;->mUri:Landroid/net/Uri;

    .line 90
    iput-object p4, p0, Lcom/pantech/app/music/list/module/QueryToMusicItemInfoLoader;->mProjection:[Ljava/lang/String;

    .line 91
    iput-object p5, p0, Lcom/pantech/app/music/list/module/QueryToMusicItemInfoLoader;->mSelection:Ljava/lang/String;

    .line 92
    iput-object p6, p0, Lcom/pantech/app/music/list/module/QueryToMusicItemInfoLoader;->mSelectionArgs:[Ljava/lang/String;

    .line 93
    iput-object p7, p0, Lcom/pantech/app/music/list/module/QueryToMusicItemInfoLoader;->mSortOrder:Ljava/lang/String;

    .line 95
    iput-object p2, p0, Lcom/pantech/app/music/list/module/QueryToMusicItemInfoLoader;->mCategory:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    .line 97
    const-string v0, "VMusicInterfaceTag"

    const-string v1, "PlaylistLoader"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    return-void
.end method


# virtual methods
.method public bridge synthetic deliverResult(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 15
    check-cast p1, [Lcom/pantech/app/music/list/MusicItemInfo;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/pantech/app/music/list/module/QueryToMusicItemInfoLoader;->deliverResult([Lcom/pantech/app/music/list/MusicItemInfo;)V

    return-void
.end method

.method public deliverResult([Lcom/pantech/app/music/list/MusicItemInfo;)V
    .registers 4
    .param p1, "list"    # [Lcom/pantech/app/music/list/MusicItemInfo;

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/pantech/app/music/list/module/QueryToMusicItemInfoLoader;->isReset()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 68
    :cond_6
    :goto_6
    return-void

    .line 61
    :cond_7
    const-string v0, "VMusicInterfaceTag"

    const-string v1, "deliverResult"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    iput-object p1, p0, Lcom/pantech/app/music/list/module/QueryToMusicItemInfoLoader;->mList:[Lcom/pantech/app/music/list/MusicItemInfo;

    .line 65
    invoke-virtual {p0}, Lcom/pantech/app/music/list/module/QueryToMusicItemInfoLoader;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 66
    invoke-super {p0, p1}, Landroid/content/AsyncTaskLoader;->deliverResult(Ljava/lang/Object;)V

    goto :goto_6
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 15
    invoke-virtual {p0}, Lcom/pantech/app/music/list/module/QueryToMusicItemInfoLoader;->loadInBackground()[Lcom/pantech/app/music/list/MusicItemInfo;

    move-result-object v0

    return-object v0
.end method

.method public loadInBackground()[Lcom/pantech/app/music/list/MusicItemInfo;
    .registers 11

    .prologue
    .line 32
    const-string v0, "VMusicInterfaceTag"

    const-string v1, "loadInBackground"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 36
    .local v8, "startTime":J
    invoke-virtual {p0}, Lcom/pantech/app/music/list/module/QueryToMusicItemInfoLoader;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/pantech/app/music/list/module/QueryToMusicItemInfoLoader;->mUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/pantech/app/music/list/module/QueryToMusicItemInfoLoader;->mProjection:[Ljava/lang/String;

    iget-object v3, p0, Lcom/pantech/app/music/list/module/QueryToMusicItemInfoLoader;->mSelection:Ljava/lang/String;

    iget-object v4, p0, Lcom/pantech/app/music/list/module/QueryToMusicItemInfoLoader;->mSelectionArgs:[Ljava/lang/String;

    iget-object v5, p0, Lcom/pantech/app/music/list/module/QueryToMusicItemInfoLoader;->mSortOrder:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 38
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_3d

    .line 40
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    .line 42
    invoke-virtual {p0}, Lcom/pantech/app/music/list/module/QueryToMusicItemInfoLoader;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/pantech/app/music/list/module/QueryToMusicItemInfoLoader;->mCategory:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    const/4 v2, 0x0

    invoke-static {v0, v1, v6, v2}, Lcom/pantech/app/music/list/db/CursorUtils;->convertCursorToList(Landroid/content/Context;Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Landroid/database/Cursor;Ljava/lang/Object;)[Lcom/pantech/app/music/list/MusicItemInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/music/list/module/QueryToMusicItemInfoLoader;->mList:[Lcom/pantech/app/music/list/MusicItemInfo;

    .line 44
    const-string v0, "VMusicInterfaceTag"

    const-string v1, "convert All"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 49
    :cond_3d
    invoke-static {v8, v9}, Lcom/pantech/app/music/list/utility/MusicLibraryUtils;->guarentee1SecSleep(J)V

    .line 51
    iget-object v0, p0, Lcom/pantech/app/music/list/module/QueryToMusicItemInfoLoader;->mList:[Lcom/pantech/app/music/list/MusicItemInfo;

    return-object v0
.end method

.method public bridge synthetic onCanceled(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 15
    check-cast p1, [Lcom/pantech/app/music/list/MusicItemInfo;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/pantech/app/music/list/module/QueryToMusicItemInfoLoader;->onCanceled([Lcom/pantech/app/music/list/MusicItemInfo;)V

    return-void
.end method

.method public onCanceled([Lcom/pantech/app/music/list/MusicItemInfo;)V
    .registers 4
    .param p1, "item"    # [Lcom/pantech/app/music/list/MusicItemInfo;

    .prologue
    .line 136
    const-string v0, "VMusicInterfaceTag"

    const-string v1, "onCanceled"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    return-void
.end method

.method protected onReset()V
    .registers 3

    .prologue
    .line 143
    invoke-super {p0}, Landroid/content/AsyncTaskLoader;->onReset()V

    .line 145
    const-string v0, "VMusicInterfaceTag"

    const-string v1, "onReset"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    invoke-virtual {p0}, Lcom/pantech/app/music/list/module/QueryToMusicItemInfoLoader;->onStopLoading()V

    .line 150
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pantech/app/music/list/module/QueryToMusicItemInfoLoader;->mList:[Lcom/pantech/app/music/list/MusicItemInfo;

    .line 151
    return-void
.end method

.method protected onStartLoading()V
    .registers 4

    .prologue
    .line 111
    const-string v0, "VMusicInterfaceTag"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStartLoading mList="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/music/list/module/QueryToMusicItemInfoLoader;->mList:[Lcom/pantech/app/music/list/MusicItemInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " takeContentChanged()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/pantech/app/music/list/module/QueryToMusicItemInfoLoader;->takeContentChanged()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    iget-object v0, p0, Lcom/pantech/app/music/list/module/QueryToMusicItemInfoLoader;->mList:[Lcom/pantech/app/music/list/MusicItemInfo;

    if-eqz v0, :cond_31

    .line 114
    iget-object v0, p0, Lcom/pantech/app/music/list/module/QueryToMusicItemInfoLoader;->mList:[Lcom/pantech/app/music/list/MusicItemInfo;

    invoke-virtual {p0, v0}, Lcom/pantech/app/music/list/module/QueryToMusicItemInfoLoader;->deliverResult([Lcom/pantech/app/music/list/MusicItemInfo;)V

    .line 118
    :cond_31
    invoke-virtual {p0}, Lcom/pantech/app/music/list/module/QueryToMusicItemInfoLoader;->takeContentChanged()Z

    move-result v0

    if-nez v0, :cond_3b

    iget-object v0, p0, Lcom/pantech/app/music/list/module/QueryToMusicItemInfoLoader;->mList:[Lcom/pantech/app/music/list/MusicItemInfo;

    if-nez v0, :cond_3e

    .line 119
    :cond_3b
    invoke-virtual {p0}, Lcom/pantech/app/music/list/module/QueryToMusicItemInfoLoader;->forceLoad()V

    .line 121
    :cond_3e
    return-void
.end method

.method protected onStopLoading()V
    .registers 3

    .prologue
    .line 129
    const-string v0, "VMusicInterfaceTag"

    const-string v1, "onStopLoading"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    invoke-virtual {p0}, Lcom/pantech/app/music/list/module/QueryToMusicItemInfoLoader;->cancelLoad()Z

    .line 132
    return-void
.end method
