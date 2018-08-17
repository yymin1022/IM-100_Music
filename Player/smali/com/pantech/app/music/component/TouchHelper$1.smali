.class Lcom/pantech/app/music/component/TouchHelper$1;
.super Ljava/lang/Object;
.source "TouchHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/music/component/TouchHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/music/component/TouchHelper;


# direct methods
.method constructor <init>(Lcom/pantech/app/music/component/TouchHelper;)V
    .registers 2

    .prologue
    .line 275
    iput-object p1, p0, Lcom/pantech/app/music/component/TouchHelper$1;->this$0:Lcom/pantech/app/music/component/TouchHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 278
    iget-object v0, p0, Lcom/pantech/app/music/component/TouchHelper$1;->this$0:Lcom/pantech/app/music/component/TouchHelper;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/pantech/app/music/component/TouchHelper;->access$002(Lcom/pantech/app/music/component/TouchHelper;Z)Z

    .line 279
    iget-object v0, p0, Lcom/pantech/app/music/component/TouchHelper$1;->this$0:Lcom/pantech/app/music/component/TouchHelper;

    invoke-static {v0}, Lcom/pantech/app/music/component/TouchHelper;->access$100(Lcom/pantech/app/music/component/TouchHelper;)Lcom/pantech/app/music/component/TouchHelper$OnTouchHandleListener;

    move-result-object v0

    iget-object v1, p0, Lcom/pantech/app/music/component/TouchHelper$1;->this$0:Lcom/pantech/app/music/component/TouchHelper;

    invoke-interface {v0, v1}, Lcom/pantech/app/music/component/TouchHelper$OnTouchHandleListener;->onTouchSelect(Lcom/pantech/app/music/component/TouchHelper;)V

    .line 280
    return-void
.end method
