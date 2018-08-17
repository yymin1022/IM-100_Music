.class Lcom/pantech/app/music/list/activity/BaseListActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "BaseListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/music/list/activity/BaseListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/music/list/activity/BaseListActivity;


# direct methods
.method constructor <init>(Lcom/pantech/app/music/list/activity/BaseListActivity;)V
    .registers 2

    .prologue
    .line 85
    iput-object p1, p0, Lcom/pantech/app/music/list/activity/BaseListActivity$1;->this$0:Lcom/pantech/app/music/list/activity/BaseListActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 24
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 89
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pantech/app/music/list/activity/BaseListActivity$1;->this$0:Lcom/pantech/app/music/list/activity/BaseListActivity;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/pantech/app/music/list/activity/BaseListActivity$1;->this$0:Lcom/pantech/app/music/list/activity/BaseListActivity;

    invoke-virtual {v5}, Lcom/pantech/app/music/list/activity/BaseListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/pantech/app/music/cloud/SessionFactory;->getCloudSessionInstance(ILandroid/content/Context;)Lcom/pantech/app/music/cloud/CloudSession;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/pantech/app/music/list/activity/BaseListActivity;->access$002(Lcom/pantech/app/music/list/activity/BaseListActivity;Lcom/pantech/app/music/cloud/CloudSession;)Lcom/pantech/app/music/cloud/CloudSession;

    .line 91
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    .line 93
    .local v9, "action":Ljava/lang/String;
    const-string v3, "lg.uplusbox.intent.action.RESPONSE_COMMON_SESSION_ID"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_93

    .line 95
    const-string v3, "extra_result"

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v16

    .line 97
    .local v16, "isSuccess":Z
    const/4 v3, 0x1

    move/from16 v0, v16

    if-ne v0, v3, :cond_85

    .line 98
    const-string v3, "extra_session_id"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/pantech/app/music/list/activity/BaseListActivity;->mUPlusSessionID:Ljava/lang/String;

    .line 100
    const-string v3, "extra_session_hold_time"

    const-wide/16 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v14

    .line 102
    .local v14, "holdtime":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    add-long/2addr v14, v4

    .line 104
    sget-object v3, Lcom/pantech/app/music/list/activity/BaseListActivity;->mUPlusSessionID:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v3, v14, v15, v4, v5}, Lcom/pantech/multimedia/common/UPlusSessionData;->getSessionInstance(Ljava/lang/String;JJ)Lcom/pantech/multimedia/common/UPlusSessionData;

    move-result-object v12

    .line 105
    .local v12, "data":Lcom/pantech/multimedia/common/UPlusSessionData;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pantech/app/music/list/activity/BaseListActivity$1;->this$0:Lcom/pantech/app/music/list/activity/BaseListActivity;

    invoke-static {v3}, Lcom/pantech/app/music/list/activity/BaseListActivity;->access$000(Lcom/pantech/app/music/list/activity/BaseListActivity;)Lcom/pantech/app/music/cloud/CloudSession;

    move-result-object v3

    invoke-interface {v3, v12}, Lcom/pantech/app/music/cloud/CloudSession;->setSession(Ljava/lang/Object;)V

    .line 107
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pantech/app/music/list/activity/BaseListActivity$1;->this$0:Lcom/pantech/app/music/list/activity/BaseListActivity;

    const-string v4, "cloud_reqstatus_pref"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/pantech/app/music/list/activity/BaseListActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v17

    .line 108
    .local v17, "prefs":Landroid/content/SharedPreferences;
    const-string v3, "key_cloud_sessionid_req_status"

    const/4 v4, 0x0

    move-object/from16 v0, v17

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v18

    .line 110
    .local v18, "req_reason":I
    const/4 v3, 0x2

    move/from16 v0, v18

    if-ne v0, v3, :cond_84

    .line 112
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pantech/app/music/list/activity/BaseListActivity$1;->this$0:Lcom/pantech/app/music/list/activity/BaseListActivity;

    sget-object v4, Lcom/pantech/app/music/list/activity/BaseListActivity;->mUPlusSessionID:Ljava/lang/String;

    const/16 v5, -0x64

    invoke-virtual {v3, v4, v5}, Lcom/pantech/app/music/list/activity/BaseListActivity;->triggerForCloud(Ljava/lang/Object;I)V

    .line 176
    .end local v12    # "data":Lcom/pantech/multimedia/common/UPlusSessionData;
    .end local v14    # "holdtime":J
    .end local v16    # "isSuccess":Z
    .end local v17    # "prefs":Landroid/content/SharedPreferences;
    .end local v18    # "req_reason":I
    :cond_84
    :goto_84
    return-void

    .line 116
    .restart local v16    # "isSuccess":Z
    :cond_85
    const/4 v3, 0x0

    sput-object v3, Lcom/pantech/app/music/list/activity/BaseListActivity;->mUPlusSessionID:Ljava/lang/String;

    .line 117
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pantech/app/music/list/activity/BaseListActivity$1;->this$0:Lcom/pantech/app/music/list/activity/BaseListActivity;

    const/4 v4, 0x0

    const/16 v5, -0x65

    invoke-virtual {v3, v4, v5}, Lcom/pantech/app/music/list/activity/BaseListActivity;->triggerForCloud(Ljava/lang/Object;I)V

    goto :goto_84

    .line 120
    .end local v16    # "isSuccess":Z
    :cond_93
    const-string v3, "lg.uplusbox.intent.action.COMMON_SESSION_ID_CHANGED"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_84

    .line 122
    const/4 v3, 0x1

    sput-boolean v3, Lcom/pantech/multimedia/common/UPlusData;->UBOX_BROADCAST_RECEIVED:Z

    .line 124
    const-string v3, "extra_status"

    const/4 v4, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v20

    .line 125
    .local v20, "value":I
    const/4 v8, 0x0

    .line 126
    .local v8, "UBOX_ACCOUNT_LOGIN":I
    packed-switch v20, :pswitch_data_188

    goto :goto_84

    .line 129
    :pswitch_ac
    const-string v3, "extra_session_id"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/pantech/app/music/list/activity/BaseListActivity;->mUPlusSessionID:Ljava/lang/String;

    .line 130
    const-string v3, "extra_session_hold_time"

    const-wide/16 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v14

    .line 132
    .restart local v14    # "holdtime":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    add-long/2addr v14, v4

    .line 134
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pantech/app/music/list/activity/BaseListActivity$1;->this$0:Lcom/pantech/app/music/list/activity/BaseListActivity;

    invoke-static {v3}, Lcom/pantech/app/music/list/activity/BaseListActivity;->access$000(Lcom/pantech/app/music/list/activity/BaseListActivity;)Lcom/pantech/app/music/cloud/CloudSession;

    move-result-object v3

    invoke-interface {v3}, Lcom/pantech/app/music/cloud/CloudSession;->getSession()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    .line 136
    .local v19, "savedSession":Ljava/lang/String;
    if-eqz v19, :cond_ee

    sget-object v3, Lcom/pantech/app/music/list/activity/BaseListActivity;->mUPlusSessionID:Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ee

    .line 137
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pantech/app/music/list/activity/BaseListActivity$1;->this$0:Lcom/pantech/app/music/list/activity/BaseListActivity;

    sget-object v4, Lcom/pantech/app/music/list/activity/BaseListActivity;->mUPlusSessionID:Ljava/lang/String;

    const/4 v5, -0x1

    invoke-virtual {v3, v4, v5}, Lcom/pantech/app/music/list/activity/BaseListActivity;->triggerForCloud(Ljava/lang/Object;I)V

    goto :goto_84

    .line 139
    :cond_ee
    sget-object v3, Lcom/pantech/app/music/list/activity/BaseListActivity;->mUPlusSessionID:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v3, v14, v15, v4, v5}, Lcom/pantech/multimedia/common/UPlusSessionData;->getSessionInstance(Ljava/lang/String;JJ)Lcom/pantech/multimedia/common/UPlusSessionData;

    move-result-object v12

    .line 140
    .restart local v12    # "data":Lcom/pantech/multimedia/common/UPlusSessionData;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pantech/app/music/list/activity/BaseListActivity$1;->this$0:Lcom/pantech/app/music/list/activity/BaseListActivity;

    invoke-static {v3}, Lcom/pantech/app/music/list/activity/BaseListActivity;->access$000(Lcom/pantech/app/music/list/activity/BaseListActivity;)Lcom/pantech/app/music/cloud/CloudSession;

    move-result-object v3

    invoke-interface {v3, v12}, Lcom/pantech/app/music/cloud/CloudSession;->setSession(Ljava/lang/Object;)V

    .line 142
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pantech/app/music/list/activity/BaseListActivity$1;->this$0:Lcom/pantech/app/music/list/activity/BaseListActivity;

    sget-object v4, Lcom/pantech/app/music/list/activity/BaseListActivity;->mUPlusSessionID:Ljava/lang/String;

    const/4 v5, 0x2

    invoke-virtual {v3, v4, v5}, Lcom/pantech/app/music/list/activity/BaseListActivity;->triggerForCloud(Ljava/lang/Object;I)V

    goto/16 :goto_84

    .line 147
    .end local v12    # "data":Lcom/pantech/multimedia/common/UPlusSessionData;
    .end local v14    # "holdtime":J
    .end local v19    # "savedSession":Ljava/lang/String;
    :pswitch_10f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pantech/app/music/list/activity/BaseListActivity$1;->this$0:Lcom/pantech/app/music/list/activity/BaseListActivity;

    invoke-static {v3}, Lcom/pantech/app/music/list/activity/BaseListActivity;->access$000(Lcom/pantech/app/music/list/activity/BaseListActivity;)Lcom/pantech/app/music/cloud/CloudSession;

    move-result-object v3

    invoke-interface {v3}, Lcom/pantech/app/music/cloud/CloudSession;->sessionInit()V

    .line 149
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pantech/app/music/list/activity/BaseListActivity$1;->this$0:Lcom/pantech/app/music/list/activity/BaseListActivity;

    invoke-virtual {v3}, Lcom/pantech/app/music/list/activity/BaseListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/pantech/app/music/db/MusicDBStore$Cloud$UPlusBox$Song;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 152
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 153
    .local v2, "resolver":Landroid/content/ContentResolver;
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

    move-result-object v11

    .line 154
    .local v11, "cursor":Landroid/database/Cursor;
    if-eqz v11, :cond_178

    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_178

    .line 156
    const-string v3, "contentsType"

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 158
    .local v10, "cntsType":I
    const/4 v3, 0x3

    if-ne v10, v3, :cond_178

    .line 160
    new-instance v13, Landroid/content/Intent;

    const-class v3, Lcom/pantech/app/music/service/MusicPlaybackService;

    move-object/from16 v0, p1

    invoke-direct {v13, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 161
    .local v13, "i":Landroid/content/Intent;
    const-string v3, "com.android.music.musicservicecommand"

    invoke-virtual {v13, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 162
    const-string v3, "command"

    const-string v4, "clearQueue"

    invoke-virtual {v13, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 163
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 165
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/pantech/app/music/db/MusicQueueStore$MusicQueueColumns;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 168
    .end local v10    # "cntsType":I
    .end local v13    # "i":Landroid/content/Intent;
    :cond_178
    if-eqz v11, :cond_17d

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 170
    :cond_17d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pantech/app/music/list/activity/BaseListActivity$1;->this$0:Lcom/pantech/app/music/list/activity/BaseListActivity;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lcom/pantech/app/music/list/activity/BaseListActivity;->triggerForCloud(Ljava/lang/Object;I)V

    goto/16 :goto_84

    .line 126
    :pswitch_data_188
    .packed-switch 0x0
        :pswitch_ac
        :pswitch_10f
    .end packed-switch
.end method
