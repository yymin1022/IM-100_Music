.class Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService$3;
.super Ljava/lang/Object;
.source "AudioEffectManageService.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;


# direct methods
.method constructor <init>(Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;)V
    .registers 2

    .prologue
    .line 1500
    iput-object p1, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService$3;->this$0:Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .registers 10
    .param p1, "profile"    # I
    .param p2, "proxy"    # Landroid/bluetooth/BluetoothProfile;

    .prologue
    const/4 v6, 0x1

    .line 1503
    invoke-interface {p2}, Landroid/bluetooth/BluetoothProfile;->getConnectedDevices()Ljava/util/List;

    move-result-object v1

    .line 1504
    .local v1, "devices":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_52

    .line 1505
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_52

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 1506
    .local v0, "device":Landroid/bluetooth/BluetoothDevice;
    const-string v3, "VMusicFX_Service"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onServiceConnected : profile "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", device.getName() = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/pantech/app/musicfx/utils/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1507
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "STONE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_88

    .line 1508
    iget-object v3, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService$3;->this$0:Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;

    invoke-static {v3, v6}, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;->access$802(Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;Z)Z

    .line 1517
    .end local v0    # "device":Landroid/bluetooth/BluetoothDevice;
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_52
    iget-object v3, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService$3;->this$0:Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;

    invoke-static {v3}, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;->access$800(Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;)Z

    move-result v3

    if-eqz v3, :cond_5f

    .line 1518
    iget-object v3, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService$3;->this$0:Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;

    invoke-static {v3, v6}, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;->access$1000(Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;Z)V

    .line 1520
    :cond_5f
    const-string v3, "VMusicFX_Service"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onServiceConnected : profile "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mSTONEPluged = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService$3;->this$0:Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;

    invoke-static {v5}, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;->access$800(Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/pantech/app/musicfx/utils/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1521
    return-void

    .line 1511
    .restart local v0    # "device":Landroid/bluetooth/BluetoothDevice;
    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_88
    iget-object v3, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService$3;->this$0:Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;->access$802(Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;Z)Z

    goto :goto_f
.end method

.method public onServiceDisconnected(I)V
    .registers 5
    .param p1, "profile"    # I

    .prologue
    .line 1525
    const-string v0, "VMusicFX_Service"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceDisconnected : profile "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/musicfx/utils/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1526
    iget-object v0, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService$3;->this$0:Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;->access$802(Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;Z)Z

    .line 1527
    return-void
.end method
