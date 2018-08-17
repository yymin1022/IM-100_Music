.class Lcom/pantech/app/music/list/module/CommonThreadHandler$CheckMetadataParam;
.super Ljava/lang/Object;
.source "CommonThreadHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/music/list/module/CommonThreadHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CheckMetadataParam"
.end annotation


# instance fields
.field public audioID:J

.field public szPath:Ljava/lang/String;

.field final synthetic this$0:Lcom/pantech/app/music/list/module/CommonThreadHandler;


# direct methods
.method public constructor <init>(Lcom/pantech/app/music/list/module/CommonThreadHandler;JLjava/lang/String;)V
    .registers 5
    .param p2, "audioID"    # J
    .param p4, "path"    # Ljava/lang/String;

    .prologue
    .line 149
    iput-object p1, p0, Lcom/pantech/app/music/list/module/CommonThreadHandler$CheckMetadataParam;->this$0:Lcom/pantech/app/music/list/module/CommonThreadHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    iput-wide p2, p0, Lcom/pantech/app/music/list/module/CommonThreadHandler$CheckMetadataParam;->audioID:J

    .line 151
    iput-object p4, p0, Lcom/pantech/app/music/list/module/CommonThreadHandler$CheckMetadataParam;->szPath:Ljava/lang/String;

    .line 152
    return-void
.end method
