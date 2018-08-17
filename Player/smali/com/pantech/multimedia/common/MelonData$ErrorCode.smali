.class public Lcom/pantech/multimedia/common/MelonData$ErrorCode;
.super Ljava/lang/Object;
.source "MelonData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/multimedia/common/MelonData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ErrorCode"
.end annotation


# static fields
.field public static final RESULT_CONNECTION_EEEOR:I = 0x2328

.field public static final RESULT_NORMAL:I = 0x0

.field public static final RESULT_NO_SEARCH_DATA:I = 0xbb8

.field public static final RESULT_QUERY_CP_ERROR:I = 0xfa1

.field public static final RESULT_QUERY_FIELD_ERROR:I = 0xfa0

.field public static final RESULT_QUERY_MDN_ERROR:I = 0xfa2

.field public static final RESULT_SYSTEM_CHECK:I = 0x3e8


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
