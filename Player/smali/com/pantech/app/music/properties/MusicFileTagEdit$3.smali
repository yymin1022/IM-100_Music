.class Lcom/pantech/app/music/properties/MusicFileTagEdit$3;
.super Ljava/lang/Object;
.source "MusicFileTagEdit.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/app/music/properties/MusicFileTagEdit;->showDialogForTagEdit(ILcom/pantech/app/music/properties/MusicFileTagEditData;Z)V
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
    .line 327
    iput-object p1, p0, Lcom/pantech/app/music/properties/MusicFileTagEdit$3;->this$0:Lcom/pantech/app/music/properties/MusicFileTagEdit;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 332
    iget-object v0, p0, Lcom/pantech/app/music/properties/MusicFileTagEdit$3;->this$0:Lcom/pantech/app/music/properties/MusicFileTagEdit;

    invoke-virtual {v0}, Lcom/pantech/app/music/properties/MusicFileTagEdit;->quitWorker()V

    .line 333
    return-void
.end method
