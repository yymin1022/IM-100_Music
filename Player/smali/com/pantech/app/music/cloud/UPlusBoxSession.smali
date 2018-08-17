.class public Lcom/pantech/app/music/cloud/UPlusBoxSession;
.super Ljava/lang/Object;
.source "UPlusBoxSession.java"

# interfaces
.implements Lcom/pantech/app/music/cloud/CloudSession;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pantech/app/music/cloud/UPlusBoxSession;->mContext:Landroid/content/Context;

    .line 16
    iput-object p1, p0, Lcom/pantech/app/music/cloud/UPlusBoxSession;->mContext:Landroid/content/Context;

    .line 17
    return-void
.end method

.method private checkContext()Z
    .registers 2

    .prologue
    .line 98
    iget-object v0, p0, Lcom/pantech/app/music/cloud/UPlusBoxSession;->mContext:Landroid/content/Context;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x1

    goto :goto_5
.end method


# virtual methods
.method public getSession()Ljava/lang/Object;
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 22
    invoke-direct {p0}, Lcom/pantech/app/music/cloud/UPlusBoxSession;->checkContext()Z

    move-result v2

    if-nez v2, :cond_8

    .line 26
    :goto_7
    return-object v1

    .line 25
    :cond_8
    iget-object v2, p0, Lcom/pantech/app/music/cloud/UPlusBoxSession;->mContext:Landroid/content/Context;

    const-string v3, "uplus_sessionid_pref"

    iget-object v4, p0, Lcom/pantech/app/music/cloud/UPlusBoxSession;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 26
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v2, "key_uplus_sessionid"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_7
.end method

.method public isValidSession()Z
    .registers 19

    .prologue
    .line 44
    invoke-direct/range {p0 .. p0}, Lcom/pantech/app/music/cloud/UPlusBoxSession;->checkContext()Z

    move-result v14

    if-nez v14, :cond_8

    .line 45
    const/4 v14, 0x0

    .line 62
    :goto_7
    return v14

    .line 47
    :cond_8
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/pantech/app/music/cloud/UPlusBoxSession;->mContext:Landroid/content/Context;

    const-string v15, "uplus_sessionid_pref"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/app/music/cloud/UPlusBoxSession;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v13

    .line 48
    .local v13, "session_prefs":Landroid/content/SharedPreferences;
    const-string v14, "key_uplus_sessionid"

    const/4 v15, 0x0

    invoke-interface {v13, v14, v15}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 50
    .local v12, "session":Ljava/lang/String;
    const-string v14, "key_extra_session_hold_time"

    const-wide/16 v16, 0x0

    move-wide/from16 v0, v16

    invoke-interface {v13, v14, v0, v1}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v10

    .line 51
    .local v10, "savedHoldTime":J
    const-string v14, "key_uplus_sessionid_current_time"

    const-wide/16 v16, 0x0

    move-wide/from16 v0, v16

    invoke-interface {v13, v14, v0, v1}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    .line 52
    .local v8, "savedCurrentTime":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 53
    .local v6, "curTime":J
    sub-long v4, v10, v6

    .line 54
    .local v4, "calHoldTime":J
    sub-long v2, v6, v8

    .line 56
    .local v2, "calCurrentTime":J
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "BongBong calHoldTime : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " calCurrentTime : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/pantech/app/music/utils/MLog;->v(Ljava/lang/String;)V

    .line 59
    if-eqz v12, :cond_6c

    const-wide/16 v14, 0x0

    cmp-long v14, v4, v14

    if-lez v14, :cond_6c

    const-wide/32 v14, 0x5265c00

    cmp-long v14, v2, v14

    if-ltz v14, :cond_6e

    .line 60
    :cond_6c
    const/4 v14, 0x0

    goto :goto_7

    .line 62
    :cond_6e
    const/4 v14, 0x1

    goto :goto_7
.end method

.method public refreshSession()V
    .registers 4

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/pantech/app/music/cloud/UPlusBoxSession;->checkContext()Z

    move-result v1

    if-nez v1, :cond_7

    .line 39
    :goto_6
    return-void

    .line 34
    :cond_7
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 35
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "lg.uplusbox.intent.action.REQUEST_COMMON_SESSION_ID"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 36
    const-string v1, "extra_necessary_login"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 38
    iget-object v1, p0, Lcom/pantech/app/music/cloud/UPlusBoxSession;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_6
.end method

.method public sessionInit()V
    .registers 9

    .prologue
    const-wide/16 v6, 0x0

    .line 68
    invoke-direct {p0}, Lcom/pantech/app/music/cloud/UPlusBoxSession;->checkContext()Z

    move-result v2

    if-nez v2, :cond_9

    .line 79
    :goto_8
    return-void

    .line 71
    :cond_9
    iget-object v2, p0, Lcom/pantech/app/music/cloud/UPlusBoxSession;->mContext:Landroid/content/Context;

    const-string v3, "uplus_sessionid_pref"

    iget-object v4, p0, Lcom/pantech/app/music/cloud/UPlusBoxSession;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 72
    .local v1, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 73
    .local v0, "edit":Landroid/content/SharedPreferences$Editor;
    const-string v2, "key_uplus_sessionid"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 75
    const-string v2, "key_extra_session_hold_time"

    invoke-interface {v0, v2, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 76
    const-string v2, "key_uplus_sessionid_current_time"

    invoke-interface {v0, v2, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 77
    const-string v2, "key_uplus_current_dt"

    const-string v3, "0"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 78
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_8
.end method

.method public setSession(Ljava/lang/Object;)V
    .registers 8
    .param p1, "session"    # Ljava/lang/Object;

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/pantech/app/music/cloud/UPlusBoxSession;->checkContext()Z

    move-result v3

    if-eqz v3, :cond_8

    if-nez p1, :cond_9

    .line 95
    :cond_8
    :goto_8
    return-void

    :cond_9
    move-object v0, p1

    .line 86
    check-cast v0, Lcom/pantech/multimedia/common/UPlusSessionData;

    .line 88
    .local v0, "data":Lcom/pantech/multimedia/common/UPlusSessionData;
    iget-object v3, p0, Lcom/pantech/app/music/cloud/UPlusBoxSession;->mContext:Landroid/content/Context;

    const-string v4, "uplus_sessionid_pref"

    iget-object v5, p0, Lcom/pantech/app/music/cloud/UPlusBoxSession;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 89
    .local v2, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 90
    .local v1, "edit":Landroid/content/SharedPreferences$Editor;
    const-string v3, "key_uplus_sessionid"

    invoke-virtual {v0}, Lcom/pantech/multimedia/common/UPlusSessionData;->getSession()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 91
    const-string v3, "key_extra_session_hold_time"

    invoke-virtual {v0}, Lcom/pantech/multimedia/common/UPlusSessionData;->getHoldTime()J

    move-result-wide v4

    invoke-interface {v1, v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 92
    const-string v3, "key_uplus_sessionid_current_time"

    invoke-virtual {v0}, Lcom/pantech/multimedia/common/UPlusSessionData;->getCurrentTime()J

    move-result-wide v4

    invoke-interface {v1, v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 93
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_8
.end method
