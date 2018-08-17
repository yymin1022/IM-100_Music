.class Lcom/pantech/app/music/player/AudioPreview$rewRepeatListener;
.super Ljava/lang/Object;
.source "AudioPreview.java"

# interfaces
.implements Lcom/pantech/app/music/player/RepeatingImageButton$RepeatListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/music/player/AudioPreview;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "rewRepeatListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/music/player/AudioPreview;


# direct methods
.method private constructor <init>(Lcom/pantech/app/music/player/AudioPreview;)V
    .registers 2

    .prologue
    .line 1198
    iput-object p1, p0, Lcom/pantech/app/music/player/AudioPreview$rewRepeatListener;->this$0:Lcom/pantech/app/music/player/AudioPreview;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/pantech/app/music/player/AudioPreview;Lcom/pantech/app/music/player/AudioPreview$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/pantech/app/music/player/AudioPreview;
    .param p2, "x1"    # Lcom/pantech/app/music/player/AudioPreview$1;

    .prologue
    .line 1198
    invoke-direct {p0, p1}, Lcom/pantech/app/music/player/AudioPreview$rewRepeatListener;-><init>(Lcom/pantech/app/music/player/AudioPreview;)V

    return-void
.end method


# virtual methods
.method public onRepeat(Landroid/view/View;JI)V
    .registers 9
    .param p1, "v"    # Landroid/view/View;
    .param p2, "howlong"    # J
    .param p4, "repcnt"    # I

    .prologue
    .line 1201
    iget-object v1, p0, Lcom/pantech/app/music/player/AudioPreview$rewRepeatListener;->this$0:Lcom/pantech/app/music/player/AudioPreview;

    invoke-virtual {v1}, Lcom/pantech/app/music/player/AudioPreview;->isCallState()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 1202
    iget-object v1, p0, Lcom/pantech/app/music/player/AudioPreview$rewRepeatListener;->this$0:Lcom/pantech/app/music/player/AudioPreview;

    iget-object v2, p0, Lcom/pantech/app/music/player/AudioPreview$rewRepeatListener;->this$0:Lcom/pantech/app/music/player/AudioPreview;

    const v3, 0x7f0800c0

    invoke-virtual {v2, v3}, Lcom/pantech/app/music/player/AudioPreview;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/music/player/AudioPreview;->access$1200(Lcom/pantech/app/music/player/AudioPreview;Ljava/lang/String;)V

    .line 1208
    :cond_16
    :goto_16
    return-void

    .line 1203
    :cond_17
    iget-object v1, p0, Lcom/pantech/app/music/player/AudioPreview$rewRepeatListener;->this$0:Lcom/pantech/app/music/player/AudioPreview;

    invoke-static {v1}, Lcom/pantech/app/music/player/AudioPreview;->access$100(Lcom/pantech/app/music/player/AudioPreview;)Lcom/pantech/app/music/player/AudioPreview$PreviewPlayer;

    move-result-object v1

    if-eqz v1, :cond_16

    iget-object v1, p0, Lcom/pantech/app/music/player/AudioPreview$rewRepeatListener;->this$0:Lcom/pantech/app/music/player/AudioPreview;

    invoke-static {v1}, Lcom/pantech/app/music/player/AudioPreview;->access$100(Lcom/pantech/app/music/player/AudioPreview;)Lcom/pantech/app/music/player/AudioPreview$PreviewPlayer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pantech/app/music/player/AudioPreview$PreviewPlayer;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 1204
    iget-object v1, p0, Lcom/pantech/app/music/player/AudioPreview$rewRepeatListener;->this$0:Lcom/pantech/app/music/player/AudioPreview;

    invoke-static {v1}, Lcom/pantech/app/music/player/AudioPreview;->access$100(Lcom/pantech/app/music/player/AudioPreview;)Lcom/pantech/app/music/player/AudioPreview$PreviewPlayer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pantech/app/music/player/AudioPreview$PreviewPlayer;->getCurrentPosition()I

    move-result v1

    add-int/lit16 v0, v1, -0xbb8

    .line 1205
    .local v0, "newpos":I
    if-lez v0, :cond_43

    .line 1206
    :goto_39
    iget-object v1, p0, Lcom/pantech/app/music/player/AudioPreview$rewRepeatListener;->this$0:Lcom/pantech/app/music/player/AudioPreview;

    invoke-static {v1}, Lcom/pantech/app/music/player/AudioPreview;->access$100(Lcom/pantech/app/music/player/AudioPreview;)Lcom/pantech/app/music/player/AudioPreview$PreviewPlayer;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/pantech/app/music/player/AudioPreview$PreviewPlayer;->seekTo(I)V

    goto :goto_16

    .line 1205
    :cond_43
    const/4 v0, 0x0

    goto :goto_39
.end method
