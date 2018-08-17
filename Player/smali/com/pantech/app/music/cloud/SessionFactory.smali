.class public Lcom/pantech/app/music/cloud/SessionFactory;
.super Ljava/lang/Object;
.source "SessionFactory.java"


# static fields
.field public static final TYPE_TCLOUD:I = 0x1

.field public static final TYPE_UPLUSBOX:I

.field static mCloudSession:[Lcom/pantech/app/music/cloud/CloudSession;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    .line 7
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/pantech/app/music/cloud/CloudSession;

    const/4 v1, 0x0

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object v2, v0, v1

    const/4 v1, 0x2

    aput-object v2, v0, v1

    sput-object v0, Lcom/pantech/app/music/cloud/SessionFactory;->mCloudSession:[Lcom/pantech/app/music/cloud/CloudSession;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCloudSessionInstance(ILandroid/content/Context;)Lcom/pantech/app/music/cloud/CloudSession;
    .registers 4
    .param p0, "type"    # I
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 14
    packed-switch p0, :pswitch_data_24

    .line 28
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 16
    :pswitch_5
    monitor-enter p1

    .line 17
    :try_start_6
    sget-object v0, Lcom/pantech/app/music/cloud/SessionFactory;->mCloudSession:[Lcom/pantech/app/music/cloud/CloudSession;

    aget-object v0, v0, p0

    if-eqz v0, :cond_15

    .line 18
    sget-object v0, Lcom/pantech/app/music/cloud/SessionFactory;->mCloudSession:[Lcom/pantech/app/music/cloud/CloudSession;

    aget-object v0, v0, p0

    monitor-exit p1

    goto :goto_4

    .line 23
    :catchall_12
    move-exception v0

    monitor-exit p1
    :try_end_14
    .catchall {:try_start_6 .. :try_end_14} :catchall_12

    throw v0

    .line 20
    :cond_15
    :try_start_15
    sget-object v0, Lcom/pantech/app/music/cloud/SessionFactory;->mCloudSession:[Lcom/pantech/app/music/cloud/CloudSession;

    new-instance v1, Lcom/pantech/app/music/cloud/UPlusBoxSession;

    invoke-direct {v1, p1}, Lcom/pantech/app/music/cloud/UPlusBoxSession;-><init>(Landroid/content/Context;)V

    aput-object v1, v0, p0

    .line 21
    sget-object v0, Lcom/pantech/app/music/cloud/SessionFactory;->mCloudSession:[Lcom/pantech/app/music/cloud/CloudSession;

    aget-object v0, v0, p0

    monitor-exit p1
    :try_end_23
    .catchall {:try_start_15 .. :try_end_23} :catchall_12

    goto :goto_4

    .line 14
    :pswitch_data_24
    .packed-switch 0x0
        :pswitch_5
    .end packed-switch
.end method
