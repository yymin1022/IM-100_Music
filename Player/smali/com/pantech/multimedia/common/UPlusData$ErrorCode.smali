.class public Lcom/pantech/multimedia/common/UPlusData$ErrorCode;
.super Ljava/lang/Object;
.source "UPlusData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/multimedia/common/UPlusData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ErrorCode"
.end annotation


# static fields
.field public static final RESULT_DATABASE_SERVER_ERROR:I = 0x3e8

.field public static final RESULT_IOEXCEPTION:I = 0x65

.field public static final RESULT_JSONEXCEPTION:I = 0x66

.field public static final RESULT_NORMAL:I = 0x0

.field public static final RESULT_NO_SESSION:I = 0x7d1

.field public static final RESULT_OVER_TRAFFIC_DAY:I = 0x7e4

.field public static final RESULT_OVER_TRAFFIC_MONTH:I = 0x7e6

.field public static final RESULT_OVER_TRAFFIC_WEEK:I = 0x7e5

.field public static final RESULT_OVER_TRAFFIC_YEAR:I = 0x7e7

.field public static final RESULT_UNDEFINED_ERROR:I = 0x270f


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
