.class public interface abstract Lcom/android/internal/pantech/led/ILedManager;
.super Ljava/lang/Object;
.source "ILedManager.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/pantech/led/ILedManager$Stub;
    }
.end annotation


# virtual methods
.method public abstract postEvent(Lcom/android/internal/pantech/led/LedInfo;ILandroid/os/IBinder;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract removeEvent(ILandroid/os/IBinder;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
