.class Lcom/pantech/app/music/assist/MusicEQControl$3;
.super Ljava/lang/Object;
.source "MusicEQControl.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 293
    iput-object p1, p0, Lcom/pantech/app/music/assist/MusicEQControl$3;->this$0:Lcom/pantech/app/music/assist/MusicEQControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 7
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 297
    const-string v0, "MusicEQControl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MusicEQSetting::onClick onClick: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    iget-object v0, p0, Lcom/pantech/app/music/assist/MusicEQControl$3;->this$0:Lcom/pantech/app/music/assist/MusicEQControl;

    invoke-static {v0, p2}, Lcom/pantech/app/music/assist/MusicEQControl;->access$002(Lcom/pantech/app/music/assist/MusicEQControl;I)I

    .line 300
    iget-object v0, p0, Lcom/pantech/app/music/assist/MusicEQControl$3;->this$0:Lcom/pantech/app/music/assist/MusicEQControl;

    invoke-static {v0}, Lcom/pantech/app/music/assist/MusicEQControl;->access$100(Lcom/pantech/app/music/assist/MusicEQControl;)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 302
    iget-object v0, p0, Lcom/pantech/app/music/assist/MusicEQControl$3;->this$0:Lcom/pantech/app/music/assist/MusicEQControl;

    iget-object v1, p0, Lcom/pantech/app/music/assist/MusicEQControl$3;->this$0:Lcom/pantech/app/music/assist/MusicEQControl;

    invoke-static {v1}, Lcom/pantech/app/music/assist/MusicEQControl;->access$000(Lcom/pantech/app/music/assist/MusicEQControl;)I

    move-result v1

    iget-object v2, p0, Lcom/pantech/app/music/assist/MusicEQControl$3;->this$0:Lcom/pantech/app/music/assist/MusicEQControl;

    invoke-static {v2}, Lcom/pantech/app/music/assist/MusicEQControl;->access$200(Lcom/pantech/app/music/assist/MusicEQControl;)I

    move-result v2

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/pantech/app/music/assist/MusicEQControl;->access$300(Lcom/pantech/app/music/assist/MusicEQControl;IIZ)V

    .line 308
    :goto_37
    return-void

    .line 306
    :cond_38
    iget-object v0, p0, Lcom/pantech/app/music/assist/MusicEQControl$3;->this$0:Lcom/pantech/app/music/assist/MusicEQControl;

    invoke-static {v0}, Lcom/pantech/app/music/assist/MusicEQControl;->access$400(Lcom/pantech/app/music/assist/MusicEQControl;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f08012e

    invoke-static {v0, v1}, Lcom/pantech/app/music/common/MusicUtils;->showToast(Landroid/content/Context;I)V

    goto :goto_37
.end method
