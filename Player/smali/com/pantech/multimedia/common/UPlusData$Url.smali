.class public Lcom/pantech/multimedia/common/UPlusData$Url;
.super Ljava/lang/Object;
.source "UPlusData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/multimedia/common/UPlusData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Url"
.end annotation


# static fields
.field private static final FILE_DOMAIN:Ljava/lang/String; = "http://updd-N.upbox.co.kr"

.field public static final FILE_META_INFO:Ljava/lang/String; = "https://openapi.uplusbox.co.kr/restapi/file/metainfo"

.field public static final MUSIC_CONTENTS:Ljava/lang/String; = "https://openapi.uplusbox.co.kr/restapi/file/music"

.field private static final QUERY_DOMAIN:Ljava/lang/String; = "https://openapi.uplusbox.co.kr"

.field public static final SIMPLE_DOWNLOAD:Ljava/lang/String; = "http://updd-N.upbox.co.kr/restapi/file/simpledownload"

.field private static final STREAM_DOMAIN:Ljava/lang/String; = "http://ustrm-N.upbox.co.kr"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
