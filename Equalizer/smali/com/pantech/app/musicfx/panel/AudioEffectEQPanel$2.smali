.class Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel$2;
.super Landroid/os/Handler;
.source "AudioEffectEQPanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;


# direct methods
.method constructor <init>(Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;)V
    .registers 2

    .prologue
    .line 207
    iput-object p1, p0, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel$2;->this$0:Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 211
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 213
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_18

    .line 220
    :goto_8
    return-void

    .line 216
    :pswitch_9
    const-string v0, "VMusicFX_EQP"

    const-string v1, "EQPanel main handler get msg: Release Item Lock !"

    invoke-static {v0, v1}, Lcom/pantech/app/musicfx/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    iget-object v0, p0, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel$2;->this$0:Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->access$1002(Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;Z)Z

    goto :goto_8

    .line 213
    nop

    :pswitch_data_18
    .packed-switch 0x1
        :pswitch_9
    .end packed-switch
.end method
