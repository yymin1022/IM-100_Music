.class Lcom/pantech/app/music/assist/MusicAutoStopControl$1;
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
    .line 103
    iput-object p1, p0, Lcom/pantech/app/music/assist/MusicAutoStopControl$1;->this$0:Lcom/pantech/app/music/assist/MusicAutoStopControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 106
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 107
    return-void
.end method
