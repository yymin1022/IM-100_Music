.class Lcom/pantech/app/music/library/activity/ShortCutActivity$2$1;
.super Ljava/lang/Object;
.source "ShortCutActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/app/music/library/activity/ShortCutActivity$2;->onDismiss(Landroid/content/DialogInterface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/pantech/app/music/library/activity/ShortCutActivity$2;


# direct methods
.method constructor <init>(Lcom/pantech/app/music/library/activity/ShortCutActivity$2;)V
    .registers 2

    .prologue
    .line 123
    iput-object p1, p0, Lcom/pantech/app/music/library/activity/ShortCutActivity$2$1;->this$1:Lcom/pantech/app/music/library/activity/ShortCutActivity$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 126
    iget-object v0, p0, Lcom/pantech/app/music/library/activity/ShortCutActivity$2$1;->this$1:Lcom/pantech/app/music/library/activity/ShortCutActivity$2;

    iget-object v0, v0, Lcom/pantech/app/music/library/activity/ShortCutActivity$2;->this$0:Lcom/pantech/app/music/library/activity/ShortCutActivity;

    invoke-virtual {v0}, Lcom/pantech/app/music/library/activity/ShortCutActivity;->finish()V

    .line 127
    return-void
.end method
