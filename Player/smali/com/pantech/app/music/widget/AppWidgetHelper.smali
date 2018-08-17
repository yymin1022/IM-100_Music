.class public Lcom/pantech/app/music/widget/AppWidgetHelper;
.super Ljava/lang/Object;
.source "AppWidgetHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AppWidgetHelper"


# instance fields
.field private mCallerClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private mLayoutID:I


# direct methods
.method public constructor <init>(ILjava/lang/Class;)V
    .registers 3
    .param p1, "layoutID"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 28
    .local p2, "callerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput p1, p0, Lcom/pantech/app/music/widget/AppWidgetHelper;->mLayoutID:I

    .line 30
    iput-object p2, p0, Lcom/pantech/app/music/widget/AppWidgetHelper;->mCallerClass:Ljava/lang/Class;

    .line 31
    return-void
.end method

.method private appWidgetDefault(Landroid/content/Context;)Landroid/widget/RemoteViews;
    .registers 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const v4, 0x7f1001de

    const/4 v3, 0x0

    .line 116
    new-instance v0, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/pantech/app/music/widget/AppWidgetHelper;->mLayoutID:I

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 119
    .local v0, "rv":Landroid/widget/RemoteViews;
    const v1, 0x7f0801c1

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 120
    const-string v1, "setSingleLine"

    invoke-virtual {v0, v4, v1, v3}, Landroid/widget/RemoteViews;->setBoolean(ILjava/lang/String;Z)V

    .line 122
    const v1, 0x7f1001df

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 125
    const v1, 0x7f1001dc

    const v2, 0x7f020056

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 128
    const v1, 0x7f1001e8

    invoke-virtual {v0, v1, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 130
    const v1, 0x7f1001e1

    const v2, 0x7f020138

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 132
    invoke-direct {p0, p1, v0, v3}, Lcom/pantech/app/music/widget/AppWidgetHelper;->linkButtons(Landroid/content/Context;Landroid/widget/RemoteViews;Z)V

    .line 133
    return-object v0
.end method

.method private appWidgetNoPermission(Landroid/content/Context;)Landroid/widget/RemoteViews;
    .registers 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 105
    const-string v3, "AppWidgetHelper"

    const-string v4, "appWidgetNoPermission"

    invoke-static {v3, v4}, Lcom/pantech/app/music/utils/MLog;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    new-instance v2, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f0300c1

    invoke-direct {v2, v3, v4}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 108
    .local v2, "rv":Landroid/widget/RemoteViews;
    invoke-static {p1}, Lcom/pantech/app/music/widget/WidgetUtils;->getLaunchLibraryIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 109
    .local v0, "intent":Landroid/content/Intent;
    const/4 v3, 0x0

    const/high16 v4, 0x8000000

    invoke-static {p1, v3, v0, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 110
    .local v1, "pendingIntent":Landroid/app/PendingIntent;
    const v3, 0x7f1001d8

    invoke-virtual {v2, v3, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 111
    return-object v2
.end method

.method private linkButtons(Landroid/content/Context;Landroid/widget/RemoteViews;Z)V
    .registers 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "views"    # Landroid/widget/RemoteViews;
    .param p3, "playerActive"    # Z

    .prologue
    const/high16 v7, 0x8000000

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 226
    new-instance v2, Landroid/content/ComponentName;

    const-class v3, Lcom/pantech/app/music/service/MusicPlaybackService;

    invoke-direct {v2, p1, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 230
    .local v2, "serviceName":Landroid/content/ComponentName;
    if-eqz p3, :cond_ce

    .line 231
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/pantech/app/music/list/utility/LaunchActivity;->getMusicReenterPoint()Ljava/lang/Class;

    move-result-object v3

    invoke-direct {v0, p1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 234
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v3, 0x10010000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 237
    const-string v3, "toPlayer"

    invoke-virtual {v0, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 238
    invoke-static {p1, v5, v0, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 244
    .local v1, "pendingIntent":Landroid/app/PendingIntent;
    :goto_24
    const v3, 0x7f1001dc

    invoke-virtual {p2, v3, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 245
    const v3, 0x7f1001dd

    invoke-virtual {p2, v3, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 248
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    const-string v3, "com.pantech.app.music.musicservicecommand.setting"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 249
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v3, "command"

    const-string v4, "toggleRepeat"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 250
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 251
    invoke-static {p1, v6, v0, v5}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 252
    const v3, 0x7f1001e5

    invoke-virtual {p2, v3, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 255
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    const-string v3, "com.pantech.app.music.musicservicecommand.setting"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 256
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v3, "command"

    const-string v4, "toggleShuffle"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 257
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 258
    const/4 v3, 0x2

    invoke-static {p1, v3, v0, v5}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 259
    const v3, 0x7f1001e4

    invoke-virtual {p2, v3, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 262
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    const-string v3, "com.pantech.app.music.musicservicecommand.setting"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 263
    .restart local v0    # "intent":Landroid/content/Intent;
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 264
    const-string v3, "command"

    const-string v4, "toggleRating"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 265
    const/4 v3, 0x3

    invoke-static {p1, v3, v0, v5}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 266
    const v3, 0x7f1001e3

    invoke-virtual {p2, v3, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 269
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    const-string v3, "com.pantech.app.music.musicservicecommand.togglepause"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 270
    .restart local v0    # "intent":Landroid/content/Intent;
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 271
    invoke-static {p1, v5, v0, v5}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 272
    const v3, 0x7f1001e1

    invoke-virtual {p2, v3, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 275
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    const-string v3, "com.pantech.app.music.musicservicecommand.next"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 276
    .restart local v0    # "intent":Landroid/content/Intent;
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 277
    invoke-static {p1, v5, v0, v5}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 278
    const v3, 0x7f1001e2

    invoke-virtual {p2, v3, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 281
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    const-string v3, "com.pantech.app.music.musicservicecommand.previous"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 282
    .restart local v0    # "intent":Landroid/content/Intent;
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 283
    invoke-static {p1, v5, v0, v5}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 284
    const v3, 0x7f1001e0

    invoke-virtual {p2, v3, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 287
    invoke-static {p1}, Lcom/pantech/app/music/widget/WidgetUtils;->getLaunchLibraryIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 288
    invoke-static {p1, v5, v0, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 289
    const v3, 0x7f1001e6

    invoke-virtual {p2, v3, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 290
    return-void

    .line 241
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "pendingIntent":Landroid/app/PendingIntent;
    :cond_ce
    invoke-static {p1}, Lcom/pantech/app/music/widget/WidgetUtils;->getLaunchLibraryIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 242
    .restart local v0    # "intent":Landroid/content/Intent;
    invoke-static {p1, v5, v0, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .restart local v1    # "pendingIntent":Landroid/app/PendingIntent;
    goto/16 :goto_24
.end method

.method private linkRemoteService(Landroid/content/Context;Landroid/widget/RemoteViews;Ljava/lang/Class;I)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "rv"    # Landroid/widget/RemoteViews;
    .param p4, "appWidgetId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/widget/RemoteViews;",
            "Ljava/lang/Class",
            "<*>;I)V"
        }
    .end annotation

    .prologue
    .local p3, "callerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const v5, 0x7f1001e7

    const/4 v4, 0x1

    .line 293
    if-nez p3, :cond_7

    .line 308
    :goto_6
    return-void

    .line 296
    :cond_7
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/pantech/app/music/widget/WidgetRemoteViewsService;

    invoke-direct {v0, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 297
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "com.android.music.musicwidgetfactorytype"

    const/16 v3, 0x7d4

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 298
    const-string v2, "appWidgetId"

    invoke-virtual {v0, v2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 299
    invoke-virtual {v0, v4}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 300
    invoke-virtual {p2, v5, v0}, Landroid/widget/RemoteViews;->setRemoteAdapter(ILandroid/content/Intent;)V

    .line 302
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    invoke-direct {v0, p1, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 303
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v2, "com.pantech.app.music.widget.CMD.PLAY_ACTION"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 304
    const-string v2, "appWidgetId"

    invoke-virtual {v0, v2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 305
    invoke-virtual {v0, v4}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 306
    const/4 v2, 0x0

    const/high16 v3, 0x8000000

    invoke-static {p1, v2, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 307
    .local v1, "pendingIntent":Landroid/app/PendingIntent;
    invoke-virtual {p2, v5, v1}, Landroid/widget/RemoteViews;->setPendingIntentTemplate(ILandroid/app/PendingIntent;)V

    goto :goto_6
.end method

.method private performUpdate(Landroid/content/Context;Lcom/pantech/app/music/service/MusicPlaybackService;I)Landroid/widget/RemoteViews;
    .registers 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Lcom/pantech/app/music/service/MusicPlaybackService;
    .param p3, "appWidgetId"    # I

    .prologue
    const v10, 0x7f1001e1

    const v7, 0x7f1001df

    const v6, 0x7f1001de

    const/4 v9, 0x1

    const v8, 0x7f1001e5

    .line 140
    new-instance v3, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lcom/pantech/app/music/widget/AppWidgetHelper;->mLayoutID:I

    invoke-direct {v3, v4, v5}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 143
    .local v3, "rv":Landroid/widget/RemoteViews;
    const v4, 0x7f1001e8

    const/16 v5, 0x8

    invoke-virtual {v3, v4, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 144
    const/4 v4, 0x0

    invoke-virtual {v3, v7, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 147
    invoke-virtual {p2}, Lcom/pantech/app/music/service/MusicPlaybackService;->getTrackName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v6, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 148
    const-string v4, "setSingleLine"

    invoke-virtual {v3, v6, v4, v9}, Landroid/widget/RemoteViews;->setBoolean(ILjava/lang/String;Z)V

    .line 149
    invoke-virtual {p2}, Lcom/pantech/app/music/service/MusicPlaybackService;->getArtistName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v7, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 152
    invoke-static {p1}, Lcom/pantech/app/music/albumart/AlbumArtExtractor;->getInstance(Landroid/content/Context;)Lcom/pantech/app/music/albumart/AlbumArtExtractor;

    move-result-object v1

    .line 153
    .local v1, "extractor":Lcom/pantech/app/music/albumart/AlbumArtExtractor;
    new-instance v2, Lcom/pantech/app/music/albumart/AlbumArtExtractor$Param;

    invoke-direct {v2}, Lcom/pantech/app/music/albumart/AlbumArtExtractor$Param;-><init>()V

    .line 154
    .local v2, "param":Lcom/pantech/app/music/albumart/AlbumArtExtractor$Param;
    invoke-virtual {p2}, Lcom/pantech/app/music/service/MusicPlaybackService;->getAlbumId()J

    move-result-wide v4

    iput-wide v4, v2, Lcom/pantech/app/music/albumart/AlbumArtExtractor$Param;->inAlbumID:J

    .line 155
    sget v4, Lcom/pantech/app/music/albumart/AlbumArtExtractor;->OPTION_FORCE_SYNC:I

    iput v4, v2, Lcom/pantech/app/music/albumart/AlbumArtExtractor$Param;->inOptions:I

    .line 156
    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4}, Lcom/pantech/app/music/albumart/AlbumArtExtractor;->requestAlbumArt(Lcom/pantech/app/music/albumart/AlbumArtExtractor$Param;Lcom/pantech/app/music/albumart/AlbumArtExtractor$OnAlbumArtExtractorListener;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 157
    .local v0, "albumArt":Landroid/graphics/Bitmap;
    const v4, 0x7f1001dc

    invoke-virtual {v3, v4, v0}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 160
    invoke-virtual {p2}, Lcom/pantech/app/music/service/MusicPlaybackService;->isPlaying()Z

    move-result v4

    if-eqz v4, :cond_95

    .line 161
    const v4, 0x7f020137

    invoke-virtual {v3, v10, v4}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 166
    :goto_61
    invoke-virtual {p2}, Lcom/pantech/app/music/service/MusicPlaybackService;->getRating()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_9c

    .line 167
    const v4, 0x7f1001e3

    const v5, 0x7f020133

    invoke-virtual {v3, v4, v5}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 172
    :goto_74
    invoke-virtual {p2}, Lcom/pantech/app/music/service/MusicPlaybackService;->getRepeatMode()I

    move-result v4

    packed-switch v4, :pswitch_data_be

    .line 175
    const v4, 0x7f020130

    invoke-virtual {v3, v8, v4}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 186
    :goto_81
    invoke-virtual {p2}, Lcom/pantech/app/music/service/MusicPlaybackService;->getShuffleMode()I

    move-result v4

    packed-switch v4, :pswitch_data_c6

    .line 189
    const v4, 0x7f1001e4

    const v5, 0x7f02013b

    invoke-virtual {v3, v4, v5}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 197
    :goto_91
    invoke-direct {p0, p1, v3, v9}, Lcom/pantech/app/music/widget/AppWidgetHelper;->linkButtons(Landroid/content/Context;Landroid/widget/RemoteViews;Z)V

    .line 199
    return-object v3

    .line 163
    :cond_95
    const v4, 0x7f020138

    invoke-virtual {v3, v10, v4}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_61

    .line 169
    :cond_9c
    const v4, 0x7f1001e3

    const v5, 0x7f020132

    invoke-virtual {v3, v4, v5}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_74

    .line 178
    :pswitch_a6
    const v4, 0x7f020131

    invoke-virtual {v3, v8, v4}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_81

    .line 181
    :pswitch_ad
    const v4, 0x7f02012f

    invoke-virtual {v3, v8, v4}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_81

    .line 192
    :pswitch_b4
    const v4, 0x7f1001e4

    const v5, 0x7f02013c

    invoke-virtual {v3, v4, v5}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_91

    .line 172
    :pswitch_data_be
    .packed-switch 0x1
        :pswitch_ad
        :pswitch_a6
    .end packed-switch

    .line 186
    :pswitch_data_c6
    .packed-switch 0x1
        :pswitch_b4
    .end packed-switch
.end method


# virtual methods
.method public notifyChange(Lcom/pantech/app/music/service/MusicPlaybackService;Ljava/lang/String;[I)V
    .registers 8
    .param p1, "service"    # Lcom/pantech/app/music/service/MusicPlaybackService;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "appWidgetIds"    # [I

    .prologue
    .line 203
    const-string v2, "com.pantech.app.music.servicerestarted"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 204
    invoke-static {}, Lcom/pantech/app/music/widget/WidgetRemoteViewsService;->getInstance()Lcom/pantech/app/music/widget/WidgetRemoteViewsService;

    move-result-object v1

    .line 205
    .local v1, "mMusicAppWidgetService":Lcom/pantech/app/music/widget/WidgetRemoteViewsService;
    if-nez v1, :cond_2b

    .line 206
    const-string v2, "AppWidgetHelper"

    const-string v3, "mAppSimpleWidgetService is null, try to rebind"

    invoke-static {v2, v3}, Lcom/pantech/app/music/utils/MLog;->debugE(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/pantech/app/music/widget/WidgetRemoteViewsService;

    invoke-direct {v0, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 208
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "com.android.music.musicwidgetservicecommand"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 209
    const-string v2, "command"

    const-string v3, "restartservice"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 210
    invoke-virtual {p1, v0}, Lcom/pantech/app/music/service/MusicPlaybackService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 221
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "mMusicAppWidgetService":Lcom/pantech/app/music/widget/WidgetRemoteViewsService;
    :cond_2b
    :goto_2b
    return-void

    .line 213
    :cond_2c
    const-string v2, "com.pantech.app.music.playstatechanged"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_54

    const-string v2, "com.pantech.app.music.metachanged"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_54

    const-string v2, "com.pantech.app.music.settingchanged"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_54

    const-string v2, "com.pantech.app.music.queuechanged"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_54

    const-string v2, "com.pantech.app.music.refreshwidget"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 219
    :cond_54
    invoke-virtual {p0, p1, p3, p1}, Lcom/pantech/app/music/widget/AppWidgetHelper;->pushUpdate(Landroid/content/Context;[ILcom/pantech/app/music/service/MusicPlaybackService;)V

    goto :goto_2b
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 34
    new-instance v1, Landroid/content/ComponentName;

    const-class v3, Lcom/pantech/app/music/service/MusicPlaybackService;

    invoke-direct {v1, p1, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 35
    .local v1, "serviceName":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_e

    .line 69
    :cond_d
    :goto_d
    return-void

    .line 38
    :cond_e
    const-string v3, "com.pantech.app.music.widget.CMD.PLAY_ACTION"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_97

    .line 39
    const-string v3, "com.pantech.app.music.widget.CMD"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 40
    .local v0, "command":Ljava/lang/String;
    const-string v3, "playposition"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_49

    .line 41
    const-string v3, "com.pantech.app.music.widget.CMDselectedPosition"

    const/4 v4, 0x0

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 42
    .local v2, "viewIndex":I
    new-instance p2, Landroid/content/Intent;

    .end local p2    # "intent":Landroid/content/Intent;
    const-string v3, "com.pantech.app.music.musicservicecommand.selectplay"

    invoke-direct {p2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 43
    .restart local p2    # "intent":Landroid/content/Intent;
    invoke-virtual {p2, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 44
    const-string v3, "com.pantech.app.music.widget.CMDselectedPosition"

    invoke-virtual {p2, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 45
    const-string v3, "com.pantech.app.music.widget.CMD"

    const-string v4, "playposition"

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 62
    .end local v2    # "viewIndex":I
    :cond_45
    :goto_45
    invoke-virtual {p1, p2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_d

    .line 47
    :cond_49
    const-string v3, "playrandom"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_63

    .line 48
    new-instance p2, Landroid/content/Intent;

    .end local p2    # "intent":Landroid/content/Intent;
    const-string v3, "com.pantech.app.music.musicservicecommand.selectplay"

    invoke-direct {p2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 49
    .restart local p2    # "intent":Landroid/content/Intent;
    invoke-virtual {p2, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 50
    const-string v3, "com.pantech.app.music.widget.CMD"

    const-string v4, "playrandom"

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_45

    .line 52
    :cond_63
    const-string v3, "repeat"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7d

    .line 53
    new-instance p2, Landroid/content/Intent;

    .end local p2    # "intent":Landroid/content/Intent;
    const-string v3, "com.pantech.app.music.musicservicecommand.selectplay"

    invoke-direct {p2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 54
    .restart local p2    # "intent":Landroid/content/Intent;
    invoke-virtual {p2, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 55
    const-string v3, "com.pantech.app.music.widget.CMD"

    const-string v4, "repeat"

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_45

    .line 57
    :cond_7d
    const-string v3, "toapp"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_45

    .line 58
    new-instance p2, Landroid/content/Intent;

    .end local p2    # "intent":Landroid/content/Intent;
    const-string v3, "com.pantech.app.music.musicservicecommand.selectplay"

    invoke-direct {p2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 59
    .restart local p2    # "intent":Landroid/content/Intent;
    invoke-virtual {p2, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 60
    const-string v3, "com.pantech.app.music.widget.CMD"

    const-string v4, "toapp"

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_45

    .line 64
    .end local v0    # "command":Ljava/lang/String;
    :cond_97
    const-string v3, "com.pantech.app.music.widget.CMD.AUTOPLAY_ACTION"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 65
    new-instance p2, Landroid/content/Intent;

    .end local p2    # "intent":Landroid/content/Intent;
    const-string v3, "togglepause"

    invoke-direct {p2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 66
    .restart local p2    # "intent":Landroid/content/Intent;
    invoke-virtual {p2, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 67
    invoke-virtual {p1, p2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_d
.end method

.method public onUpdate(Landroid/content/Context;[I)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appWidgetIds"    # [I

    .prologue
    .line 72
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    .line 73
    .local v0, "gm":Landroid/appwidget/AppWidgetManager;
    const-string v3, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {p1, v3}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_15

    .line 74
    invoke-direct {p0, p1}, Lcom/pantech/app/music/widget/AppWidgetHelper;->appWidgetNoPermission(Landroid/content/Context;)Landroid/widget/RemoteViews;

    move-result-object v1

    .line 75
    .local v1, "rv":Landroid/widget/RemoteViews;
    invoke-virtual {v0, p2, v1}, Landroid/appwidget/AppWidgetManager;->updateAppWidget([ILandroid/widget/RemoteViews;)V

    .line 87
    .end local v1    # "rv":Landroid/widget/RemoteViews;
    :goto_14
    return-void

    .line 81
    :cond_15
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.music.musicservicecommand"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 82
    .local v2, "updateIntent":Landroid/content/Intent;
    const-string v3, "command"

    const-string v4, "appwidgetupdate"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 83
    const-string v3, "appWidgetIds"

    invoke-virtual {v2, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 84
    const/high16 v3, 0x40000000    # 2.0f

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 85
    const-string v3, "com.pantech.app.music"

    const-string v4, "com.pantech.app.music.service.MusicPlaybackService"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 86
    invoke-virtual {p1, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_14
.end method

.method public pushUpdate(Landroid/content/Context;[ILcom/pantech/app/music/service/MusicPlaybackService;)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appWidgetIds"    # [I
    .param p3, "service"    # Lcom/pantech/app/music/service/MusicPlaybackService;

    .prologue
    .line 90
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v1

    .line 91
    .local v1, "gm":Landroid/appwidget/AppWidgetManager;
    if-eqz p3, :cond_c

    invoke-virtual {p3}, Lcom/pantech/app/music/service/MusicPlaybackService;->getQueueLength()I

    move-result v6

    if-gtz v6, :cond_14

    .line 92
    :cond_c
    invoke-direct {p0, p1}, Lcom/pantech/app/music/widget/AppWidgetHelper;->appWidgetDefault(Landroid/content/Context;)Landroid/widget/RemoteViews;

    move-result-object v4

    .line 93
    .local v4, "rv":Landroid/widget/RemoteViews;
    invoke-virtual {v1, p2, v4}, Landroid/appwidget/AppWidgetManager;->updateAppWidget([ILandroid/widget/RemoteViews;)V

    .line 102
    .end local v4    # "rv":Landroid/widget/RemoteViews;
    :cond_13
    return-void

    .line 96
    :cond_14
    move-object v0, p2

    .local v0, "arr$":[I
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_17
    if-ge v2, v3, :cond_13

    aget v5, v0, v2

    .line 97
    .local v5, "widgetID":I
    invoke-direct {p0, p1, p3, v5}, Lcom/pantech/app/music/widget/AppWidgetHelper;->performUpdate(Landroid/content/Context;Lcom/pantech/app/music/service/MusicPlaybackService;I)Landroid/widget/RemoteViews;

    move-result-object v4

    .line 98
    .restart local v4    # "rv":Landroid/widget/RemoteViews;
    iget-object v6, p0, Lcom/pantech/app/music/widget/AppWidgetHelper;->mCallerClass:Ljava/lang/Class;

    invoke-direct {p0, p1, v4, v6, v5}, Lcom/pantech/app/music/widget/AppWidgetHelper;->linkRemoteService(Landroid/content/Context;Landroid/widget/RemoteViews;Ljava/lang/Class;I)V

    .line 99
    invoke-virtual {v1, v5, v4}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 96
    add-int/lit8 v2, v2, 0x1

    goto :goto_17
.end method
