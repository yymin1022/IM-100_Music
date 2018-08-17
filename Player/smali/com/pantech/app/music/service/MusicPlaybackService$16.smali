.class Lcom/pantech/app/music/service/MusicPlaybackService$16;
.super Landroid/content/BroadcastReceiver;
.source "MusicPlaybackService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/app/music/service/MusicPlaybackService;->registerA2dpServiceListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/music/service/MusicPlaybackService;


# direct methods
.method constructor <init>(Lcom/pantech/app/music/service/MusicPlaybackService;)V
    .registers 2

    .prologue
    .line 1463
    iput-object p1, p0, Lcom/pantech/app/music/service/MusicPlaybackService$16;->this$0:Lcom/pantech/app/music/service/MusicPlaybackService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 20
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1466
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 1467
    .local v2, "action":Ljava/lang/String;
    const-string v13, "command"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1468
    .local v6, "cmd":Ljava/lang/String;
    const-string v13, "MusicPlaybackService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "registerA2dpServiceListener() action : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " / cmd : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/pantech/app/music/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1469
    const-string v13, "com.qualcomm.music.playstatusrequest"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_40

    .line 1470
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/pantech/app/music/service/MusicPlaybackService$16;->this$0:Lcom/pantech/app/music/service/MusicPlaybackService;

    const-string v14, "com.qualcomm.music.playstatusresponse"

    invoke-static {v13, v14}, Lcom/pantech/app/music/service/MusicPlaybackService;->access$200(Lcom/pantech/app/music/service/MusicPlaybackService;Ljava/lang/String;)V

    .line 1549
    :cond_3f
    :goto_3f
    return-void

    .line 1471
    :cond_40
    const-string v13, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_e7

    .line 1473
    const-string v13, "android.bluetooth.profile.extra.STATE"

    const/4 v14, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    .line 1474
    .local v10, "state":I
    const/4 v13, 0x2

    if-eq v10, v13, :cond_56

    if-nez v10, :cond_3f

    .line 1475
    :cond_56
    const-string v13, "MusicPlaybackService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "registerA2dpServiceListener()  BluetoothA2dp.ACTION_CONNECTION_STATE_CHANGED  state : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/pantech/app/music/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1476
    const/4 v13, 0x2

    if-ne v10, v13, :cond_d6

    .line 1477
    const/4 v13, 0x1

    invoke-static {v13}, Lcom/pantech/app/music/service/MultiPlayer;->setIsBTConnection(Z)V

    .line 1478
    invoke-static {}, Lcom/pantech/app/music/common/ModelInfo;->useLastConnection()Z

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_81

    .line 1479
    const/4 v13, 0x2

    const/4 v14, 0x1

    invoke-static {v13, v14}, Lcom/pantech/app/music/service/MultiPlayer;->setLastConnection(IZ)V

    .line 1488
    :cond_81
    :goto_81
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/pantech/app/music/service/MusicPlaybackService$16;->this$0:Lcom/pantech/app/music/service/MusicPlaybackService;

    invoke-static {v13}, Lcom/pantech/app/music/service/MusicPlaybackService;->access$1100(Lcom/pantech/app/music/service/MusicPlaybackService;)Lcom/pantech/app/music/service/MultiPlayer;

    move-result-object v13

    invoke-virtual {v13}, Lcom/pantech/app/music/service/MultiPlayer;->isOpenSuccess()Z

    move-result v13

    if-eqz v13, :cond_3f

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/pantech/app/music/service/MusicPlaybackService$16;->this$0:Lcom/pantech/app/music/service/MusicPlaybackService;

    invoke-static {v13}, Lcom/pantech/app/music/service/MusicPlaybackService;->access$1300(Lcom/pantech/app/music/service/MusicPlaybackService;)Lcom/pantech/app/music/service/MusicQueue;

    move-result-object v13

    invoke-virtual {v13}, Lcom/pantech/app/music/service/MusicQueue;->getItem()Lcom/pantech/app/music/list/MusicItemInfo;

    move-result-object v13

    invoke-virtual {v13}, Lcom/pantech/app/music/list/MusicItemInfo;->getData()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/pantech/app/music/utils/ContentUtils;->isFLACFileType(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_3f

    .line 1489
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/pantech/app/music/service/MusicPlaybackService$16;->this$0:Lcom/pantech/app/music/service/MusicPlaybackService;

    invoke-static {v13}, Lcom/pantech/app/music/service/MusicPlaybackService;->access$1100(Lcom/pantech/app/music/service/MusicPlaybackService;)Lcom/pantech/app/music/service/MultiPlayer;

    move-result-object v13

    invoke-virtual {v13}, Lcom/pantech/app/music/service/MultiPlayer;->position()J

    move-result-wide v8

    .line 1490
    .local v8, "pos":J
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/pantech/app/music/service/MusicPlaybackService$16;->this$0:Lcom/pantech/app/music/service/MusicPlaybackService;

    invoke-static {v13}, Lcom/pantech/app/music/service/MusicPlaybackService;->access$1100(Lcom/pantech/app/music/service/MusicPlaybackService;)Lcom/pantech/app/music/service/MultiPlayer;

    move-result-object v13

    invoke-virtual {v13}, Lcom/pantech/app/music/service/MultiPlayer;->isPlaying()Z

    move-result v12

    .line 1491
    .local v12, "wasPlaying":Z
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/pantech/app/music/service/MusicPlaybackService$16;->this$0:Lcom/pantech/app/music/service/MusicPlaybackService;

    invoke-static {v13}, Lcom/pantech/app/music/service/MusicPlaybackService;->access$1000(Lcom/pantech/app/music/service/MusicPlaybackService;)V

    .line 1492
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/pantech/app/music/service/MusicPlaybackService$16;->this$0:Lcom/pantech/app/music/service/MusicPlaybackService;

    invoke-virtual {v13, v8, v9}, Lcom/pantech/app/music/service/MusicPlaybackService;->seek(J)J

    .line 1493
    if-eqz v12, :cond_3f

    .line 1494
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/pantech/app/music/service/MusicPlaybackService$16;->this$0:Lcom/pantech/app/music/service/MusicPlaybackService;

    invoke-virtual {v13}, Lcom/pantech/app/music/service/MusicPlaybackService;->play()V

    goto/16 :goto_3f

    .line 1482
    .end local v8    # "pos":J
    .end local v12    # "wasPlaying":Z
    :cond_d6
    const/4 v13, 0x0

    invoke-static {v13}, Lcom/pantech/app/music/service/MultiPlayer;->setIsBTConnection(Z)V

    .line 1483
    invoke-static {}, Lcom/pantech/app/music/common/ModelInfo;->useLastConnection()Z

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_81

    .line 1484
    const/4 v13, 0x2

    const/4 v14, 0x0

    invoke-static {v13, v14}, Lcom/pantech/app/music/service/MultiPlayer;->setLastConnection(IZ)V

    goto :goto_81

    .line 1500
    .end local v10    # "state":I
    :cond_e7
    const-string v13, "org.codeaurora.music.playersettingsrequest"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1be

    .line 1501
    const-string v13, "get"

    invoke-virtual {v13, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1a5

    .line 1502
    const-string v13, "commandExtra"

    const/16 v14, 0xff

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 1504
    .local v7, "getCommand":I
    const-string v13, "MusicPlaybackService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "registerA2dpServiceListener cmd = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", getCommand = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1508
    packed-switch v7, :pswitch_data_1d0

    .line 1537
    const-string v13, "MusicPlaybackService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "invalid getCommand"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/pantech/app/music/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3f

    .line 1510
    :pswitch_140
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/pantech/app/music/service/MusicPlaybackService$16;->this$0:Lcom/pantech/app/music/service/MusicPlaybackService;

    const-string v14, "org.codeaurora.music.playersettingsresponse"

    invoke-static {v13, v14}, Lcom/pantech/app/music/service/MusicPlaybackService;->access$3500(Lcom/pantech/app/music/service/MusicPlaybackService;Ljava/lang/String;)V

    goto/16 :goto_3f

    .line 1513
    :pswitch_14b
    const-string v13, "Attribute"

    const/16 v14, 0x7f

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getByteExtra(Ljava/lang/String;B)B

    move-result v5

    .line 1516
    .local v5, "attribute":B
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/pantech/app/music/service/MusicPlaybackService$16;->this$0:Lcom/pantech/app/music/service/MusicPlaybackService;

    const-string v14, "org.codeaurora.music.playersettingsresponse"

    invoke-static {v13, v14, v5}, Lcom/pantech/app/music/service/MusicPlaybackService;->access$3600(Lcom/pantech/app/music/service/MusicPlaybackService;Ljava/lang/String;B)V

    goto/16 :goto_3f

    .line 1519
    .end local v5    # "attribute":B
    :pswitch_160
    const-string v13, "Attributes"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v3

    .line 1521
    .local v3, "attrIds":[B
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/pantech/app/music/service/MusicPlaybackService$16;->this$0:Lcom/pantech/app/music/service/MusicPlaybackService;

    const-string v14, "org.codeaurora.music.playersettingsresponse"

    invoke-static {v13, v14, v3}, Lcom/pantech/app/music/service/MusicPlaybackService;->access$3700(Lcom/pantech/app/music/service/MusicPlaybackService;Ljava/lang/String;[B)V

    goto/16 :goto_3f

    .line 1524
    .end local v3    # "attrIds":[B
    :pswitch_173
    const-string v13, "Attribute"

    const/16 v14, 0x7f

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getByteExtra(Ljava/lang/String;B)B

    move-result v5

    .line 1527
    .restart local v5    # "attribute":B
    const-string v13, "Values"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v11

    .line 1529
    .local v11, "valIds":[B
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/pantech/app/music/service/MusicPlaybackService$16;->this$0:Lcom/pantech/app/music/service/MusicPlaybackService;

    const-string v14, "org.codeaurora.music.playersettingsresponse"

    invoke-static {v13, v14, v5, v11}, Lcom/pantech/app/music/service/MusicPlaybackService;->access$3800(Lcom/pantech/app/music/service/MusicPlaybackService;Ljava/lang/String;I[B)V

    goto/16 :goto_3f

    .line 1533
    .end local v5    # "attribute":B
    .end local v11    # "valIds":[B
    :pswitch_190
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/pantech/app/music/service/MusicPlaybackService$16;->this$0:Lcom/pantech/app/music/service/MusicPlaybackService;

    const-string v14, "org.codeaurora.music.playersettingsresponse"

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/pantech/app/music/service/MusicPlaybackService$16;->this$0:Lcom/pantech/app/music/service/MusicPlaybackService;

    invoke-static {v15}, Lcom/pantech/app/music/service/MusicPlaybackService;->access$3900(Lcom/pantech/app/music/service/MusicPlaybackService;)Ljava/util/HashMap;

    move-result-object v15

    const/16 v16, 0x4

    invoke-virtual/range {v13 .. v16}, Lcom/pantech/app/music/service/MusicPlaybackService;->notifyAttributeValues(Ljava/lang/String;Ljava/util/HashMap;I)V

    goto/16 :goto_3f

    .line 1540
    .end local v7    # "getCommand":I
    :cond_1a5
    const-string v13, "set"

    invoke-virtual {v13, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3f

    .line 1541
    const-string v13, "AttribValuePairs"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v4

    .line 1543
    .local v4, "attribValuePairs":[B
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/pantech/app/music/service/MusicPlaybackService$16;->this$0:Lcom/pantech/app/music/service/MusicPlaybackService;

    invoke-static {v13, v4}, Lcom/pantech/app/music/service/MusicPlaybackService;->access$4000(Lcom/pantech/app/music/service/MusicPlaybackService;[B)V

    goto/16 :goto_3f

    .line 1545
    .end local v4    # "attribValuePairs":[B
    :cond_1be
    const-string v13, "org.codeaurora.music.setaddressedplayer"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3f

    .line 1546
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/pantech/app/music/service/MusicPlaybackService$16;->this$0:Lcom/pantech/app/music/service/MusicPlaybackService;

    invoke-virtual {v13}, Lcom/pantech/app/music/service/MusicPlaybackService;->play()V

    goto/16 :goto_3f

    .line 1508
    nop

    :pswitch_data_1d0
    .packed-switch 0x0
        :pswitch_140
        :pswitch_14b
        :pswitch_160
        :pswitch_173
        :pswitch_190
    .end packed-switch
.end method
