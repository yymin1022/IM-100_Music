.class public Lcom/pantech/app/musicfx/common/MusicFXApplication;
.super Landroid/app/Application;
.source "MusicFXApplication.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 7
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .registers 4

    .prologue
    .line 14
    const-string v1, "devAllLogLevelAllow"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/pantech/app/musicfx/utils/Utils;->getPreference(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    .line 15
    .local v0, "devAllowAllLog":Z
    invoke-static {v0}, Lcom/pantech/app/musicfx/common/Global;->changeModelInfo(Z)V

    .line 16
    if-eqz v0, :cond_c

    .line 21
    :cond_c
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 22
    return-void
.end method
