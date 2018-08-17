.class public Lcom/pantech/app/music/cloud/MusicCloudReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MusicCloudReceiver.java"


# instance fields
.field private mCloudSessionControl:Lcom/pantech/app/music/cloud/CloudSession;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pantech/app/music/cloud/MusicCloudReceiver;->mCloudSessionControl:Lcom/pantech/app/music/cloud/CloudSession;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 22
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 24
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    .line 26
    .local v8, "action":Ljava/lang/String;
    const-string v3, "com.btb.tcloud.action.TCLOUD_AUTO_LOGIN_FLAG"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_46

    .line 28
    const-string v3, "LoginCheck"

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v15

    .line 30
    .local v15, "isAutoLogin":Z
    const/4 v3, 0x1

    if-ne v15, v3, :cond_2f

    .line 32
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BongBong isAutoLogin : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/pantech/app/music/utils/MLog;->w(Ljava/lang/String;)V

    .line 102
    .end local v15    # "isAutoLogin":Z
    :cond_2e
    :goto_2e
    return-void

    .line 35
    .restart local v15    # "isAutoLogin":Z
    :cond_2f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BongBong isAutoLogin : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/pantech/app/music/utils/MLog;->w(Ljava/lang/String;)V

    goto :goto_2e

    .line 39
    .end local v15    # "isAutoLogin":Z
    :cond_46
    const-string v3, "lg.uplusbox.intent.action.COMMON_SESSION_ID_CHANGED"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 42
    sget-boolean v3, Lcom/pantech/multimedia/common/UPlusData;->UBOX_BROADCAST_RECEIVED:Z

    const/4 v4, 0x1

    if-ne v3, v4, :cond_57

    .line 43
    const/4 v3, 0x0

    sput-boolean v3, Lcom/pantech/multimedia/common/UPlusData;->UBOX_BROADCAST_RECEIVED:Z

    goto :goto_2e

    .line 48
    :cond_57
    const-string v3, "extra_status"

    const/4 v4, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v18

    .line 49
    .local v18, "value":I
    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-static {v3, v0}, Lcom/pantech/app/music/cloud/SessionFactory;->getCloudSessionInstance(ILandroid/content/Context;)Lcom/pantech/app/music/cloud/CloudSession;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/pantech/app/music/cloud/MusicCloudReceiver;->mCloudSessionControl:Lcom/pantech/app/music/cloud/CloudSession;

    .line 51
    packed-switch v18, :pswitch_data_122

    goto :goto_2e

    .line 53
    :pswitch_6f
    const-string v3, "BongBong Android manifest Receiver Account Change Login"

    invoke-static {v3}, Lcom/pantech/app/music/utils/MLog;->w(Ljava/lang/String;)V

    .line 55
    const-string v3, "extra_session_id"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v17

    .line 56
    .local v17, "sessionID":Ljava/lang/String;
    const-string v3, "extra_session_hold_time"

    const-wide/16 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v12

    .line 57
    .local v12, "holdtime":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    add-long/2addr v12, v4

    .line 59
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pantech/app/music/cloud/MusicCloudReceiver;->mCloudSessionControl:Lcom/pantech/app/music/cloud/CloudSession;

    invoke-interface {v3}, Lcom/pantech/app/music/cloud/CloudSession;->getSession()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 61
    .local v16, "savedSession":Ljava/lang/String;
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2e

    .line 62
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-object/from16 v0, v17

    invoke-static {v0, v12, v13, v4, v5}, Lcom/pantech/multimedia/common/UPlusSessionData;->getSessionInstance(Ljava/lang/String;JJ)Lcom/pantech/multimedia/common/UPlusSessionData;

    move-result-object v11

    .line 63
    .local v11, "data":Lcom/pantech/multimedia/common/UPlusSessionData;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pantech/app/music/cloud/MusicCloudReceiver;->mCloudSessionControl:Lcom/pantech/app/music/cloud/CloudSession;

    invoke-interface {v3, v11}, Lcom/pantech/app/music/cloud/CloudSession;->setSession(Ljava/lang/Object;)V

    goto/16 :goto_2e

    .line 69
    .end local v11    # "data":Lcom/pantech/multimedia/common/UPlusSessionData;
    .end local v12    # "holdtime":J
    .end local v16    # "savedSession":Ljava/lang/String;
    .end local v17    # "sessionID":Ljava/lang/String;
    :pswitch_b6
    const-string v3, "BongBong Android manifest Receiver Account Change Logout"

    invoke-static {v3}, Lcom/pantech/app/music/utils/MLog;->w(Ljava/lang/String;)V

    .line 71
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 73
    .local v2, "resolver":Landroid/content/ContentResolver;
    if-eqz v2, :cond_118

    .line 76
    sget-object v3, Lcom/pantech/app/music/db/MusicDBStore$Cloud$UPlusBox$Song;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 79
    sget-object v3, Lcom/pantech/app/music/db/MusicQueueStore$MusicQueueColumns;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "contentsType"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 80
    .local v10, "cursor":Landroid/database/Cursor;
    if-eqz v10, :cond_113

    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_113

    .line 82
    const-string v3, "contentsType"

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 84
    .local v9, "cntsType":I
    const/4 v3, 0x3

    if-ne v9, v3, :cond_113

    .line 86
    new-instance v14, Landroid/content/Intent;

    const-class v3, Lcom/pantech/app/music/service/MusicPlaybackService;

    move-object/from16 v0, p1

    invoke-direct {v14, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 87
    .local v14, "i":Landroid/content/Intent;
    const-string v3, "com.android.music.musicservicecommand"

    invoke-virtual {v14, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 88
    const-string v3, "command"

    const-string v4, "clearQueue"

    invoke-virtual {v14, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 89
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 91
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/pantech/app/music/db/MusicQueueStore$MusicQueueColumns;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 94
    .end local v9    # "cntsType":I
    .end local v14    # "i":Landroid/content/Intent;
    :cond_113
    if-eqz v10, :cond_118

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 97
    .end local v10    # "cursor":Landroid/database/Cursor;
    :cond_118
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pantech/app/music/cloud/MusicCloudReceiver;->mCloudSessionControl:Lcom/pantech/app/music/cloud/CloudSession;

    invoke-interface {v3}, Lcom/pantech/app/music/cloud/CloudSession;->sessionInit()V

    goto/16 :goto_2e

    .line 51
    nop

    :pswitch_data_122
    .packed-switch 0x0
        :pswitch_6f
        :pswitch_b6
    .end packed-switch
.end method
