.class Lcom/pantech/app/music/assist/MusicVolumeControl$3;
.super Ljava/lang/Object;
.source "MusicVolumeControl.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/app/music/assist/MusicVolumeControl;->setContentView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/music/assist/MusicVolumeControl;


# direct methods
.method constructor <init>(Lcom/pantech/app/music/assist/MusicVolumeControl;)V
    .registers 2

    .prologue
    .line 80
    iput-object p1, p0, Lcom/pantech/app/music/assist/MusicVolumeControl$3;->this$0:Lcom/pantech/app/music/assist/MusicVolumeControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x3

    .line 85
    iget-object v1, p0, Lcom/pantech/app/music/assist/MusicVolumeControl$3;->this$0:Lcom/pantech/app/music/assist/MusicVolumeControl;

    invoke-static {v1}, Lcom/pantech/app/music/assist/MusicVolumeControl;->access$100(Lcom/pantech/app/music/assist/MusicVolumeControl;)Landroid/media/AudioManager;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    .line 86
    .local v0, "volume":I
    iget-object v1, p0, Lcom/pantech/app/music/assist/MusicVolumeControl$3;->this$0:Lcom/pantech/app/music/assist/MusicVolumeControl;

    invoke-static {v1}, Lcom/pantech/app/music/assist/MusicVolumeControl;->access$100(Lcom/pantech/app/music/assist/MusicVolumeControl;)Landroid/media/AudioManager;

    move-result-object v1

    const/16 v2, 0x401

    invoke-virtual {v1, v3, v0, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 87
    return-void
.end method
