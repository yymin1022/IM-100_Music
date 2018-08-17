.class public Landroid/media/audiofx/Exciter;
.super Landroid/media/audiofx/AudioEffect;
.source "Exciter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/audiofx/Exciter$1;,
        Landroid/media/audiofx/Exciter$Settings;,
        Landroid/media/audiofx/Exciter$BaseParameterListener;,
        Landroid/media/audiofx/Exciter$OnParameterChangeListener;
    }
.end annotation


# static fields
.field public static final PARAM_STRENGTH:I = 0x1

.field public static final PARAM_STRENGTH_SUPPORTED:I = 0x0

.field private static final TAG:Ljava/lang/String; = "Exciter"


# instance fields
.field private mBaseParamListener:Landroid/media/audiofx/Exciter$BaseParameterListener;

.field private mParamListener:Landroid/media/audiofx/Exciter$OnParameterChangeListener;

.field private final mParamListenerLock:Ljava/lang/Object;

.field private mStrengthSupported:Z


# direct methods
.method public constructor <init>(II)V
    .registers 9
    .param p1, "priority"    # I
    .param p2, "audioSession"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 89
    sget-object v3, Landroid/media/audiofx/Exciter;->EFFECT_TYPE_EXCITER:Ljava/util/UUID;

    sget-object v4, Landroid/media/audiofx/Exciter;->EFFECT_TYPE_NULL:Ljava/util/UUID;

    invoke-direct {p0, v3, v4, p1, p2}, Landroid/media/audiofx/AudioEffect;-><init>(Ljava/util/UUID;Ljava/util/UUID;II)V

    .line 55
    iput-boolean v1, p0, Landroid/media/audiofx/Exciter;->mStrengthSupported:Z

    .line 60
    iput-object v5, p0, Landroid/media/audiofx/Exciter;->mParamListener:Landroid/media/audiofx/Exciter$OnParameterChangeListener;

    .line 65
    iput-object v5, p0, Landroid/media/audiofx/Exciter;->mBaseParamListener:Landroid/media/audiofx/Exciter$BaseParameterListener;

    .line 70
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Landroid/media/audiofx/Exciter;->mParamListenerLock:Ljava/lang/Object;

    .line 91
    if-nez p2, :cond_20

    .line 92
    const-string v3, "Exciter"

    const-string v4, "WARNING: attaching a Exciter to global output mix is deprecated!"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    :cond_20
    new-array v0, v1, [I

    .line 96
    .local v0, "value":[I
    invoke-virtual {p0, v2, v0}, Landroid/media/audiofx/Exciter;->getParameter(I[I)I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/media/audiofx/Exciter;->checkStatus(I)V

    .line 97
    aget v3, v0, v2

    if-eqz v3, :cond_30

    :goto_2d
    iput-boolean v1, p0, Landroid/media/audiofx/Exciter;->mStrengthSupported:Z

    .line 98
    return-void

    :cond_30
    move v1, v2

    .line 97
    goto :goto_2d
.end method

.method static synthetic access$000(Landroid/media/audiofx/Exciter;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Landroid/media/audiofx/Exciter;

    .prologue
    .line 36
    iget-object v0, p0, Landroid/media/audiofx/Exciter;->mParamListenerLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Landroid/media/audiofx/Exciter;)Landroid/media/audiofx/Exciter$OnParameterChangeListener;
    .registers 2
    .param p0, "x0"    # Landroid/media/audiofx/Exciter;

    .prologue
    .line 36
    iget-object v0, p0, Landroid/media/audiofx/Exciter;->mParamListener:Landroid/media/audiofx/Exciter$OnParameterChangeListener;

    return-object v0
.end method


# virtual methods
.method public getProperties()Landroid/media/audiofx/Exciter$Settings;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 263
    new-instance v0, Landroid/media/audiofx/Exciter$Settings;

    invoke-direct {v0}, Landroid/media/audiofx/Exciter$Settings;-><init>()V

    .line 264
    .local v0, "settings":Landroid/media/audiofx/Exciter$Settings;
    new-array v1, v2, [S

    .line 265
    .local v1, "value":[S
    invoke-virtual {p0, v2, v1}, Landroid/media/audiofx/Exciter;->getParameter(I[S)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/media/audiofx/Exciter;->checkStatus(I)V

    .line 266
    const/4 v2, 0x0

    aget-short v2, v1, v2

    iput-short v2, v0, Landroid/media/audiofx/Exciter$Settings;->strength:S

    .line 267
    return-object v0
.end method

.method public getRoundedStrength()S
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 135
    new-array v0, v1, [S

    .line 136
    .local v0, "value":[S
    invoke-virtual {p0, v1, v0}, Landroid/media/audiofx/Exciter;->getParameter(I[S)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/media/audiofx/Exciter;->checkStatus(I)V

    .line 137
    const/4 v1, 0x0

    aget-short v1, v0, v1

    return v1
.end method

.method public getStrengthSupported()Z
    .registers 2

    .prologue
    .line 106
    iget-boolean v0, p0, Landroid/media/audiofx/Exciter;->mStrengthSupported:Z

    return v0
.end method

.method public setParameterListener(Landroid/media/audiofx/Exciter$OnParameterChangeListener;)V
    .registers 5
    .param p1, "listener"    # Landroid/media/audiofx/Exciter$OnParameterChangeListener;

    .prologue
    .line 195
    iget-object v1, p0, Landroid/media/audiofx/Exciter;->mParamListenerLock:Ljava/lang/Object;

    monitor-enter v1

    .line 196
    :try_start_3
    iget-object v0, p0, Landroid/media/audiofx/Exciter;->mParamListener:Landroid/media/audiofx/Exciter$OnParameterChangeListener;

    if-nez v0, :cond_16

    .line 197
    iput-object p1, p0, Landroid/media/audiofx/Exciter;->mParamListener:Landroid/media/audiofx/Exciter$OnParameterChangeListener;

    .line 198
    new-instance v0, Landroid/media/audiofx/Exciter$BaseParameterListener;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Landroid/media/audiofx/Exciter$BaseParameterListener;-><init>(Landroid/media/audiofx/Exciter;Landroid/media/audiofx/Exciter$1;)V

    iput-object v0, p0, Landroid/media/audiofx/Exciter;->mBaseParamListener:Landroid/media/audiofx/Exciter$BaseParameterListener;

    .line 199
    iget-object v0, p0, Landroid/media/audiofx/Exciter;->mBaseParamListener:Landroid/media/audiofx/Exciter$BaseParameterListener;

    invoke-super {p0, v0}, Landroid/media/audiofx/AudioEffect;->setParameterListener(Landroid/media/audiofx/AudioEffect$OnParameterChangeListener;)V

    .line 201
    :cond_16
    monitor-exit v1

    .line 202
    return-void

    .line 201
    :catchall_18
    move-exception v0

    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_18

    throw v0
.end method

.method public setProperties(Landroid/media/audiofx/Exciter$Settings;)V
    .registers 4
    .param p1, "settings"    # Landroid/media/audiofx/Exciter$Settings;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 280
    const/4 v0, 0x1

    iget-short v1, p1, Landroid/media/audiofx/Exciter$Settings;->strength:S

    invoke-virtual {p0, v0, v1}, Landroid/media/audiofx/Exciter;->setParameter(IS)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/media/audiofx/Exciter;->checkStatus(I)V

    .line 281
    return-void
.end method

.method public setStrength(S)V
    .registers 3
    .param p1, "strength"    # S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 122
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Landroid/media/audiofx/Exciter;->setParameter(IS)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/media/audiofx/Exciter;->checkStatus(I)V

    .line 123
    return-void
.end method
