.class public Lcom/pantech/multimedia/common/CloudLiveData$Url;
.super Ljava/lang/Object;
.source "CloudLiveData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/multimedia/common/CloudLiveData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Url"
.end annotation


# static fields
.field public static final CLOUDLIVE_BASIC_URL:Ljava/lang/String; = "http://cloud-mds.vegalive.co.kr:16749"

.field public static final CLOUDLIVE_FILE_URL:Ljava/lang/String; = "http://cloud-file.vegalive.co.kr:16749"

.field public static final MUSIC_CONTENTS:Ljava/lang/String; = "http://cloud-mds.vegalive.co.kr:16749/sync/media/"

.field public static final STREAMING_URL:Ljava/lang/String; = "http://cloud-file.vegalive.co.kr:16749/"

.field public static final file_test_url:Ljava/lang/String; = "http://t-cloud-file.vegalive.co.kr:8080"

.field public static final test_url:Ljava/lang/String; = "http://t-cloud-mds.vegalive.co.kr:8080"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
