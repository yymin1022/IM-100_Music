.class Lcom/pantech/app/music/assist/MusicEQControl$4;
.super Ljava/lang/Object;
.source "MusicEQControl.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/app/music/assist/MusicEQControl;->showPopupList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/music/assist/MusicEQControl;


# direct methods
.method constructor <init>(Lcom/pantech/app/music/assist/MusicEQControl;)V
    .registers 2

    .prologue
    .line 312
    iput-object p1, p0, Lcom/pantech/app/music/assist/MusicEQControl$4;->this$0:Lcom/pantech/app/music/assist/MusicEQControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 316
    iget-object v0, p0, Lcom/pantech/app/music/assist/MusicEQControl$4;->this$0:Lcom/pantech/app/music/assist/MusicEQControl;

    invoke-static {v0}, Lcom/pantech/app/music/assist/MusicEQControl;->access$000(Lcom/pantech/app/music/assist/MusicEQControl;)I

    move-result v0

    iget-object v1, p0, Lcom/pantech/app/music/assist/MusicEQControl$4;->this$0:Lcom/pantech/app/music/assist/MusicEQControl;

    invoke-static {v1}, Lcom/pantech/app/music/assist/MusicEQControl;->access$500(Lcom/pantech/app/music/assist/MusicEQControl;)I

    move-result v1

    if-eq v0, v1, :cond_5c

    .line 318
    const-string v0, "MusicEQControl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MusicEQSetting:: onCancel setPreset tempPreset: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/music/assist/MusicEQControl$4;->this$0:Lcom/pantech/app/music/assist/MusicEQControl;

    invoke-static {v2}, Lcom/pantech/app/music/assist/MusicEQControl;->access$000(Lcom/pantech/app/music/assist/MusicEQControl;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    const-string v0, "MusicEQControl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MusicEQSetting:: onCancel setPreset menuPreset: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/music/assist/MusicEQControl$4;->this$0:Lcom/pantech/app/music/assist/MusicEQControl;

    invoke-static {v2}, Lcom/pantech/app/music/assist/MusicEQControl;->access$500(Lcom/pantech/app/music/assist/MusicEQControl;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    iget-object v0, p0, Lcom/pantech/app/music/assist/MusicEQControl$4;->this$0:Lcom/pantech/app/music/assist/MusicEQControl;

    iget-object v1, p0, Lcom/pantech/app/music/assist/MusicEQControl$4;->this$0:Lcom/pantech/app/music/assist/MusicEQControl;

    invoke-static {v1}, Lcom/pantech/app/music/assist/MusicEQControl;->access$500(Lcom/pantech/app/music/assist/MusicEQControl;)I

    move-result v1

    iget-object v2, p0, Lcom/pantech/app/music/assist/MusicEQControl$4;->this$0:Lcom/pantech/app/music/assist/MusicEQControl;

    invoke-static {v2}, Lcom/pantech/app/music/assist/MusicEQControl;->access$200(Lcom/pantech/app/music/assist/MusicEQControl;)I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/pantech/app/music/assist/MusicEQControl;->access$300(Lcom/pantech/app/music/assist/MusicEQControl;IIZ)V

    .line 322
    :cond_5c
    return-void
.end method
