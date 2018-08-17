.class Lcom/pantech/app/music/player/AudioPreview$4;
.super Ljava/lang/Object;
.source "AudioPreview.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/app/music/player/AudioPreview;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/music/player/AudioPreview;


# direct methods
.method constructor <init>(Lcom/pantech/app/music/player/AudioPreview;)V
    .registers 2

    .prologue
    .line 726
    iput-object p1, p0, Lcom/pantech/app/music/player/AudioPreview$4;->this$0:Lcom/pantech/app/music/player/AudioPreview;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 729
    iget-object v0, p0, Lcom/pantech/app/music/player/AudioPreview$4;->this$0:Lcom/pantech/app/music/player/AudioPreview;

    invoke-static {v0}, Lcom/pantech/app/music/player/AudioPreview;->access$300(Lcom/pantech/app/music/player/AudioPreview;)V

    .line 730
    return-void
.end method
