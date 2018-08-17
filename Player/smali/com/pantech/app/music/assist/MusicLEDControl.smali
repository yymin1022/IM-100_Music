.class public Lcom/pantech/app/music/assist/MusicLEDControl;
.super Ljava/lang/Object;
.source "MusicLEDControl.java"


# instance fields
.field private final CONTENT_URI:Landroid/net/Uri;

.field private final KEY_ISPROP:Ljava/lang/String;

.field private final KEY_NAME:Ljava/lang/String;

.field private final KEY_VALUE:Ljava/lang/String;

.field private final LEDLightingKeyName:Ljava/lang/String;

.field private final LEDLighting_ConditionControlColorKeyName:Ljava/lang/String;

.field private final LEDLighting_ConditionControlColorKeyValue_def:Ljava/lang/String;

.field private final LEDLighting_ConditionControlNotiKeyName:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mLedManager:Lcom/android/internal/pantech/led/LedManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const-string v0, "content://com.pantech.apps.SkySetting.SkySettingsOracle"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/music/assist/MusicLEDControl;->CONTENT_URI:Landroid/net/Uri;

    .line 55
    const-string v0, "_name"

    iput-object v0, p0, Lcom/pantech/app/music/assist/MusicLEDControl;->KEY_NAME:Ljava/lang/String;

    .line 56
    const-string v0, "_value"

    iput-object v0, p0, Lcom/pantech/app/music/assist/MusicLEDControl;->KEY_VALUE:Ljava/lang/String;

    .line 57
    const-string v0, "_isPro"

    iput-object v0, p0, Lcom/pantech/app/music/assist/MusicLEDControl;->KEY_ISPROP:Ljava/lang/String;

    .line 58
    const-string v0, "LEDLighting_OnOff"

    iput-object v0, p0, Lcom/pantech/app/music/assist/MusicLEDControl;->LEDLightingKeyName:Ljava/lang/String;

    .line 59
    const-string v0, "LEDLighting_ConditionControlNoti_OnOff"

    iput-object v0, p0, Lcom/pantech/app/music/assist/MusicLEDControl;->LEDLighting_ConditionControlNotiKeyName:Ljava/lang/String;

    .line 60
    const-string v0, "LEDLighting_ConditionControlNoti_Color"

    iput-object v0, p0, Lcom/pantech/app/music/assist/MusicLEDControl;->LEDLighting_ConditionControlColorKeyName:Ljava/lang/String;

    .line 61
    const-string v0, "Blue"

    iput-object v0, p0, Lcom/pantech/app/music/assist/MusicLEDControl;->LEDLighting_ConditionControlColorKeyValue_def:Ljava/lang/String;

    .line 18
    iput-object p1, p0, Lcom/pantech/app/music/assist/MusicLEDControl;->mContext:Landroid/content/Context;

    .line 19
    invoke-static {}, Lcom/pantech/app/music/common/ModelInfo;->isLEDType3()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 22
    :cond_2f
    return-void
.end method

.method private getColorSetting()I
    .registers 9

    .prologue
    .line 108
    const-string v3, "_name= \'LEDLighting_ConditionControlNoti_Color\'"

    .line 109
    .local v3, "where":Ljava/lang/String;
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_name"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "_value"

    aput-object v1, v2, v0

    .line 110
    .local v2, "proj":[Ljava/lang/String;
    const-string v7, "Blue"

    .line 112
    .local v7, "value":Ljava/lang/String;
    const/4 v6, 0x0

    .line 114
    .local v6, "c":Landroid/database/Cursor;
    :try_start_12
    iget-object v0, p0, Lcom/pantech/app/music/assist/MusicLEDControl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/pantech/app/music/assist/MusicLEDControl;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 115
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_30

    .line 116
    const-string v0, "_value"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_2f
    .catchall {:try_start_12 .. :try_end_2f} :catchall_52

    move-result-object v7

    .line 120
    :cond_30
    if-eqz v6, :cond_35

    .line 121
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 124
    :cond_35
    const-string v0, "MusicLEDControl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Color:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    invoke-static {v7}, Lcom/android/internal/pantech/led/LedInfo;->convertColorStringToValue(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 120
    :catchall_52
    move-exception v0

    if-eqz v6, :cond_58

    .line 121
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_58
    throw v0
.end method

.method private isEnableWithKeyName(Ljava/lang/String;)Z
    .registers 13
    .param p1, "KeyName"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    const/4 v10, 0x1

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_name= \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 72
    .local v3, "where":Ljava/lang/String;
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_name"

    aput-object v0, v2, v9

    const-string v0, "_value"

    aput-object v0, v2, v10

    .line 73
    .local v2, "proj":[Ljava/lang/String;
    const/4 v8, 0x0

    .line 75
    .local v8, "value":Ljava/lang/String;
    const/4 v6, 0x0

    .line 77
    .local v6, "c":Landroid/database/Cursor;
    :try_start_28
    iget-object v0, p0, Lcom/pantech/app/music/assist/MusicLEDControl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/pantech/app/music/assist/MusicLEDControl;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 78
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_46

    .line 79
    const-string v0, "_value"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_45} :catch_51
    .catchall {:try_start_28 .. :try_end_45} :catchall_74

    move-result-object v8

    .line 87
    :cond_46
    if-eqz v6, :cond_4b

    .line 88
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 91
    :cond_4b
    :goto_4b
    if-nez v8, :cond_7b

    .line 92
    invoke-direct {p0, p1, v10}, Lcom/pantech/app/music/assist/MusicLEDControl;->setEnableWithKeyName(Ljava/lang/String;Z)V

    .line 95
    :goto_50
    return v10

    .line 82
    :catch_51
    move-exception v7

    .line 83
    .local v7, "e":Ljava/lang/Exception;
    :try_start_52
    const-string v0, "MusicLEDControl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "exception:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/pantech/app/music/assist/MusicLEDControl;->setEnableWithKeyName(Ljava/lang/String;Z)V
    :try_end_6e
    .catchall {:try_start_52 .. :try_end_6e} :catchall_74

    .line 87
    if-eqz v6, :cond_4b

    .line 88
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_4b

    .line 87
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_74
    move-exception v0

    if-eqz v6, :cond_7a

    .line 88
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_7a
    throw v0

    .line 95
    :cond_7b
    const-string v0, "0"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_86

    move v0, v9

    :goto_84
    move v10, v0

    goto :goto_50

    :cond_86
    move v0, v10

    goto :goto_84
.end method

.method private isLEDEnable()Z
    .registers 2

    .prologue
    .line 64
    const-string v0, "LEDLighting_OnOff"

    invoke-direct {p0, v0}, Lcom/pantech/app/music/assist/MusicLEDControl;->isEnableWithKeyName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    const-string v0, "LEDLighting_ConditionControlNoti_OnOff"

    invoke-direct {p0, v0}, Lcom/pantech/app/music/assist/MusicLEDControl;->isEnableWithKeyName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 65
    const/4 v0, 0x1

    .line 67
    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method private setEnableWithKeyName(Ljava/lang/String;Z)V
    .registers 6
    .param p1, "KeyName"    # Ljava/lang/String;
    .param p2, "bEnable"    # Z

    .prologue
    .line 99
    const-string v1, "MusicLEDControl"

    const-string v2, "setEnableWithKeyName() - caused by DB field value is null"

    invoke-static {v1, v2}, Lcom/pantech/app/music/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 101
    .local v0, "cv":Landroid/content/ContentValues;
    const-string v1, "_name"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    const-string v2, "_value"

    if-eqz p2, :cond_2d

    const-string v1, "1"

    :goto_17
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    const-string v1, "_isPro"

    const-string v2, "false"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    iget-object v1, p0, Lcom/pantech/app/music/assist/MusicLEDControl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/music/assist/MusicLEDControl;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 105
    return-void

    .line 102
    :cond_2d
    const-string v1, "0"

    goto :goto_17
.end method


# virtual methods
.method public startMotionCover()V
    .registers 10

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 25
    iget-object v0, p0, Lcom/pantech/app/music/assist/MusicLEDControl;->mLedManager:Lcom/android/internal/pantech/led/LedManager;

    if-nez v0, :cond_8

    .line 31
    :cond_7
    :goto_7
    return-void

    .line 28
    :cond_8
    invoke-static {}, Lcom/pantech/app/music/common/ModelInfo;->isLEDSupport()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-direct {p0}, Lcom/pantech/app/music/assist/MusicLEDControl;->isLEDEnable()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 29
    iget-object v0, p0, Lcom/pantech/app/music/assist/MusicLEDControl;->mLedManager:Lcom/android/internal/pantech/led/LedManager;

    new-instance v1, Lcom/android/internal/pantech/led/LedInfo;

    sget v2, Lcom/android/internal/pantech/led/LedInfo;->APPID_MOTION:I

    new-array v3, v8, [[I

    new-array v4, v8, [I

    const/16 v5, 0x348

    aput v5, v4, v6

    invoke-direct {p0}, Lcom/pantech/app/music/assist/MusicLEDControl;->getColorSetting()I

    move-result v5

    aput v5, v4, v7

    aput-object v4, v3, v6

    new-array v4, v8, [I

    fill-array-data v4, :array_38

    aput-object v4, v3, v7

    invoke-direct {v1, v2, v3, v7}, Lcom/android/internal/pantech/led/LedInfo;-><init>(I[[II)V

    invoke-virtual {v0, v1, v6}, Lcom/android/internal/pantech/led/LedManager;->postEvent(Lcom/android/internal/pantech/led/LedInfo;I)V

    goto :goto_7

    :array_38
    .array-data 4
        0xf0
        0x0
    .end array-data
.end method

.method public startMotionLeft()V
    .registers 10

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 34
    iget-object v0, p0, Lcom/pantech/app/music/assist/MusicLEDControl;->mLedManager:Lcom/android/internal/pantech/led/LedManager;

    if-nez v0, :cond_8

    .line 40
    :cond_7
    :goto_7
    return-void

    .line 37
    :cond_8
    invoke-static {}, Lcom/pantech/app/music/common/ModelInfo;->isLEDSupport()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-direct {p0}, Lcom/pantech/app/music/assist/MusicLEDControl;->isLEDEnable()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 38
    iget-object v0, p0, Lcom/pantech/app/music/assist/MusicLEDControl;->mLedManager:Lcom/android/internal/pantech/led/LedManager;

    new-instance v1, Lcom/android/internal/pantech/led/LedInfo;

    sget v2, Lcom/android/internal/pantech/led/LedInfo;->APPID_MOTION:I

    new-array v3, v8, [[I

    new-array v4, v8, [I

    const/16 v5, 0x348

    aput v5, v4, v6

    invoke-direct {p0}, Lcom/pantech/app/music/assist/MusicLEDControl;->getColorSetting()I

    move-result v5

    aput v5, v4, v7

    aput-object v4, v3, v6

    new-array v4, v8, [I

    fill-array-data v4, :array_38

    aput-object v4, v3, v7

    invoke-direct {v1, v2, v3, v7}, Lcom/android/internal/pantech/led/LedInfo;-><init>(I[[II)V

    invoke-virtual {v0, v1, v6}, Lcom/android/internal/pantech/led/LedManager;->postEvent(Lcom/android/internal/pantech/led/LedInfo;I)V

    goto :goto_7

    :array_38
    .array-data 4
        0xf0
        0x0
    .end array-data
.end method

.method public startMotionRight()V
    .registers 10

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 43
    iget-object v0, p0, Lcom/pantech/app/music/assist/MusicLEDControl;->mLedManager:Lcom/android/internal/pantech/led/LedManager;

    if-nez v0, :cond_8

    .line 49
    :cond_7
    :goto_7
    return-void

    .line 46
    :cond_8
    invoke-static {}, Lcom/pantech/app/music/common/ModelInfo;->isLEDSupport()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-direct {p0}, Lcom/pantech/app/music/assist/MusicLEDControl;->isLEDEnable()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 47
    iget-object v0, p0, Lcom/pantech/app/music/assist/MusicLEDControl;->mLedManager:Lcom/android/internal/pantech/led/LedManager;

    new-instance v1, Lcom/android/internal/pantech/led/LedInfo;

    sget v2, Lcom/android/internal/pantech/led/LedInfo;->APPID_MOTION:I

    new-array v3, v8, [[I

    new-array v4, v8, [I

    const/16 v5, 0x348

    aput v5, v4, v6

    invoke-direct {p0}, Lcom/pantech/app/music/assist/MusicLEDControl;->getColorSetting()I

    move-result v5

    aput v5, v4, v7

    aput-object v4, v3, v6

    new-array v4, v8, [I

    fill-array-data v4, :array_38

    aput-object v4, v3, v7

    invoke-direct {v1, v2, v3, v7}, Lcom/android/internal/pantech/led/LedInfo;-><init>(I[[II)V

    invoke-virtual {v0, v1, v6}, Lcom/android/internal/pantech/led/LedManager;->postEvent(Lcom/android/internal/pantech/led/LedInfo;I)V

    goto :goto_7

    :array_38
    .array-data 4
        0xf0
        0x0
    .end array-data
.end method

.method public terminate()V
    .registers 1

    .prologue
    .line 52
    return-void
.end method
