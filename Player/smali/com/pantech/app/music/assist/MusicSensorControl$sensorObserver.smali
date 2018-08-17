.class Lcom/pantech/app/music/assist/MusicSensorControl$sensorObserver;
.super Ljava/lang/Object;
.source "MusicSensorControl.java"

# interfaces
.implements Ljava/util/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/music/assist/MusicSensorControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "sensorObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/music/assist/MusicSensorControl;


# direct methods
.method private constructor <init>(Lcom/pantech/app/music/assist/MusicSensorControl;)V
    .registers 2

    .prologue
    .line 262
    iput-object p1, p0, Lcom/pantech/app/music/assist/MusicSensorControl$sensorObserver;->this$0:Lcom/pantech/app/music/assist/MusicSensorControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/pantech/app/music/assist/MusicSensorControl;Lcom/pantech/app/music/assist/MusicSensorControl$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/pantech/app/music/assist/MusicSensorControl;
    .param p2, "x1"    # Lcom/pantech/app/music/assist/MusicSensorControl$1;

    .prologue
    .line 262
    invoke-direct {p0, p1}, Lcom/pantech/app/music/assist/MusicSensorControl$sensorObserver;-><init>(Lcom/pantech/app/music/assist/MusicSensorControl;)V

    return-void
.end method


# virtual methods
.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .registers 5
    .param p1, "observable"    # Ljava/util/Observable;
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    .line 265
    iget-object v0, p0, Lcom/pantech/app/music/assist/MusicSensorControl$sensorObserver;->this$0:Lcom/pantech/app/music/assist/MusicSensorControl;

    invoke-static {v0}, Lcom/pantech/app/music/assist/MusicSensorControl;->access$700(Lcom/pantech/app/music/assist/MusicSensorControl;)I

    move-result v0

    invoke-static {v0}, Lcom/pantech/app/music/assist/MusicSensorControl;->access$602(I)I

    .line 266
    const-string v0, "MusicSensorControl"

    const-string v1, "sensorObserver:update()"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    iget-object v0, p0, Lcom/pantech/app/music/assist/MusicSensorControl$sensorObserver;->this$0:Lcom/pantech/app/music/assist/MusicSensorControl;

    invoke-static {v0}, Lcom/pantech/app/music/assist/MusicSensorControl;->access$800(Lcom/pantech/app/music/assist/MusicSensorControl;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 268
    iget-object v0, p0, Lcom/pantech/app/music/assist/MusicSensorControl$sensorObserver;->this$0:Lcom/pantech/app/music/assist/MusicSensorControl;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/pantech/app/music/assist/MusicSensorControl;->setShakeEnable(Z)V

    .line 272
    :goto_1e
    return-void

    .line 270
    :cond_1f
    iget-object v0, p0, Lcom/pantech/app/music/assist/MusicSensorControl$sensorObserver;->this$0:Lcom/pantech/app/music/assist/MusicSensorControl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/pantech/app/music/assist/MusicSensorControl;->setShakeEnable(Z)V

    goto :goto_1e
.end method
