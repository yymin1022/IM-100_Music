.class public Lcom/pantech/app/music/drm/MusicDrm;
.super Ljava/lang/Object;
.source "MusicDrm.java"

# interfaces
.implements Lcom/pantech/app/music/drm/MusicDrmInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/app/music/drm/MusicDrm$ListenersHandler;
    }
.end annotation


# static fields
.field public static final DRM_CHECK_RETURN_FAIL:I = 0x1

.field public static final DRM_CHECK_RETURN_OK:I = 0x0

.field public static final DRM_CHECK_RETURN_RO:I = 0x2

.field private static final FAILED:I = 0x45

.field private static final TAG:Ljava/lang/String; = "MusicDrm"

.field private static final UPDATED:I = 0x44

.field private static m_MusicDrm:Lcom/pantech/app/music/drm/MusicDrm;


# instance fields
.field private final DRM_PREFERENCE:Ljava/lang/String;

.field private final DRM_SERVER_IDX:Ljava/lang/String;

.field private final MAX_CHECK_COUNT:I

.field private final ODF_EXTENTION:Ljava/lang/String;

.field private final SERVER_NAME:[Ljava/lang/String;

.field private mClient:Lcom/pantech/app/music/drm/LGUDRMClient;

.field private mContext:Landroid/content/Context;

.field private mDrmHandle:Lcom/pantech/app/music/drm/LGUDRMInterface;

.field private mDrmPath:Ljava/lang/String;

.field private mErrorCode:I

.field private mFirstDRMContents:Z

.field private mForceToStop:Z

.field private mIgnoreErrorPopUp:Z

.field private mListener:Lcom/pantech/app/music/drm/MusicDrmInterface$OnDrmProcessListener;

.field private mListenersHandler:Landroid/os/Handler;

.field private mNeedToRoUpdate:Z

.field private final mOperation:Lcom/pantech/app/music/drm/LGUDRMClient$Operation;

.field private mROUpdateMode:Z

.field private mRoVerifyFailed:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 61
    new-instance v0, Lcom/pantech/app/music/drm/MusicDrm;

    invoke-direct {v0}, Lcom/pantech/app/music/drm/MusicDrm;-><init>()V

    sput-object v0, Lcom/pantech/app/music/drm/MusicDrm;->m_MusicDrm:Lcom/pantech/app/music/drm/MusicDrm;

    return-void
.end method

.method public constructor <init>()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const-string v0, "DrmServerIndex"

    iput-object v0, p0, Lcom/pantech/app/music/drm/MusicDrm;->DRM_SERVER_IDX:Ljava/lang/String;

    .line 35
    const-string v0, "DrmServerPreference"

    iput-object v0, p0, Lcom/pantech/app/music/drm/MusicDrm;->DRM_PREFERENCE:Ljava/lang/String;

    .line 36
    const-string v0, "odf"

    iput-object v0, p0, Lcom/pantech/app/music/drm/MusicDrm;->ODF_EXTENTION:Ljava/lang/String;

    .line 39
    new-instance v0, Lcom/pantech/app/music/drm/LGUDRMClient$Operation;

    invoke-direct {v0}, Lcom/pantech/app/music/drm/LGUDRMClient$Operation;-><init>()V

    iput-object v0, p0, Lcom/pantech/app/music/drm/MusicDrm;->mOperation:Lcom/pantech/app/music/drm/LGUDRMClient$Operation;

    .line 40
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "MusicOn Server"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "Test Server"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "Tally Server"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/pantech/app/music/drm/MusicDrm;->SERVER_NAME:[Ljava/lang/String;

    .line 41
    const/4 v0, 0x5

    iput v0, p0, Lcom/pantech/app/music/drm/MusicDrm;->MAX_CHECK_COUNT:I

    .line 43
    iput-boolean v3, p0, Lcom/pantech/app/music/drm/MusicDrm;->mFirstDRMContents:Z

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pantech/app/music/drm/MusicDrm;->mDrmHandle:Lcom/pantech/app/music/drm/LGUDRMInterface;

    .line 69
    new-instance v0, Lcom/pantech/app/music/drm/MusicDrm$ListenersHandler;

    invoke-direct {v0}, Lcom/pantech/app/music/drm/MusicDrm$ListenersHandler;-><init>()V

    iput-object v0, p0, Lcom/pantech/app/music/drm/MusicDrm;->mListenersHandler:Landroid/os/Handler;

    .line 70
    return-void
.end method

.method static synthetic access$000(Lcom/pantech/app/music/drm/MusicDrm;)Lcom/pantech/app/music/drm/LGUDRMClient$Operation;
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/drm/MusicDrm;

    .prologue
    .line 13
    iget-object v0, p0, Lcom/pantech/app/music/drm/MusicDrm;->mOperation:Lcom/pantech/app/music/drm/LGUDRMClient$Operation;

    return-object v0
.end method

.method static synthetic access$100(Lcom/pantech/app/music/drm/MusicDrm;)Lcom/pantech/app/music/drm/LGUDRMClient;
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/drm/MusicDrm;

    .prologue
    .line 13
    iget-object v0, p0, Lcom/pantech/app/music/drm/MusicDrm;->mClient:Lcom/pantech/app/music/drm/LGUDRMClient;

    return-object v0
.end method

.method static synthetic access$102(Lcom/pantech/app/music/drm/MusicDrm;Lcom/pantech/app/music/drm/LGUDRMClient;)Lcom/pantech/app/music/drm/LGUDRMClient;
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/drm/MusicDrm;
    .param p1, "x1"    # Lcom/pantech/app/music/drm/LGUDRMClient;

    .prologue
    .line 13
    iput-object p1, p0, Lcom/pantech/app/music/drm/MusicDrm;->mClient:Lcom/pantech/app/music/drm/LGUDRMClient;

    return-object p1
.end method

.method static synthetic access$200(Lcom/pantech/app/music/drm/MusicDrm;)I
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/drm/MusicDrm;

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/pantech/app/music/drm/MusicDrm;->getDRMServer()I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/pantech/app/music/drm/MusicDrm;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/drm/MusicDrm;

    .prologue
    .line 13
    iget-object v0, p0, Lcom/pantech/app/music/drm/MusicDrm;->mDrmPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/pantech/app/music/drm/MusicDrm;)Lcom/pantech/app/music/drm/LGUDRMInterface;
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/drm/MusicDrm;

    .prologue
    .line 13
    iget-object v0, p0, Lcom/pantech/app/music/drm/MusicDrm;->mDrmHandle:Lcom/pantech/app/music/drm/LGUDRMInterface;

    return-object v0
.end method

.method static synthetic access$500(Lcom/pantech/app/music/drm/MusicDrm;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/drm/MusicDrm;

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/pantech/app/music/drm/MusicDrm;->getTelephoneMinNum()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/pantech/app/music/drm/MusicDrm;)Z
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/drm/MusicDrm;

    .prologue
    .line 13
    iget-boolean v0, p0, Lcom/pantech/app/music/drm/MusicDrm;->mForceToStop:Z

    return v0
.end method

.method static synthetic access$602(Lcom/pantech/app/music/drm/MusicDrm;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/drm/MusicDrm;
    .param p1, "x1"    # Z

    .prologue
    .line 13
    iput-boolean p1, p0, Lcom/pantech/app/music/drm/MusicDrm;->mForceToStop:Z

    return p1
.end method

.method static synthetic access$702(Lcom/pantech/app/music/drm/MusicDrm;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/drm/MusicDrm;
    .param p1, "x1"    # Z

    .prologue
    .line 13
    iput-boolean p1, p0, Lcom/pantech/app/music/drm/MusicDrm;->mRoVerifyFailed:Z

    return p1
.end method

.method static synthetic access$800(Lcom/pantech/app/music/drm/MusicDrm;IZ)V
    .registers 3
    .param p0, "x0"    # Lcom/pantech/app/music/drm/MusicDrm;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    .line 13
    invoke-direct {p0, p1, p2}, Lcom/pantech/app/music/drm/MusicDrm;->resultProcessforDRM(IZ)V

    return-void
.end method

.method private getDRMServer()I
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 74
    iget-object v3, p0, Lcom/pantech/app/music/drm/MusicDrm;->mContext:Landroid/content/Context;

    if-nez v3, :cond_6

    .line 85
    :goto_5
    return v2

    .line 77
    :cond_6
    const/4 v0, 0x0

    .line 78
    .local v0, "drm_server_idx":I
    iget-object v3, p0, Lcom/pantech/app/music/drm/MusicDrm;->mContext:Landroid/content/Context;

    const-string v4, "DrmServerPreference"

    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 80
    .local v1, "settings":Landroid/content/SharedPreferences;
    if-eqz v1, :cond_1a

    .line 81
    const-string v3, "DrmServerIndex"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 82
    if-gez v0, :cond_38

    move v0, v2

    .line 84
    :cond_1a
    :goto_1a
    const-string v2, "MusicDrm"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Current DRM_SERVER : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/pantech/app/music/drm/MusicDrm;->SERVER_NAME:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v0

    .line 85
    goto :goto_5

    .line 82
    :cond_38
    const/4 v3, 0x2

    if-le v0, v3, :cond_1a

    move v0, v2

    goto :goto_1a
.end method

.method public static getInstance()Lcom/pantech/app/music/drm/MusicDrm;
    .registers 1

    .prologue
    .line 64
    sget-object v0, Lcom/pantech/app/music/drm/MusicDrm;->m_MusicDrm:Lcom/pantech/app/music/drm/MusicDrm;

    return-object v0
.end method

.method private getTelephoneMinNum()Ljava/lang/String;
    .registers 4

    .prologue
    .line 90
    iget-object v1, p0, Lcom/pantech/app/music/drm/MusicDrm;->mContext:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 91
    .local v0, "telephoneManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private installROforDRM()V
    .registers 3

    .prologue
    .line 96
    const-string v0, "MusicDrm"

    const-string v1, "installROforDRM()"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pantech/app/music/drm/MusicDrm;->mForceToStop:Z

    .line 99
    new-instance v0, Lcom/pantech/app/music/drm/MusicDrm$1;

    invoke-direct {v0, p0}, Lcom/pantech/app/music/drm/MusicDrm$1;-><init>(Lcom/pantech/app/music/drm/MusicDrm;)V

    invoke-virtual {v0}, Lcom/pantech/app/music/drm/MusicDrm$1;->start()V

    .line 181
    return-void
.end method

.method private resultProcessforDRM(IZ)V
    .registers 12
    .param p1, "ret"    # I
    .param p2, "isDcancel"    # Z

    .prologue
    const/4 v8, 0x0

    const/4 v7, -0x8

    const/16 v6, -0x9

    .line 185
    const-string v3, "MusicDrm"

    const-string v4, "resultProcessforDRM()"

    invoke-static {v3, v4}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    const/4 v1, 0x0

    .line 188
    .local v1, "msg":Landroid/os/Message;
    iget-object v3, p0, Lcom/pantech/app/music/drm/MusicDrm;->mListener:Lcom/pantech/app/music/drm/MusicDrmInterface$OnDrmProcessListener;

    if-eqz v3, :cond_2e

    .line 190
    if-nez p1, :cond_2f

    .line 191
    const-string v3, "MusicDrm"

    const-string v4, "=>[LGU+_DRM] RO Install OK!! -> continuePlayforDRM()"

    invoke-static {v3, v4}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    iget-object v3, p0, Lcom/pantech/app/music/drm/MusicDrm;->mListenersHandler:Landroid/os/Handler;

    const/16 v4, 0x44

    iget-object v5, p0, Lcom/pantech/app/music/drm/MusicDrm;->mListener:Lcom/pantech/app/music/drm/MusicDrmInterface$OnDrmProcessListener;

    invoke-virtual {v3, v4, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 193
    sput-boolean v8, Lcom/pantech/app/music/drm/LGUDRMInterface;->ERROR_CLEANUP_RO:Z

    .line 222
    :goto_25
    if-eqz v1, :cond_2e

    .line 224
    invoke-static {v1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 227
    :cond_2e
    return-void

    .line 196
    :cond_2f
    const-string v3, "MusicDrm"

    const-string v4, "=>[LGU+_DRM] RO Install Fail!!"

    invoke-static {v3, v4}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    iget-object v3, p0, Lcom/pantech/app/music/drm/MusicDrm;->mListenersHandler:Landroid/os/Handler;

    const/16 v4, 0x45

    iget-object v5, p0, Lcom/pantech/app/music/drm/MusicDrm;->mListener:Lcom/pantech/app/music/drm/MusicDrmInterface$OnDrmProcessListener;

    invoke-virtual {v3, v4, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 199
    const/4 v0, 0x0

    .line 201
    .local v0, "is_finish":I
    const/4 v3, -0x7

    if-ne p1, v3, :cond_4c

    .line 202
    const v2, 0x7f08002b

    .line 218
    .local v2, "msg_id":I
    :cond_47
    :goto_47
    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 219
    iput v0, v1, Landroid/os/Message;->arg2:I

    goto :goto_25

    .line 203
    .end local v2    # "msg_id":I
    :cond_4c
    const/4 v3, -0x6

    if-ne p1, v3, :cond_53

    .line 204
    const v2, 0x7f080034

    .restart local v2    # "msg_id":I
    goto :goto_47

    .line 205
    .end local v2    # "msg_id":I
    :cond_53
    const/4 v3, -0x1

    if-ne p1, v3, :cond_5a

    .line 206
    const v2, 0x7f080020

    .restart local v2    # "msg_id":I
    goto :goto_47

    .line 208
    .end local v2    # "msg_id":I
    :cond_5a
    if-eq p1, v7, :cond_5e

    if-ne p1, v6, :cond_71

    :cond_5e
    iget-boolean v3, p0, Lcom/pantech/app/music/drm/MusicDrm;->mFirstDRMContents:Z

    if-eqz v3, :cond_71

    const v2, 0x7f08002f

    .line 212
    .restart local v2    # "msg_id":I
    :goto_65
    if-eq p1, v7, :cond_69

    if-ne p1, v6, :cond_47

    :cond_69
    iget-boolean v3, p0, Lcom/pantech/app/music/drm/MusicDrm;->mFirstDRMContents:Z

    if-eqz v3, :cond_47

    .line 214
    const/4 v0, 0x1

    .line 215
    iput-boolean v8, p0, Lcom/pantech/app/music/drm/MusicDrm;->mFirstDRMContents:Z

    goto :goto_47

    .line 208
    .end local v2    # "msg_id":I
    :cond_71
    const v2, 0x7f08002a

    goto :goto_65
.end method


# virtual methods
.method public IsCheckCleanRO()Z
    .registers 2

    .prologue
    .line 395
    sget-boolean v0, Lcom/pantech/app/music/drm/LGUDRMInterface;->ERROR_CLEANUP_RO:Z

    return v0
.end method

.method public IsLibraryLoaded()Z
    .registers 2

    .prologue
    .line 241
    iget-object v0, p0, Lcom/pantech/app/music/drm/MusicDrm;->mDrmHandle:Lcom/pantech/app/music/drm/LGUDRMInterface;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public IsNeedToRoUpdate()Z
    .registers 2

    .prologue
    .line 246
    iget-object v0, p0, Lcom/pantech/app/music/drm/MusicDrm;->mDrmHandle:Lcom/pantech/app/music/drm/LGUDRMInterface;

    if-nez v0, :cond_6

    .line 247
    const/4 v0, 0x0

    .line 249
    :goto_5
    return v0

    :cond_6
    iget-boolean v0, p0, Lcom/pantech/app/music/drm/MusicDrm;->mNeedToRoUpdate:Z

    goto :goto_5
.end method

.method public forceToStop()V
    .registers 2

    .prologue
    .line 399
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pantech/app/music/drm/MusicDrm;->mForceToStop:Z

    .line 400
    return-void
.end method

.method public getErrorCode()I
    .registers 2

    .prologue
    .line 265
    iget v0, p0, Lcom/pantech/app/music/drm/MusicDrm;->mErrorCode:I

    return v0
.end method

.method public getPath()Ljava/lang/String;
    .registers 2

    .prologue
    .line 385
    iget-object v0, p0, Lcom/pantech/app/music/drm/MusicDrm;->mDrmPath:Ljava/lang/String;

    return-object v0
.end method

.method public isAvailableROUpdate()Z
    .registers 2

    .prologue
    .line 261
    iget-boolean v0, p0, Lcom/pantech/app/music/drm/MusicDrm;->mROUpdateMode:Z

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/pantech/app/music/drm/MusicDrm;->mNeedToRoUpdate:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public isIgnoreErrorPopup()Z
    .registers 2

    .prologue
    .line 318
    iget-boolean v0, p0, Lcom/pantech/app/music/drm/MusicDrm;->mIgnoreErrorPopUp:Z

    return v0
.end method

.method public isROVerifyFailed()Z
    .registers 2

    .prologue
    .line 257
    iget-boolean v0, p0, Lcom/pantech/app/music/drm/MusicDrm;->mRoVerifyFailed:Z

    return v0
.end method

.method public isStoppedByForce()Z
    .registers 2

    .prologue
    .line 390
    iget-boolean v0, p0, Lcom/pantech/app/music/drm/MusicDrm;->mForceToStop:Z

    return v0
.end method

.method public libraryLoad()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 272
    iget-object v1, p0, Lcom/pantech/app/music/drm/MusicDrm;->mDrmHandle:Lcom/pantech/app/music/drm/LGUDRMInterface;

    if-nez v1, :cond_17

    .line 273
    new-instance v1, Lcom/pantech/app/music/drm/LGUDRMInterface;

    invoke-direct {v1}, Lcom/pantech/app/music/drm/LGUDRMInterface;-><init>()V

    iput-object v1, p0, Lcom/pantech/app/music/drm/MusicDrm;->mDrmHandle:Lcom/pantech/app/music/drm/LGUDRMInterface;

    .line 276
    :try_start_c
    iget-object v1, p0, Lcom/pantech/app/music/drm/MusicDrm;->mDrmHandle:Lcom/pantech/app/music/drm/LGUDRMInterface;

    invoke-virtual {v1}, Lcom/pantech/app/music/drm/LGUDRMInterface;->DRMInit()I

    move-result v1

    if-eqz v1, :cond_17

    .line 277
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/pantech/app/music/drm/MusicDrm;->mDrmHandle:Lcom/pantech/app/music/drm/LGUDRMInterface;
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_17} :catch_1e

    .line 287
    :cond_17
    :goto_17
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/pantech/app/music/drm/MusicDrm;->mNeedToRoUpdate:Z

    .line 288
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/pantech/app/music/drm/MusicDrm;->mFirstDRMContents:Z

    .line 289
    return-void

    .line 280
    :catch_1e
    move-exception v0

    .line 282
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 283
    iput-object v2, p0, Lcom/pantech/app/music/drm/MusicDrm;->mDrmHandle:Lcom/pantech/app/music/drm/LGUDRMInterface;

    goto :goto_17
.end method

.method public libraryUnload()V
    .registers 3

    .prologue
    .line 293
    const-string v0, "MusicDrm"

    const-string v1, "libraryUnload()"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    iget-object v0, p0, Lcom/pantech/app/music/drm/MusicDrm;->mDrmHandle:Lcom/pantech/app/music/drm/LGUDRMInterface;

    if-eqz v0, :cond_13

    .line 296
    iget-object v0, p0, Lcom/pantech/app/music/drm/MusicDrm;->mDrmHandle:Lcom/pantech/app/music/drm/LGUDRMInterface;

    invoke-virtual {v0}, Lcom/pantech/app/music/drm/LGUDRMInterface;->DRMDestroy()V

    .line 297
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pantech/app/music/drm/MusicDrm;->mDrmHandle:Lcom/pantech/app/music/drm/LGUDRMInterface;

    .line 299
    :cond_13
    return-void
.end method

.method public resetRoUpdate()V
    .registers 2

    .prologue
    .line 253
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pantech/app/music/drm/MusicDrm;->mNeedToRoUpdate:Z

    .line 254
    return-void
.end method

.method public setIgnoreErrorPopup(Z)V
    .registers 2
    .param p1, "fSet"    # Z

    .prologue
    .line 314
    iput-boolean p1, p0, Lcom/pantech/app/music/drm/MusicDrm;->mIgnoreErrorPopUp:Z

    .line 315
    return-void
.end method

.method public setOnMusicDrmListener(Lcom/pantech/app/music/drm/MusicDrmInterface$OnDrmProcessListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/pantech/app/music/drm/MusicDrmInterface$OnDrmProcessListener;

    .prologue
    .line 404
    iput-object p1, p0, Lcom/pantech/app/music/drm/MusicDrm;->mListener:Lcom/pantech/app/music/drm/MusicDrmInterface$OnDrmProcessListener;

    .line 405
    return-void
.end method

.method public setROUpdateMode(Landroid/content/Context;Z)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fSet"    # Z

    .prologue
    .line 303
    if-eqz p2, :cond_8

    .line 304
    iput-object p1, p0, Lcom/pantech/app/music/drm/MusicDrm;->mContext:Landroid/content/Context;

    .line 305
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pantech/app/music/drm/MusicDrm;->mROUpdateMode:Z

    .line 311
    :goto_7
    return-void

    .line 308
    :cond_8
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pantech/app/music/drm/MusicDrm;->mContext:Landroid/content/Context;

    .line 309
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pantech/app/music/drm/MusicDrm;->mROUpdateMode:Z

    goto :goto_7
.end method

.method public updateRO()V
    .registers 3

    .prologue
    .line 324
    const-string v0, "MusicDrm"

    const-string v1, "updateRO()"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    iget-object v0, p0, Lcom/pantech/app/music/drm/MusicDrm;->mDrmHandle:Lcom/pantech/app/music/drm/LGUDRMInterface;

    if-nez v0, :cond_c

    .line 331
    :goto_b
    return-void

    .line 329
    :cond_c
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pantech/app/music/drm/MusicDrm;->mNeedToRoUpdate:Z

    .line 330
    invoke-direct {p0}, Lcom/pantech/app/music/drm/MusicDrm;->installROforDRM()V

    goto :goto_b
.end method

.method public verify(Ljava/lang/String;)V
    .registers 7
    .param p1, "drmPath"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 338
    iput-boolean v1, p0, Lcom/pantech/app/music/drm/MusicDrm;->mNeedToRoUpdate:Z

    .line 339
    iput-boolean v1, p0, Lcom/pantech/app/music/drm/MusicDrm;->mRoVerifyFailed:Z

    .line 340
    iput v1, p0, Lcom/pantech/app/music/drm/MusicDrm;->mErrorCode:I

    .line 341
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/pantech/app/music/drm/MusicDrm;->mDrmPath:Ljava/lang/String;

    .line 343
    if-eqz p1, :cond_15

    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 382
    :cond_15
    :goto_15
    :sswitch_15
    return-void

    .line 345
    :cond_16
    const-string v1, "odf"

    invoke-static {p1, v1}, Lcom/pantech/app/music/utils/ContentUtils;->checkFileType(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 347
    iget-object v1, p0, Lcom/pantech/app/music/drm/MusicDrm;->mDrmHandle:Lcom/pantech/app/music/drm/LGUDRMInterface;

    if-nez v1, :cond_2a

    .line 348
    const-string v1, "MusicDrm"

    const-string v2, "mDrmHandle is null!!"

    invoke-static {v1, v2}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_15

    .line 352
    :cond_2a
    iput-object p1, p0, Lcom/pantech/app/music/drm/MusicDrm;->mDrmPath:Ljava/lang/String;

    .line 353
    const-string v1, "MusicDrm"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "verify("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/pantech/app/music/drm/MusicDrm;->mDrmPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    :try_start_4c
    iget-object v1, p0, Lcom/pantech/app/music/drm/MusicDrm;->mDrmHandle:Lcom/pantech/app/music/drm/LGUDRMInterface;

    invoke-virtual {v1, p1}, Lcom/pantech/app/music/drm/LGUDRMInterface;->DRMCheckRO(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/pantech/app/music/drm/MusicDrm;->mErrorCode:I

    .line 357
    const-string v1, "MusicDrm"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "=>return:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/pantech/app/music/drm/MusicDrm;->mErrorCode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6e
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_6e} :catch_76

    .line 363
    :goto_6e
    iget v1, p0, Lcom/pantech/app/music/drm/MusicDrm;->mErrorCode:I

    sparse-switch v1, :sswitch_data_84

    .line 379
    iput-boolean v4, p0, Lcom/pantech/app/music/drm/MusicDrm;->mRoVerifyFailed:Z

    goto :goto_15

    .line 359
    :catch_76
    move-exception v0

    .line 360
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "MusicDrm"

    const-string v2, "=>odf file play exception!!"

    invoke-static {v1, v2}, Lcom/pantech/app/music/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6e

    .line 370
    .end local v0    # "e":Ljava/lang/Exception;
    :sswitch_7f
    iput-boolean v4, p0, Lcom/pantech/app/music/drm/MusicDrm;->mNeedToRoUpdate:Z

    .line 371
    iput-boolean v4, p0, Lcom/pantech/app/music/drm/MusicDrm;->mRoVerifyFailed:Z

    goto :goto_15

    .line 363
    :sswitch_data_84
    .sparse-switch
        -0xc -> :sswitch_15
        -0xb -> :sswitch_15
        -0x2 -> :sswitch_7f
        0x0 -> :sswitch_15
    .end sparse-switch
.end method
