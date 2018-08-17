.class Lcom/pantech/app/music/properties/MusicFileTagEdit$5;
.super Ljava/lang/Object;
.source "MusicFileTagEdit.java"

# interfaces
.implements Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/app/music/properties/MusicFileTagEdit;->updateTagData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/music/properties/MusicFileTagEdit;


# direct methods
.method constructor <init>(Lcom/pantech/app/music/properties/MusicFileTagEdit;)V
    .registers 2

    .prologue
    .line 497
    iput-object p1, p0, Lcom/pantech/app/music/properties/MusicFileTagEdit$5;->this$0:Lcom/pantech/app/music/properties/MusicFileTagEdit;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMediaScannerConnected()V
    .registers 5

    .prologue
    .line 501
    const-string v1, "VMusicTagEdit"

    const-string v2, "onMediaScannerConnected()"

    invoke-static {v1, v2}, Lcom/pantech/app/music/utils/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 503
    iget-object v1, p0, Lcom/pantech/app/music/properties/MusicFileTagEdit$5;->this$0:Lcom/pantech/app/music/properties/MusicFileTagEdit;

    invoke-static {v1}, Lcom/pantech/app/music/properties/MusicFileTagEdit;->access$1400(Lcom/pantech/app/music/properties/MusicFileTagEdit;)Landroid/media/MediaScannerConnection;

    move-result-object v1

    if-eqz v1, :cond_30

    .line 505
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;->LOCATION:Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;

    invoke-virtual {v1}, Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 507
    .local v0, "f":Ljava/io/File;
    if-eqz v0, :cond_30

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_30

    .line 508
    iget-object v1, p0, Lcom/pantech/app/music/properties/MusicFileTagEdit$5;->this$0:Lcom/pantech/app/music/properties/MusicFileTagEdit;

    invoke-static {v1}, Lcom/pantech/app/music/properties/MusicFileTagEdit;->access$1400(Lcom/pantech/app/music/properties/MusicFileTagEdit;)Landroid/media/MediaScannerConnection;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaScannerConnection;->scanFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 510
    .end local v0    # "f":Ljava/io/File;
    :cond_30
    return-void
.end method

.method public onScanCompleted(Ljava/lang/String;Landroid/net/Uri;)V
    .registers 7
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v3, 0x3

    .line 515
    const-string v0, "VMusicTagEdit"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onScanCompleted(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 518
    iget-object v0, p0, Lcom/pantech/app/music/properties/MusicFileTagEdit$5;->this$0:Lcom/pantech/app/music/properties/MusicFileTagEdit;

    invoke-static {v0}, Lcom/pantech/app/music/properties/MusicFileTagEdit;->access$1200(Lcom/pantech/app/music/properties/MusicFileTagEdit;)Lcom/pantech/app/music/properties/MusicFileTagEdit$TagEditUIHandler;

    move-result-object v0

    if-eqz v0, :cond_3f

    .line 520
    iget-object v0, p0, Lcom/pantech/app/music/properties/MusicFileTagEdit$5;->this$0:Lcom/pantech/app/music/properties/MusicFileTagEdit;

    invoke-static {v0}, Lcom/pantech/app/music/properties/MusicFileTagEdit;->access$1200(Lcom/pantech/app/music/properties/MusicFileTagEdit;)Lcom/pantech/app/music/properties/MusicFileTagEdit$TagEditUIHandler;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/pantech/app/music/properties/MusicFileTagEdit$TagEditUIHandler;->removeMessages(I)V

    .line 521
    iget-object v0, p0, Lcom/pantech/app/music/properties/MusicFileTagEdit$5;->this$0:Lcom/pantech/app/music/properties/MusicFileTagEdit;

    invoke-static {v0}, Lcom/pantech/app/music/properties/MusicFileTagEdit;->access$1200(Lcom/pantech/app/music/properties/MusicFileTagEdit;)Lcom/pantech/app/music/properties/MusicFileTagEdit$TagEditUIHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/pantech/app/music/properties/MusicFileTagEdit$5;->this$0:Lcom/pantech/app/music/properties/MusicFileTagEdit;

    invoke-static {v1}, Lcom/pantech/app/music/properties/MusicFileTagEdit;->access$1200(Lcom/pantech/app/music/properties/MusicFileTagEdit;)Lcom/pantech/app/music/properties/MusicFileTagEdit$TagEditUIHandler;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/pantech/app/music/properties/MusicFileTagEdit$TagEditUIHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Lcom/pantech/app/music/properties/MusicFileTagEdit$TagEditUIHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 524
    :cond_3f
    iget-object v0, p0, Lcom/pantech/app/music/properties/MusicFileTagEdit$5;->this$0:Lcom/pantech/app/music/properties/MusicFileTagEdit;

    invoke-static {v0}, Lcom/pantech/app/music/properties/MusicFileTagEdit;->access$1400(Lcom/pantech/app/music/properties/MusicFileTagEdit;)Landroid/media/MediaScannerConnection;

    move-result-object v0

    if-eqz v0, :cond_50

    .line 525
    iget-object v0, p0, Lcom/pantech/app/music/properties/MusicFileTagEdit$5;->this$0:Lcom/pantech/app/music/properties/MusicFileTagEdit;

    invoke-static {v0}, Lcom/pantech/app/music/properties/MusicFileTagEdit;->access$1400(Lcom/pantech/app/music/properties/MusicFileTagEdit;)Landroid/media/MediaScannerConnection;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaScannerConnection;->disconnect()V

    .line 526
    :cond_50
    return-void
.end method
