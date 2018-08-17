.class Lcom/pantech/app/music/assist/MusicVolumeControl$2;
.super Ljava/lang/Object;
.source "MusicVolumeControl.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


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
    .line 72
    iput-object p1, p0, Lcom/pantech/app/music/assist/MusicVolumeControl$2;->this$0:Lcom/pantech/app/music/assist/MusicVolumeControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 4
    .param p1, "arg0"    # Landroid/view/View;
    .param p2, "arg1"    # Landroid/view/MotionEvent;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/pantech/app/music/assist/MusicVolumeControl$2;->this$0:Lcom/pantech/app/music/assist/MusicVolumeControl;

    invoke-static {v0}, Lcom/pantech/app/music/assist/MusicVolumeControl;->access$000(Lcom/pantech/app/music/assist/MusicVolumeControl;)V

    .line 76
    const/4 v0, 0x1

    return v0
.end method
