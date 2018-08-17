.class Lcom/pantech/app/music/assist/MusicEQControl$2;
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
    .line 284
    iput-object p1, p0, Lcom/pantech/app/music/assist/MusicEQControl$2;->this$0:Lcom/pantech/app/music/assist/MusicEQControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3
    .param p1, "arg0"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    .line 288
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 289
    return-void
.end method
