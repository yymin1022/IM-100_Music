.class Lcom/pantech/app/music/common/MediaFile$MediaFileType;
.super Ljava/lang/Object;
.source "MediaFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/music/common/MediaFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MediaFileType"
.end annotation


# instance fields
.field fileExtention:Ljava/lang/String;

.field fileType:I


# direct methods
.method constructor <init>(ILjava/lang/String;)V
    .registers 3
    .param p1, "fileType"    # I
    .param p2, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    iput p1, p0, Lcom/pantech/app/music/common/MediaFile$MediaFileType;->fileType:I

    .line 142
    iput-object p2, p0, Lcom/pantech/app/music/common/MediaFile$MediaFileType;->fileExtention:Ljava/lang/String;

    .line 143
    return-void
.end method
