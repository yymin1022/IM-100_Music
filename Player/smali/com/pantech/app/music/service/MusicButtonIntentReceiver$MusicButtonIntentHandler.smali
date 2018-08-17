.class public Lcom/pantech/app/music/service/MusicButtonIntentReceiver$MusicButtonIntentHandler;
.super Landroid/os/Handler;
.source "MusicButtonIntentReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/music/service/MusicButtonIntentReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MusicButtonIntentHandler"
.end annotation


# instance fields
.field mIsDoubleClickHeadsetHook:Z

.field mIsDownKeyEvent:Z

.field mIsPreviousHeadsetHook:Z

.field mIsRPTProcess:Z

.field mKeycode:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 83
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 84
    iput v0, p0, Lcom/pantech/app/music/service/MusicButtonIntentReceiver$MusicButtonIntentHandler;->mKeycode:I

    .line 85
    iput-boolean v0, p0, Lcom/pantech/app/music/service/MusicButtonIntentReceiver$MusicButtonIntentHandler;->mIsDownKeyEvent:Z

    .line 86
    iput-boolean v0, p0, Lcom/pantech/app/music/service/MusicButtonIntentReceiver$MusicButtonIntentHandler;->mIsPreviousHeadsetHook:Z

    .line 87
    iput-boolean v0, p0, Lcom/pantech/app/music/service/MusicButtonIntentReceiver$MusicButtonIntentHandler;->mIsDoubleClickHeadsetHook:Z

    .line 88
    iput-boolean v0, p0, Lcom/pantech/app/music/service/MusicButtonIntentReceiver$MusicButtonIntentHandler;->mIsRPTProcess:Z

    return-void
.end method


# virtual methods
.method public cancelKeyEvent()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 91
    iput v0, p0, Lcom/pantech/app/music/service/MusicButtonIntentReceiver$MusicButtonIntentHandler;->mKeycode:I

    .line 92
    iput-boolean v0, p0, Lcom/pantech/app/music/service/MusicButtonIntentReceiver$MusicButtonIntentHandler;->mIsDownKeyEvent:Z

    .line 93
    iput-boolean v0, p0, Lcom/pantech/app/music/service/MusicButtonIntentReceiver$MusicButtonIntentHandler;->mIsRPTProcess:Z

    .line 94
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 11
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/16 v8, 0x4f

    const/4 v7, 0x5

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 99
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 101
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_110

    .line 186
    :cond_d
    :goto_d
    return-void

    .line 103
    :pswitch_e
    iget v2, p1, Landroid/os/Message;->arg1:I

    iput v2, p0, Lcom/pantech/app/music/service/MusicButtonIntentReceiver$MusicButtonIntentHandler;->mKeycode:I

    .line 104
    const-string v2, "MusicButtonIntentReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ACTION DOWN keycode["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/pantech/app/music/service/MusicButtonIntentReceiver$MusicButtonIntentHandler;->mKeycode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pantech/app/music/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    iget v2, p1, Landroid/os/Message;->arg2:I

    if-ne v2, v5, :cond_42

    .line 108
    iput-boolean v5, p0, Lcom/pantech/app/music/service/MusicButtonIntentReceiver$MusicButtonIntentHandler;->mIsDownKeyEvent:Z

    .line 110
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, v7, v2}, Lcom/pantech/app/music/service/MusicButtonIntentReceiver$MusicButtonIntentHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 111
    .local v1, "msg1":Landroid/os/Message;
    iget v2, p0, Lcom/pantech/app/music/service/MusicButtonIntentReceiver$MusicButtonIntentHandler;->mKeycode:I

    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 112
    const-wide/16 v2, 0x578

    invoke-virtual {p0, v1, v2, v3}, Lcom/pantech/app/music/service/MusicButtonIntentReceiver$MusicButtonIntentHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_d

    .line 116
    .end local v1    # "msg1":Landroid/os/Message;
    :cond_42
    iget v2, p1, Landroid/os/Message;->arg2:I

    if-nez v2, :cond_d

    .line 117
    iput-boolean v6, p0, Lcom/pantech/app/music/service/MusicButtonIntentReceiver$MusicButtonIntentHandler;->mIsDownKeyEvent:Z

    goto :goto_d

    .line 123
    :pswitch_49
    const-string v2, "MusicButtonIntentReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ACTION UP keycode["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/pantech/app/music/service/MusicButtonIntentReceiver$MusicButtonIntentHandler;->mKeycode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] isDownKeyEvent["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/pantech/app/music/service/MusicButtonIntentReceiver$MusicButtonIntentHandler;->mIsDownKeyEvent:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pantech/app/music/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    iget v2, p1, Landroid/os/Message;->arg1:I

    const/16 v3, 0x11b

    if-ne v2, v3, :cond_7f

    .line 125
    iget v2, p1, Landroid/os/Message;->arg1:I

    iput v2, p0, Lcom/pantech/app/music/service/MusicButtonIntentReceiver$MusicButtonIntentHandler;->mKeycode:I

    .line 127
    :cond_7f
    iget-boolean v2, p0, Lcom/pantech/app/music/service/MusicButtonIntentReceiver$MusicButtonIntentHandler;->mIsDownKeyEvent:Z

    if-nez v2, :cond_b3

    iget v2, p0, Lcom/pantech/app/music/service/MusicButtonIntentReceiver$MusicButtonIntentHandler;->mKeycode:I

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-ne v2, v3, :cond_b3

    .line 130
    iget v2, p1, Landroid/os/Message;->arg1:I

    if-ne v2, v8, :cond_a9

    .line 131
    iget-boolean v2, p0, Lcom/pantech/app/music/service/MusicButtonIntentReceiver$MusicButtonIntentHandler;->mIsPreviousHeadsetHook:Z

    if-nez v2, :cond_a6

    .line 133
    const/4 v2, 0x3

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, v2, v3}, Lcom/pantech/app/music/service/MusicButtonIntentReceiver$MusicButtonIntentHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 134
    .restart local v1    # "msg1":Landroid/os/Message;
    const-wide/16 v2, 0x190

    invoke-virtual {p0, v1, v2, v3}, Lcom/pantech/app/music/service/MusicButtonIntentReceiver$MusicButtonIntentHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 136
    iput-boolean v5, p0, Lcom/pantech/app/music/service/MusicButtonIntentReceiver$MusicButtonIntentHandler;->mIsPreviousHeadsetHook:Z

    .line 137
    iput-boolean v6, p0, Lcom/pantech/app/music/service/MusicButtonIntentReceiver$MusicButtonIntentHandler;->mIsDoubleClickHeadsetHook:Z

    .line 149
    .end local v1    # "msg1":Landroid/os/Message;
    :cond_a1
    :goto_a1
    invoke-virtual {p0}, Lcom/pantech/app/music/service/MusicButtonIntentReceiver$MusicButtonIntentHandler;->cancelKeyEvent()V

    goto/16 :goto_d

    .line 140
    :cond_a6
    iput-boolean v5, p0, Lcom/pantech/app/music/service/MusicButtonIntentReceiver$MusicButtonIntentHandler;->mIsDoubleClickHeadsetHook:Z

    goto :goto_a1

    .line 143
    :cond_a9
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/content/Context;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-static {v2, v3}, Lcom/pantech/app/music/service/MusicButtonIntentReceiver;->access$000(Landroid/content/Context;I)V

    goto :goto_a1

    .line 145
    :cond_b3
    iget-boolean v2, p0, Lcom/pantech/app/music/service/MusicButtonIntentReceiver$MusicButtonIntentHandler;->mIsDownKeyEvent:Z

    if-ne v2, v5, :cond_a1

    iget-boolean v2, p0, Lcom/pantech/app/music/service/MusicButtonIntentReceiver$MusicButtonIntentHandler;->mIsRPTProcess:Z

    if-nez v2, :cond_a1

    .line 146
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/content/Context;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-static {v2, v3}, Lcom/pantech/app/music/service/MusicButtonIntentReceiver;->access$000(Landroid/content/Context;I)V

    goto :goto_a1

    .line 154
    :pswitch_c5
    iget-boolean v2, p0, Lcom/pantech/app/music/service/MusicButtonIntentReceiver$MusicButtonIntentHandler;->mIsDoubleClickHeadsetHook:Z

    if-eqz v2, :cond_d8

    .line 155
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/content/Context;

    const/16 v3, 0x57

    invoke-static {v2, v3}, Lcom/pantech/app/music/service/MusicButtonIntentReceiver;->access$000(Landroid/content/Context;I)V

    .line 161
    :goto_d2
    iput-boolean v6, p0, Lcom/pantech/app/music/service/MusicButtonIntentReceiver$MusicButtonIntentHandler;->mIsPreviousHeadsetHook:Z

    .line 162
    iput-boolean v6, p0, Lcom/pantech/app/music/service/MusicButtonIntentReceiver$MusicButtonIntentHandler;->mIsDoubleClickHeadsetHook:Z

    goto/16 :goto_d

    .line 157
    :cond_d8
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/content/Context;

    invoke-static {v2, v8}, Lcom/pantech/app/music/service/MusicButtonIntentReceiver;->access$000(Landroid/content/Context;I)V

    goto :goto_d2

    .line 167
    :pswitch_e0
    iget-boolean v2, p0, Lcom/pantech/app/music/service/MusicButtonIntentReceiver$MusicButtonIntentHandler;->mIsDownKeyEvent:Z

    if-ne v2, v5, :cond_d

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p0, Lcom/pantech/app/music/service/MusicButtonIntentReceiver$MusicButtonIntentHandler;->mKeycode:I

    if-ne v2, v3, :cond_d

    .line 168
    iput-boolean v5, p0, Lcom/pantech/app/music/service/MusicButtonIntentReceiver$MusicButtonIntentHandler;->mIsRPTProcess:Z

    .line 169
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/content/Context;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-static {v2, v3}, Lcom/pantech/app/music/service/MusicButtonIntentReceiver;->access$100(Landroid/content/Context;I)V

    .line 171
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, v7, v2}, Lcom/pantech/app/music/service/MusicButtonIntentReceiver$MusicButtonIntentHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 172
    .local v0, "loopMsg":Landroid/os/Message;
    iget v2, p1, Landroid/os/Message;->arg1:I

    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 173
    const-wide/16 v2, 0x12c

    invoke-virtual {p0, v0, v2, v3}, Lcom/pantech/app/music/service/MusicButtonIntentReceiver$MusicButtonIntentHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_d

    .line 179
    .end local v0    # "loopMsg":Landroid/os/Message;
    :pswitch_106
    invoke-virtual {p0}, Lcom/pantech/app/music/service/MusicButtonIntentReceiver$MusicButtonIntentHandler;->cancelKeyEvent()V

    goto/16 :goto_d

    .line 183
    :pswitch_10b
    invoke-static {}, Lcom/pantech/app/music/service/MusicButtonIntentReceiver;->access$200()V

    goto/16 :goto_d

    .line 101
    :pswitch_data_110
    .packed-switch 0x1
        :pswitch_e
        :pswitch_49
        :pswitch_c5
        :pswitch_10b
        :pswitch_e0
        :pswitch_106
    .end packed-switch
.end method
