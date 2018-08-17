.class public Lcom/android/internal/pantech/led/LedManager;
.super Ljava/lang/Object;
.source "LedManager.java"


# static fields
.field public static LED_FLAG_REPLACE:I = 0x0

.field public static LED_FLAG_UNDEFINED:I = 0x0

.field private static final TAG:Ljava/lang/String; = "LedManager"

.field private static sService:Lcom/android/internal/pantech/led/ILedManager;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mToken:Landroid/os/IBinder;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 27
    const/4 v0, 0x1

    sput v0, Lcom/android/internal/pantech/led/LedManager;->LED_FLAG_REPLACE:I

    .line 32
    const/4 v0, 0x2

    sput v0, Lcom/android/internal/pantech/led/LedManager;->LED_FLAG_UNDEFINED:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/android/internal/pantech/led/LedManager;->mToken:Landroid/os/IBinder;

    .line 39
    iput-object p1, p0, Lcom/android/internal/pantech/led/LedManager;->mContext:Landroid/content/Context;

    .line 40
    return-void
.end method

.method private static getService()Lcom/android/internal/pantech/led/ILedManager;
    .registers 2

    .prologue
    .line 46
    sget-object v1, Lcom/android/internal/pantech/led/LedManager;->sService:Lcom/android/internal/pantech/led/ILedManager;

    if-eqz v1, :cond_7

    .line 47
    sget-object v1, Lcom/android/internal/pantech/led/LedManager;->sService:Lcom/android/internal/pantech/led/ILedManager;

    .line 51
    .local v0, "b":Landroid/os/IBinder;
    :goto_6
    return-object v1

    .line 49
    .end local v0    # "b":Landroid/os/IBinder;
    :cond_7
    const-string v1, "led"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 50
    .restart local v0    # "b":Landroid/os/IBinder;
    invoke-static {v0}, Lcom/android/internal/pantech/led/ILedManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/pantech/led/ILedManager;

    move-result-object v1

    sput-object v1, Lcom/android/internal/pantech/led/LedManager;->sService:Lcom/android/internal/pantech/led/ILedManager;

    .line 51
    sget-object v1, Lcom/android/internal/pantech/led/LedManager;->sService:Lcom/android/internal/pantech/led/ILedManager;

    goto :goto_6
.end method


# virtual methods
.method public postEvent(Lcom/android/internal/pantech/led/LedInfo;I)V
    .registers 8
    .param p1, "ledInfo"    # Lcom/android/internal/pantech/led/LedInfo;
    .param p2, "flag"    # I

    .prologue
    .line 55
    invoke-static {}, Lcom/android/internal/pantech/led/LedManager;->getService()Lcom/android/internal/pantech/led/ILedManager;

    move-result-object v1

    .line 57
    .local v1, "service":Lcom/android/internal/pantech/led/ILedManager;
    :try_start_4
    sget v2, Lcom/android/internal/pantech/led/LedManager;->LED_FLAG_REPLACE:I

    iget-object v3, p0, Lcom/android/internal/pantech/led/LedManager;->mToken:Landroid/os/IBinder;

    invoke-interface {v1, p1, v2, v3}, Lcom/android/internal/pantech/led/ILedManager;->postEvent(Lcom/android/internal/pantech/led/LedInfo;ILandroid/os/IBinder;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_b} :catch_c
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_b} :catch_26

    .line 63
    :goto_b
    return-void

    .line 58
    :catch_c
    move-exception v0

    .line 59
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "LedManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Dead object in postEvent"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .line 60
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_26
    move-exception v0

    .line 61
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v2, "LedManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NullPointerException in postEvent "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b
.end method

.method public removeEvent(I)V
    .registers 7
    .param p1, "appId"    # I

    .prologue
    .line 66
    invoke-static {}, Lcom/android/internal/pantech/led/LedManager;->getService()Lcom/android/internal/pantech/led/ILedManager;

    move-result-object v1

    .line 68
    .local v1, "service":Lcom/android/internal/pantech/led/ILedManager;
    :try_start_4
    iget-object v2, p0, Lcom/android/internal/pantech/led/LedManager;->mToken:Landroid/os/IBinder;

    invoke-interface {v1, p1, v2}, Lcom/android/internal/pantech/led/ILedManager;->removeEvent(ILandroid/os/IBinder;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_9} :catch_24

    .line 74
    :goto_9
    return-void

    .line 69
    :catch_a
    move-exception v0

    .line 70
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "LedManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Dead object in removeEvent"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 71
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_24
    move-exception v0

    .line 72
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v2, "LedManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NullPointerException in removeEvent "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9
.end method
