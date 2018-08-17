.class Lcom/pantech/app/music/player/MusicPlaybackActivity$15;
.super Ljava/lang/Object;
.source "MusicPlaybackActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/app/music/player/MusicPlaybackActivity;->deleteSong()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;


# direct methods
.method constructor <init>(Lcom/pantech/app/music/player/MusicPlaybackActivity;)V
    .registers 2

    .prologue
    .line 1835
    iput-object p1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$15;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    .line 1838
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 1839
    return-void
.end method
