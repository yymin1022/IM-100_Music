.class Lcom/pantech/app/music/drm/MusicDrm$1;
.super Ljava/lang/Thread;
.source "MusicDrm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/app/music/drm/MusicDrm;->installROforDRM()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/music/drm/MusicDrm;


# direct methods
.method constructor <init>(Lcom/pantech/app/music/drm/MusicDrm;)V
    .registers 2

    .prologue
    .line 100
    iput-object p1, p0, Lcom/pantech/app/music/drm/MusicDrm$1;->this$0:Lcom/pantech/app/music/drm/MusicDrm;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 16

    .prologue
    .line 104
    monitor-enter p0

    .line 106
    :try_start_1
    invoke-super {p0}, Ljava/lang/Thread;->run()V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_8c

    .line 109
    const-wide/16 v4, 0x1f4

    :try_start_6
    invoke-static {v4, v5}, Lcom/pantech/app/music/drm/MusicDrm$1;->sleep(J)V
    :try_end_9
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_9} :catch_fb
    .catchall {:try_start_6 .. :try_end_9} :catchall_8c

    .line 114
    :goto_9
    const/4 v10, 0x0

    .line 115
    .local v10, "html_str":Ljava/lang/String;
    :try_start_a
    new-instance v7, Ljava/lang/StringBuffer;

    const-string v0, ""

    invoke-direct {v7, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 116
    .local v7, "cid":Ljava/lang/StringBuffer;
    new-instance v13, Ljava/lang/StringBuffer;

    const-string v0, ""

    invoke-direct {v13, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 117
    .local v13, "roid":Ljava/lang/StringBuffer;
    new-instance v8, Ljava/lang/StringBuffer;

    const-string v0, ""

    invoke-direct {v8, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 119
    .local v8, "devid":Ljava/lang/StringBuffer;
    iget-object v0, p0, Lcom/pantech/app/music/drm/MusicDrm$1;->this$0:Lcom/pantech/app/music/drm/MusicDrm;

    invoke-static {v0}, Lcom/pantech/app/music/drm/MusicDrm;->access$000(Lcom/pantech/app/music/drm/MusicDrm;)Lcom/pantech/app/music/drm/LGUDRMClient$Operation;

    move-result-object v2

    .line 120
    .local v2, "operation":Lcom/pantech/app/music/drm/LGUDRMClient$Operation;
    iget-object v0, p0, Lcom/pantech/app/music/drm/MusicDrm$1;->this$0:Lcom/pantech/app/music/drm/MusicDrm;

    new-instance v3, Lcom/pantech/app/music/drm/LGUDRMClient;

    invoke-direct {v3}, Lcom/pantech/app/music/drm/LGUDRMClient;-><init>()V

    invoke-static {v0, v3}, Lcom/pantech/app/music/drm/MusicDrm;->access$102(Lcom/pantech/app/music/drm/MusicDrm;Lcom/pantech/app/music/drm/LGUDRMClient;)Lcom/pantech/app/music/drm/LGUDRMClient;

    .line 122
    const/4 v12, -0x1

    .local v12, "ret":I
    const/4 v14, 0x0

    .line 123
    .local v14, "server_check":I
    const/4 v11, 0x0

    .line 124
    .local v11, "installRO":Z
    iget-object v0, p0, Lcom/pantech/app/music/drm/MusicDrm$1;->this$0:Lcom/pantech/app/music/drm/MusicDrm;

    invoke-static {v0}, Lcom/pantech/app/music/drm/MusicDrm;->access$200(Lcom/pantech/app/music/drm/MusicDrm;)I

    move-result v1

    .line 126
    .local v1, "drm_server_idx":I
    :cond_38
    :goto_38
    if-nez v11, :cond_58

    .line 128
    const/4 v12, -0x1

    .line 129
    const/4 v0, 0x0

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    invoke-virtual {v7, v0, v3}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 130
    const/4 v0, 0x0

    invoke-virtual {v13}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    invoke-virtual {v13, v0, v3}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 131
    const/4 v0, 0x0

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    invoke-virtual {v8, v0, v3}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 133
    add-int/lit8 v14, v14, 0x1

    .line 134
    const/4 v0, 0x5

    if-le v14, v0, :cond_66

    .line 176
    :cond_58
    :goto_58
    iget-object v0, p0, Lcom/pantech/app/music/drm/MusicDrm$1;->this$0:Lcom/pantech/app/music/drm/MusicDrm;

    const/4 v3, 0x0

    invoke-static {v0, v3}, Lcom/pantech/app/music/drm/MusicDrm;->access$702(Lcom/pantech/app/music/drm/MusicDrm;Z)Z

    .line 177
    iget-object v0, p0, Lcom/pantech/app/music/drm/MusicDrm$1;->this$0:Lcom/pantech/app/music/drm/MusicDrm;

    const/4 v3, 0x0

    invoke-static {v0, v12, v3}, Lcom/pantech/app/music/drm/MusicDrm;->access$800(Lcom/pantech/app/music/drm/MusicDrm;IZ)V

    .line 178
    monitor-exit p0

    .line 179
    :goto_65
    return-void

    .line 137
    :cond_66
    iget-object v0, p0, Lcom/pantech/app/music/drm/MusicDrm$1;->this$0:Lcom/pantech/app/music/drm/MusicDrm;

    invoke-static {v0}, Lcom/pantech/app/music/drm/MusicDrm;->access$400(Lcom/pantech/app/music/drm/MusicDrm;)Lcom/pantech/app/music/drm/LGUDRMInterface;

    move-result-object v0

    iget-object v3, p0, Lcom/pantech/app/music/drm/MusicDrm$1;->this$0:Lcom/pantech/app/music/drm/MusicDrm;

    invoke-static {v3}, Lcom/pantech/app/music/drm/MusicDrm;->access$300(Lcom/pantech/app/music/drm/MusicDrm;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v7, v8, v13}, Lcom/pantech/app/music/drm/LGUDRMInterface;->DRMCheckROnGetInfo(Ljava/lang/String;Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;)I

    move-result v12

    .line 138
    if-nez v12, :cond_81

    .line 139
    const-string v0, "MusicDrm"

    const-string v3, "=>ret : LGUDRMInterface.ERROR_NONE"

    invoke-static {v0, v3}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    const/4 v11, 0x1

    .line 141
    goto :goto_58

    .line 144
    :cond_81
    const/4 v0, -0x1

    if-ne v12, v0, :cond_8f

    .line 145
    const-string v0, "MusicDrm"

    const-string v3, "=>ret : LGUDRMInterface.ERROR_CID_FAIL"

    invoke-static {v0, v3}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_58

    .line 178
    .end local v1    # "drm_server_idx":I
    .end local v2    # "operation":Lcom/pantech/app/music/drm/LGUDRMClient$Operation;
    .end local v7    # "cid":Ljava/lang/StringBuffer;
    .end local v8    # "devid":Ljava/lang/StringBuffer;
    .end local v10    # "html_str":Ljava/lang/String;
    .end local v11    # "installRO":Z
    .end local v12    # "ret":I
    .end local v13    # "roid":Ljava/lang/StringBuffer;
    .end local v14    # "server_check":I
    :catchall_8c
    move-exception v0

    monitor-exit p0
    :try_end_8e
    .catchall {:try_start_a .. :try_end_8e} :catchall_8c

    throw v0

    .line 150
    .restart local v1    # "drm_server_idx":I
    .restart local v2    # "operation":Lcom/pantech/app/music/drm/LGUDRMClient$Operation;
    .restart local v7    # "cid":Ljava/lang/StringBuffer;
    .restart local v8    # "devid":Ljava/lang/StringBuffer;
    .restart local v10    # "html_str":Ljava/lang/String;
    .restart local v11    # "installRO":Z
    .restart local v12    # "ret":I
    .restart local v13    # "roid":Ljava/lang/StringBuffer;
    .restart local v14    # "server_check":I
    :cond_8f
    :try_start_8f
    iget-object v0, p0, Lcom/pantech/app/music/drm/MusicDrm$1;->this$0:Lcom/pantech/app/music/drm/MusicDrm;

    invoke-static {v0}, Lcom/pantech/app/music/drm/MusicDrm;->access$100(Lcom/pantech/app/music/drm/MusicDrm;)Lcom/pantech/app/music/drm/LGUDRMClient;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/pantech/app/music/drm/LGUDRMClient;->SetDRMInfo(I)I

    .line 151
    iget-object v0, p0, Lcom/pantech/app/music/drm/MusicDrm$1;->this$0:Lcom/pantech/app/music/drm/MusicDrm;

    invoke-static {v0}, Lcom/pantech/app/music/drm/MusicDrm;->access$100(Lcom/pantech/app/music/drm/MusicDrm;)Lcom/pantech/app/music/drm/LGUDRMClient;

    move-result-object v0

    iget-object v3, p0, Lcom/pantech/app/music/drm/MusicDrm$1;->this$0:Lcom/pantech/app/music/drm/MusicDrm;

    invoke-static {v3}, Lcom/pantech/app/music/drm/MusicDrm;->access$500(Lcom/pantech/app/music/drm/MusicDrm;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v13}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Lcom/pantech/app/music/drm/LGUDRMClient;->GetHTML(ILcom/pantech/app/music/drm/LGUDRMClient$Operation;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 153
    iget-object v0, p0, Lcom/pantech/app/music/drm/MusicDrm$1;->this$0:Lcom/pantech/app/music/drm/MusicDrm;

    invoke-static {v0}, Lcom/pantech/app/music/drm/MusicDrm;->access$600(Lcom/pantech/app/music/drm/MusicDrm;)Z

    move-result v0

    if-eqz v0, :cond_c4

    .line 155
    iget-object v0, p0, Lcom/pantech/app/music/drm/MusicDrm$1;->this$0:Lcom/pantech/app/music/drm/MusicDrm;

    const/4 v3, 0x0

    invoke-static {v0, v3}, Lcom/pantech/app/music/drm/MusicDrm;->access$602(Lcom/pantech/app/music/drm/MusicDrm;Z)Z
    :try_end_c2
    .catch Ljava/lang/Exception; {:try_start_8f .. :try_end_c2} :catch_f1
    .catchall {:try_start_8f .. :try_end_c2} :catchall_8c

    .line 156
    :try_start_c2
    monitor-exit p0
    :try_end_c3
    .catchall {:try_start_c2 .. :try_end_c3} :catchall_8c

    goto :goto_65

    .line 162
    :cond_c4
    :try_start_c4
    iget-object v0, p0, Lcom/pantech/app/music/drm/MusicDrm$1;->this$0:Lcom/pantech/app/music/drm/MusicDrm;

    invoke-static {v0}, Lcom/pantech/app/music/drm/MusicDrm;->access$400(Lcom/pantech/app/music/drm/MusicDrm;)Lcom/pantech/app/music/drm/LGUDRMInterface;

    move-result-object v0

    invoke-virtual {v0, v10}, Lcom/pantech/app/music/drm/LGUDRMInterface;->DRMInstallRO(Ljava/lang/String;)I

    move-result v12

    .line 164
    if-eqz v12, :cond_38

    .line 165
    const-string v0, "MusicDrm"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "=>[LGU+_DRM] MusicPlaybackActivity::DRMInstallRO Fail !!! ret : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e8
    .catch Ljava/lang/Exception; {:try_start_c4 .. :try_end_e8} :catch_f1
    .catchall {:try_start_c4 .. :try_end_e8} :catchall_8c

    .line 166
    const/4 v0, -0x7

    if-eq v12, v0, :cond_38

    const/4 v0, -0x6

    if-eq v12, v0, :cond_38

    .line 167
    const/4 v11, 0x1

    goto/16 :goto_38

    .line 171
    :catch_f1
    move-exception v9

    .line 172
    .local v9, "e":Ljava/lang/Exception;
    :try_start_f2
    const-string v0, "MusicDrm"

    const-string v3, "=>Exception.... <InstallRO>"

    invoke-static {v0, v3}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_f9
    .catchall {:try_start_f2 .. :try_end_f9} :catchall_8c

    goto/16 :goto_38

    .line 111
    .end local v1    # "drm_server_idx":I
    .end local v2    # "operation":Lcom/pantech/app/music/drm/LGUDRMClient$Operation;
    .end local v7    # "cid":Ljava/lang/StringBuffer;
    .end local v8    # "devid":Ljava/lang/StringBuffer;
    .end local v9    # "e":Ljava/lang/Exception;
    .end local v10    # "html_str":Ljava/lang/String;
    .end local v11    # "installRO":Z
    .end local v12    # "ret":I
    .end local v13    # "roid":Ljava/lang/StringBuffer;
    .end local v14    # "server_check":I
    :catch_fb
    move-exception v0

    goto/16 :goto_9
.end method
