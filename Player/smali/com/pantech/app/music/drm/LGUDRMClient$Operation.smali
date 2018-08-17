.class public final Lcom/pantech/app/music/drm/LGUDRMClient$Operation;
.super Ljava/lang/Object;
.source "LGUDRMClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/music/drm/LGUDRMClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Operation"
.end annotation


# instance fields
.field public inOutEtag:Ljava/lang/String;

.field public outBody:Ljava/io/InputStream;

.field public outStatus:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
