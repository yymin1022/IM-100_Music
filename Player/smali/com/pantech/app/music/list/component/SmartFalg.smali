.class public Lcom/pantech/app/music/list/component/SmartFalg;
.super Ljava/lang/Object;
.source "SmartFalg.java"


# static fields
.field public static final PENDING_QUERY:I = 0x1

.field public static final PENDING_VIEW_UPDATE:I = 0x2


# instance fields
.field private mPendingMask:J


# direct methods
.method public constructor <init>(I)V
    .registers 6
    .param p1, "mask"    # I

    .prologue
    const-wide/16 v0, 0x0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-wide v0, p0, Lcom/pantech/app/music/list/component/SmartFalg;->mPendingMask:J

    .line 12
    iput-wide v0, p0, Lcom/pantech/app/music/list/component/SmartFalg;->mPendingMask:J

    .line 13
    iget-wide v0, p0, Lcom/pantech/app/music/list/component/SmartFalg;->mPendingMask:J

    int-to-long v2, p1

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/pantech/app/music/list/component/SmartFalg;->mPendingMask:J

    .line 14
    return-void
.end method


# virtual methods
.method public check(I)Z
    .registers 6
    .param p1, "mask"    # I

    .prologue
    .line 28
    iget-wide v0, p0, Lcom/pantech/app/music/list/component/SmartFalg;->mPendingMask:J

    int-to-long v2, p1

    and-long/2addr v0, v2

    int-to-long v2, p1

    cmp-long v0, v0, v2

    if-nez v0, :cond_b

    .line 29
    const/4 v0, 0x1

    .line 31
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public clear(I)V
    .registers 6
    .param p1, "mask"    # I

    .prologue
    .line 23
    iget-wide v0, p0, Lcom/pantech/app/music/list/component/SmartFalg;->mPendingMask:J

    xor-int/lit8 v2, p1, -0x1

    int-to-long v2, v2

    and-long/2addr v0, v2

    iput-wide v0, p0, Lcom/pantech/app/music/list/component/SmartFalg;->mPendingMask:J

    .line 24
    return-void
.end method

.method public set(I)V
    .registers 6
    .param p1, "mask"    # I

    .prologue
    .line 18
    iget-wide v0, p0, Lcom/pantech/app/music/list/component/SmartFalg;->mPendingMask:J

    int-to-long v2, p1

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/pantech/app/music/list/component/SmartFalg;->mPendingMask:J

    .line 19
    return-void
.end method
