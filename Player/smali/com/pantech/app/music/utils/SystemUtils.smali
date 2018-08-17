.class public Lcom/pantech/app/music/utils/SystemUtils;
.super Ljava/lang/Object;
.source "SystemUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SystemUtils"

.field private static m_AudioManager:Landroid/media/AudioManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 17
    const/4 v0, 0x0

    sput-object v0, Lcom/pantech/app/music/utils/SystemUtils;->m_AudioManager:Landroid/media/AudioManager;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isBluetoothA2dpOn(Landroid/content/Context;)Z
    .registers 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 108
    sget-object v1, Lcom/pantech/app/music/utils/SystemUtils;->m_AudioManager:Landroid/media/AudioManager;

    if-nez v1, :cond_10

    .line 110
    const-string v1, "audio"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    sput-object v1, Lcom/pantech/app/music/utils/SystemUtils;->m_AudioManager:Landroid/media/AudioManager;

    .line 113
    :cond_10
    sget-object v1, Lcom/pantech/app/music/utils/SystemUtils;->m_AudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->isBluetoothA2dpOn()Z

    move-result v0

    .line 115
    .local v0, "isBluetoothA2dpOn":Z
    const-string v1, "SystemUtils"

    const-string v4, "isBluetoothA2dpOn()  BluetoothA2dp[%b]"

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    if-eqz v0, :cond_34

    .line 119
    const-string v1, "SystemUtils"

    const-string v3, "return true"

    invoke-static {v1, v3}, Lcom/pantech/app/music/utils/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    .line 125
    :goto_33
    return v1

    .line 124
    :cond_34
    const-string v1, "SystemUtils"

    const-string v2, "return false"

    invoke-static {v1, v2}, Lcom/pantech/app/music/utils/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v3

    .line 125
    goto :goto_33
.end method

.method public static isKoreanLocale()Z
    .registers 2

    .prologue
    .line 77
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->KOREA:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->KOREAN:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 78
    :cond_18
    const/4 v0, 0x1

    .line 80
    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method public static isLowPowerSystemPropertyEnabled()Z
    .registers 11

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 28
    :try_start_2
    const-string v4, "android.os.SystemProperties"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 29
    .local v3, "properties":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v4, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 31
    .local v2, "obj":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v7, "get"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Class;

    const/4 v9, 0x0

    const-class v10, Ljava/lang/String;

    aput-object v10, v8, v9

    invoke-virtual {v4, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 33
    .local v1, "get":Ljava/lang/reflect/Method;
    sget-boolean v4, Lcom/pantech/app/music/service/MusicPlaybackService;->FEATURE_USE_OFFLOAD:Z

    if-eqz v4, :cond_48

    .line 34
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "audio.offload.disable"

    aput-object v8, v4, v7

    invoke-virtual {v1, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-nez v4, :cond_46

    move v4, v5

    .line 42
    .end local v1    # "get":Ljava/lang/reflect/Method;
    .end local v2    # "obj":Ljava/lang/Object;
    :goto_45
    return v4

    .restart local v1    # "get":Ljava/lang/reflect/Method;
    .restart local v2    # "obj":Ljava/lang/Object;
    :cond_46
    move v4, v6

    .line 34
    goto :goto_45

    .line 36
    :cond_48
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v7, "lpa.decode"

    aput-object v7, v4, v5

    invoke-virtual {v1, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5f} :catch_61

    move-result v4

    goto :goto_45

    .line 38
    .end local v1    # "get":Ljava/lang/reflect/Method;
    .end local v2    # "obj":Ljava/lang/Object;
    :catch_61
    move-exception v0

    .line 39
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v4, v6

    .line 42
    goto :goto_45
.end method

.method public static isMiracastPropertyEnabled()Z
    .registers 6

    .prologue
    .line 53
    const/4 v1, 0x0

    .line 55
    .local v1, "isMiracastEnable":Z
    sget-boolean v3, Lcom/pantech/app/music/service/MusicPlaybackService;->FEATURE_USE_OFFLOAD:Z

    if-nez v3, :cond_7

    .line 56
    const/4 v1, 0x0

    .line 73
    :cond_6
    :goto_6
    return v1

    .line 59
    :cond_7
    :try_start_7
    const-string v3, "WFD.IsEnabled"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 61
    .local v2, "isMiracastEnabled":Ljava/lang/String;
    const-string v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_12} :catch_31

    move-result v3

    if-eqz v3, :cond_16

    .line 62
    const/4 v1, 0x1

    .line 69
    .end local v2    # "isMiracastEnabled":Ljava/lang/String;
    :cond_16
    :goto_16
    if-eqz v1, :cond_6

    .line 70
    const-string v3, "SystemUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "->isMiracastEnable:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 65
    :catch_31
    move-exception v0

    .line 66
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_16
.end method

.method public static isWiredHeadsetOn(Landroid/content/Context;)Z
    .registers 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 85
    sget-object v1, Lcom/pantech/app/music/utils/SystemUtils;->m_AudioManager:Landroid/media/AudioManager;

    if-nez v1, :cond_10

    .line 87
    const-string v1, "audio"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    sput-object v1, Lcom/pantech/app/music/utils/SystemUtils;->m_AudioManager:Landroid/media/AudioManager;

    .line 90
    :cond_10
    sget-object v1, Lcom/pantech/app/music/utils/SystemUtils;->m_AudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v0

    .line 92
    .local v0, "isWiredHeadsetOn":Z
    const-string v1, "SystemUtils"

    const-string v4, "isWiredHeadsetOn() WiredHeadset[%b]"

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/pantech/app/music/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    if-eqz v0, :cond_34

    .line 96
    const-string v1, "SystemUtils"

    const-string v3, "return true"

    invoke-static {v1, v3}, Lcom/pantech/app/music/utils/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    .line 102
    :goto_33
    return v1

    .line 101
    :cond_34
    const-string v1, "SystemUtils"

    const-string v2, "return false"

    invoke-static {v1, v2}, Lcom/pantech/app/music/utils/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v3

    .line 102
    goto :goto_33
.end method
