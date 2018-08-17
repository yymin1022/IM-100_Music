.class Lcom/pantech/app/music/assist/MusicAutoStopControl$2;
.super Ljava/lang/Object;
.source "MusicAutoStopControl.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/app/music/assist/MusicAutoStopControl;->showMenuDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/music/assist/MusicAutoStopControl;


# direct methods
.method constructor <init>(Lcom/pantech/app/music/assist/MusicAutoStopControl;)V
    .registers 2

    .prologue
    .line 94
    iput-object p1, p0, Lcom/pantech/app/music/assist/MusicAutoStopControl$2;->this$0:Lcom/pantech/app/music/assist/MusicAutoStopControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 97
    const-string v0, "MusicAutoStopControl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClick:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    iget-object v0, p0, Lcom/pantech/app/music/assist/MusicAutoStopControl$2;->this$0:Lcom/pantech/app/music/assist/MusicAutoStopControl;

    invoke-static {v0, p2}, Lcom/pantech/app/music/assist/MusicAutoStopControl;->access$000(Lcom/pantech/app/music/assist/MusicAutoStopControl;I)V

    .line 99
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 100
    return-void
.end method
