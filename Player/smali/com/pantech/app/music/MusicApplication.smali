.class public Lcom/pantech/app/music/MusicApplication;
.super Landroid/app/Application;
.source "MusicApplication.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .registers 9

    .prologue
    .line 25
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sput-wide v4, Lcom/pantech/app/music/common/Global;->mStartLap:J

    .line 27
    const-string v4, "devSelectedVendor"

    invoke-static {}, Lcom/pantech/app/music/common/ModelInfo;->getVendor()I

    move-result v5

    invoke-static {p0, v4, v5}, Lcom/pantech/app/music/list/utility/MusicLibraryUtils;->getPreference(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    .line 28
    .local v1, "vender":I
    const-string v4, "devAllowLogLevelAllow"

    invoke-static {}, Lcom/pantech/app/music/common/ModelInfo;->getAllowLogLevel()I

    move-result v5

    invoke-static {p0, v4, v5}, Lcom/pantech/app/music/list/utility/MusicLibraryUtils;->getPreference(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 29
    .local v0, "debugLevel":I
    const-string v4, "devFunctionmask_music3.0_changed"

    invoke-static {}, Lcom/pantech/app/music/common/ModelInfo;->getFunctionMask()J

    move-result-wide v6

    invoke-static {p0, v4, v6, v7}, Lcom/pantech/app/music/list/utility/MusicLibraryUtils;->getPreference(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v2

    .line 30
    .local v2, "function":J
    invoke-static {v1, v0, v2, v3}, Lcom/pantech/app/music/common/ModelInfo;->changeDeviceInfo(IIJ)V

    .line 32
    const-string v4, "MusicApplication"

    const-string v5, "onCreate()"

    invoke-static {v4, v5}, Lcom/pantech/app/music/utils/MLog;->debugI(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    invoke-static {p0}, Lcom/pantech/app/music/utils/PreferenceUtils;->initialize(Landroid/content/Context;)V

    .line 35
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 36
    return-void
.end method

.method public onTerminate()V
    .registers 3

    .prologue
    .line 40
    const-string v0, "MusicApplication"

    const-string v1, "onTerminate()"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/MLog;->debugI(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    invoke-virtual {p0}, Lcom/pantech/app/music/MusicApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/pantech/app/music/list/module/QueryFactory;->getInstance(Landroid/content/Context;)Lcom/pantech/app/music/list/module/QueryFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pantech/app/music/list/module/QueryFactory;->terminate()V

    .line 44
    invoke-virtual {p0}, Lcom/pantech/app/music/MusicApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/pantech/app/music/list/module/albumart/AlbumartExtracter;->getInstance(Landroid/content/Context;)Lcom/pantech/app/music/list/module/albumart/AlbumartExtracter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pantech/app/music/list/module/albumart/AlbumartExtracter;->terminate()V

    .line 46
    invoke-super {p0}, Landroid/app/Application;->onTerminate()V

    .line 47
    return-void
.end method
