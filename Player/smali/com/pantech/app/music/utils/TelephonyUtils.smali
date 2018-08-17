.class public Lcom/pantech/app/music/utils/TelephonyUtils;
.super Ljava/lang/Object;
.source "TelephonyUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TelephonyUtils"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isAirPlaneMode(Landroid/content/Context;)Z
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 81
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 82
    .local v0, "airmode":I
    if-eqz v0, :cond_e

    const/4 v1, 0x1

    :cond_e
    return v1
.end method

.method public static isCallState(Landroid/content/Context;)Z
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 49
    const/4 v0, 0x0

    .line 50
    .local v0, "callstate":I
    const-string v1, "phone"

    .line 51
    .local v1, "srvName":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 52
    .local v2, "telephoneManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    .line 53
    if-eqz v0, :cond_11

    const/4 v3, 0x1

    :goto_10
    return v3

    :cond_11
    const/4 v3, 0x0

    goto :goto_10
.end method

.method public static isNetworkDisable(Landroid/content/Context;)Z
    .registers 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 74
    const-string v5, "connectivity"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 75
    .local v1, "manager":Landroid/net/ConnectivityManager;
    invoke-virtual {v1, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 76
    .local v0, "data":Landroid/net/NetworkInfo;
    invoke-virtual {v1, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 77
    .local v2, "wifi":Landroid/net/NetworkInfo;
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v5

    if-nez v5, :cond_1f

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v5

    if-nez v5, :cond_1f

    :goto_1e
    return v3

    :cond_1f
    move v3, v4

    goto :goto_1e
.end method

.method public static isPlusCallState(Landroid/content/Context;)Z
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 65
    invoke-static {p0}, Lcom/pantech/app/music/utils/TelephonyUtils;->isCallState(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-static {p0}, Lcom/pantech/app/music/utils/TelephonyUtils;->isRmsConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-static {}, Lcom/pantech/app/music/common/ModelInfo;->isLGUPluscall()Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public static isPureCallState(Landroid/content/Context;)Z
    .registers 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 57
    invoke-static {p0}, Lcom/pantech/app/music/utils/TelephonyUtils;->isCallState(Landroid/content/Context;)Z

    move-result v0

    .line 58
    .local v0, "isCall":Z
    invoke-static {p0}, Lcom/pantech/app/music/utils/TelephonyUtils;->isRmsConnected(Landroid/content/Context;)Z

    move-result v2

    .line 59
    .local v2, "isRMS":Z
    invoke-static {}, Lcom/pantech/app/music/common/ModelInfo;->isLGUPluscall()Z

    move-result v1

    .line 60
    .local v1, "isLGU":Z
    const-string v3, "TelephonyUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "->callstate:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", RMS:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", LGUPlus:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    if-eqz v0, :cond_40

    if-nez v2, :cond_40

    if-nez v1, :cond_40

    const/4 v3, 0x1

    :goto_3f
    return v3

    :cond_40
    const/4 v3, 0x0

    goto :goto_3f
.end method

.method public static isRmsConnected(Landroid/content/Context;)Z
    .registers 11
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v9, 0x1

    .line 19
    const/4 v8, 0x0

    .line 20
    .local v8, "status":I
    invoke-static {}, Lcom/pantech/app/music/common/ModelInfo;->isLGUPlus()Z

    move-result v1

    if-eqz v1, :cond_35

    .line 21
    const/4 v6, 0x0

    .line 23
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_9
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 24
    .local v0, "cr":Landroid/content/ContentResolver;
    if-eqz v0, :cond_2f

    .line 25
    const-string v1, "content://com.lguplus.rms/service"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 26
    if-eqz v6, :cond_2f

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 27
    const-string v1, "connected"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_2e} :catch_40
    .catchall {:try_start_9 .. :try_end_2e} :catchall_63

    move-result v8

    .line 34
    :cond_2f
    if-eqz v6, :cond_35

    .line 35
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 36
    const/4 v6, 0x0

    .line 41
    .end local v0    # "cr":Landroid/content/ContentResolver;
    .end local v6    # "cursor":Landroid/database/Cursor;
    :cond_35
    :goto_35
    if-ne v8, v9, :cond_6b

    .line 42
    const-string v1, "TelephonyUtils"

    const-string v2, "=>RMS connected state!!!"

    invoke-static {v1, v2}, Lcom/pantech/app/music/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v9

    .line 45
    :goto_3f
    return v1

    .line 30
    .restart local v6    # "cursor":Landroid/database/Cursor;
    :catch_40
    move-exception v7

    .line 31
    .local v7, "e":Ljava/lang/Exception;
    :try_start_41
    const-string v1, "RMS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "e : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/music/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5c
    .catchall {:try_start_41 .. :try_end_5c} :catchall_63

    .line 34
    if-eqz v6, :cond_35

    .line 35
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 36
    const/4 v6, 0x0

    goto :goto_35

    .line 34
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_63
    move-exception v1

    if-eqz v6, :cond_6a

    .line 35
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 36
    const/4 v6, 0x0

    :cond_6a
    throw v1

    .line 45
    .end local v6    # "cursor":Landroid/database/Cursor;
    :cond_6b
    const/4 v1, 0x0

    goto :goto_3f
.end method

.method public static isRoaming(Landroid/content/Context;)Z
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 69
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 70
    .local v0, "telephoneManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v1

    return v1
.end method
