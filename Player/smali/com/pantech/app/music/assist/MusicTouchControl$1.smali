.class Lcom/pantech/app/music/assist/MusicTouchControl$1;
.super Ljava/lang/Object;
.source "MusicTouchControl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/music/assist/MusicTouchControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/music/assist/MusicTouchControl;


# direct methods
.method constructor <init>(Lcom/pantech/app/music/assist/MusicTouchControl;)V
    .registers 2

    .prologue
    .line 273
    iput-object p1, p0, Lcom/pantech/app/music/assist/MusicTouchControl$1;->this$0:Lcom/pantech/app/music/assist/MusicTouchControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 276
    iget-object v0, p0, Lcom/pantech/app/music/assist/MusicTouchControl$1;->this$0:Lcom/pantech/app/music/assist/MusicTouchControl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/pantech/app/music/assist/MusicTouchControl;->access$002(Lcom/pantech/app/music/assist/MusicTouchControl;Z)Z

    .line 277
    iget-object v0, p0, Lcom/pantech/app/music/assist/MusicTouchControl$1;->this$0:Lcom/pantech/app/music/assist/MusicTouchControl;

    invoke-static {v0}, Lcom/pantech/app/music/assist/MusicTouchControl;->access$100(Lcom/pantech/app/music/assist/MusicTouchControl;)Lcom/pantech/app/music/assist/MusicTouchControl$OnTouchListener;

    move-result-object v0

    iget-object v1, p0, Lcom/pantech/app/music/assist/MusicTouchControl$1;->this$0:Lcom/pantech/app/music/assist/MusicTouchControl;

    invoke-interface {v0, v1}, Lcom/pantech/app/music/assist/MusicTouchControl$OnTouchListener;->onTouchSelect(Lcom/pantech/app/music/assist/MusicTouchControl;)V

    .line 278
    return-void
.end method
