.class Lcom/pantech/app/music/library/helper/PlaylistHelper$3;
.super Ljava/lang/Object;
.source "PlaylistHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/app/music/library/helper/PlaylistHelper;->showPlayListEditDialog(JILcom/pantech/app/music/library/helper/PlaylistHelper$OnListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/music/library/helper/PlaylistHelper;


# direct methods
.method constructor <init>(Lcom/pantech/app/music/library/helper/PlaylistHelper;)V
    .registers 2

    .prologue
    .line 392
    iput-object p1, p0, Lcom/pantech/app/music/library/helper/PlaylistHelper$3;->this$0:Lcom/pantech/app/music/library/helper/PlaylistHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 394
    return-void
.end method
