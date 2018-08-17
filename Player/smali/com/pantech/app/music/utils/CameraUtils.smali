.class public Lcom/pantech/app/music/utils/CameraUtils;
.super Ljava/lang/Object;
.source "CameraUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isRecording()Z
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 11
    :try_start_1
    const-class v1, Landroid/hardware/Camera;

    .line 12
    .local v1, "env":Ljava/lang/Class;, "Ljava/lang/Class<Landroid/hardware/Camera;>;"
    const-string v4, "isRunning"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v1, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 13
    .local v2, "m":Ljava/lang/reflect/Method;
    if-eqz v2, :cond_2a

    .line 14
    const/4 v4, 0x0

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v2, v4, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1b} :catch_26

    move-result v3

    .line 15
    .local v3, "running":I
    and-int/lit16 v4, v3, 0xf0

    const/16 v6, 0x10

    if-ne v4, v6, :cond_24

    const/4 v4, 0x1

    .line 22
    .end local v2    # "m":Ljava/lang/reflect/Method;
    .end local v3    # "running":I
    :goto_23
    return v4

    .restart local v2    # "m":Ljava/lang/reflect/Method;
    .restart local v3    # "running":I
    :cond_24
    move v4, v5

    .line 15
    goto :goto_23

    .line 18
    .end local v2    # "m":Ljava/lang/reflect/Method;
    .end local v3    # "running":I
    :catch_26
    move-exception v0

    .line 19
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2a
    move v4, v5

    .line 22
    goto :goto_23
.end method

.method public static isWorking()Z
    .registers 8

    .prologue
    const/4 v5, 0x0

    .line 27
    :try_start_1
    const-class v1, Landroid/hardware/Camera;

    .line 28
    .local v1, "env":Ljava/lang/Class;, "Ljava/lang/Class<Landroid/hardware/Camera;>;"
    const-string v4, "isRunning"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v1, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 29
    .local v2, "m":Ljava/lang/reflect/Method;
    if-eqz v2, :cond_40

    .line 30
    const/4 v4, 0x0

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v2, v4, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 31
    .local v3, "running":I
    const-string v4, "MusicCameraUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "=>camera state:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_34} :catch_3c

    .line 32
    and-int/lit16 v4, v3, 0xff

    if-eqz v4, :cond_3a

    const/4 v4, 0x1

    .line 38
    .end local v2    # "m":Ljava/lang/reflect/Method;
    .end local v3    # "running":I
    :goto_39
    return v4

    .restart local v2    # "m":Ljava/lang/reflect/Method;
    .restart local v3    # "running":I
    :cond_3a
    move v4, v5

    .line 32
    goto :goto_39

    .line 34
    .end local v2    # "m":Ljava/lang/reflect/Method;
    .end local v3    # "running":I
    :catch_3c
    move-exception v0

    .line 35
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_40
    move v4, v5

    .line 38
    goto :goto_39
.end method
