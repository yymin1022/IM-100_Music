.class Lcom/pantech/app/music/assist/MusicVolumeControl$1;
.super Ljava/lang/Object;
.source "MusicVolumeControl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/music/assist/MusicVolumeControl;
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
    .line 46
    iput-object p1, p0, Lcom/pantech/app/music/assist/MusicVolumeControl$1;->this$0:Lcom/pantech/app/music/assist/MusicVolumeControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 49
    iget-object v0, p0, Lcom/pantech/app/music/assist/MusicVolumeControl$1;->this$0:Lcom/pantech/app/music/assist/MusicVolumeControl;

    invoke-virtual {v0}, Lcom/pantech/app/music/assist/MusicVolumeControl;->closeControl()V

    .line 50
    return-void
.end method
