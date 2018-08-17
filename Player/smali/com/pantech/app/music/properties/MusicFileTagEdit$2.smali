.class Lcom/pantech/app/music/properties/MusicFileTagEdit$2;
.super Ljava/lang/Object;
.source "MusicFileTagEdit.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 317
    iput-object p1, p0, Lcom/pantech/app/music/properties/MusicFileTagEdit$2;->this$0:Lcom/pantech/app/music/properties/MusicFileTagEdit;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .param p1, "arg0"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    .line 321
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 322
    iget-object v0, p0, Lcom/pantech/app/music/properties/MusicFileTagEdit$2;->this$0:Lcom/pantech/app/music/properties/MusicFileTagEdit;

    invoke-virtual {v0}, Lcom/pantech/app/music/properties/MusicFileTagEdit;->quitWorker()V

    .line 323
    return-void
.end method
