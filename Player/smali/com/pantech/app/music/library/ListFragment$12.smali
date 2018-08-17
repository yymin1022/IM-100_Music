.class Lcom/pantech/app/music/library/ListFragment$12;
.super Landroid/content/BroadcastReceiver;
.source "ListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/music/library/ListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/music/library/ListFragment;


# direct methods
.method constructor <init>(Lcom/pantech/app/music/library/ListFragment;)V
    .registers 2

    .prologue
    .line 1115
    iput-object p1, p0, Lcom/pantech/app/music/library/ListFragment$12;->this$0:Lcom/pantech/app/music/library/ListFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1118
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1119
    .local v0, "action":Ljava/lang/String;
    if-nez v0, :cond_7

    .line 1127
    :cond_6
    :goto_6
    return-void

    .line 1121
    :cond_7
    const-string v1, "ListFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "=>broadcast: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/music/utils/MLog;->debugE(Ljava/lang/String;Ljava/lang/String;)V

    .line 1122
    const-string v1, "com.pantech.app.music.action.LISTCHANGETITLE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1123
    iget-object v1, p0, Lcom/pantech/app/music/library/ListFragment$12;->this$0:Lcom/pantech/app/music/library/ListFragment;

    iget-object v1, v1, Lcom/pantech/app/music/library/ListFragment;->mCursorLoader:Landroid/content/CursorLoader;

    if-eqz v1, :cond_6

    .line 1124
    iget-object v1, p0, Lcom/pantech/app/music/library/ListFragment$12;->this$0:Lcom/pantech/app/music/library/ListFragment;

    iget-object v1, v1, Lcom/pantech/app/music/library/ListFragment;->mCursorLoader:Landroid/content/CursorLoader;

    invoke-virtual {v1}, Landroid/content/CursorLoader;->forceLoad()V

    goto :goto_6
.end method
