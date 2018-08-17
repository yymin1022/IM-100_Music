.class public Lcom/pantech/app/music/list/db/DBInterfaceCommon$GetCountOptionParams;
.super Ljava/lang/Object;
.source "DBInterfaceCommon.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/music/list/db/DBInterfaceCommon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GetCountOptionParams"
.end annotation


# instance fields
.field isExcludeDRM:Z

.field isMusic:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pantech/app/music/list/db/DBInterfaceCommon$GetCountOptionParams;->isMusic:Z

    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pantech/app/music/list/db/DBInterfaceCommon$GetCountOptionParams;->isExcludeDRM:Z

    .line 61
    return-void
.end method

.method public constructor <init>(ZZ)V
    .registers 3
    .param p1, "isMusic"    # Z
    .param p2, "isExcludeDRM"    # Z

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-boolean p1, p0, Lcom/pantech/app/music/list/db/DBInterfaceCommon$GetCountOptionParams;->isMusic:Z

    .line 66
    iput-boolean p2, p0, Lcom/pantech/app/music/list/db/DBInterfaceCommon$GetCountOptionParams;->isExcludeDRM:Z

    .line 67
    return-void
.end method
