.class Lcom/pantech/app/music/library/activity/ListSelectActivity$1;
.super Ljava/lang/Object;
.source "ListSelectActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/app/music/library/activity/ListSelectActivity;->onSupportActionModeFinished(Landroid/support/v7/view/ActionMode;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/music/library/activity/ListSelectActivity;


# direct methods
.method constructor <init>(Lcom/pantech/app/music/library/activity/ListSelectActivity;)V
    .registers 2

    .prologue
    .line 125
    iput-object p1, p0, Lcom/pantech/app/music/library/activity/ListSelectActivity$1;->this$0:Lcom/pantech/app/music/library/activity/ListSelectActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 128
    iget-object v0, p0, Lcom/pantech/app/music/library/activity/ListSelectActivity$1;->this$0:Lcom/pantech/app/music/library/activity/ListSelectActivity;

    iget-boolean v0, v0, Lcom/pantech/app/music/library/activity/ListSelectActivity;->mActionModeStarted:Z

    if-nez v0, :cond_b

    .line 129
    iget-object v0, p0, Lcom/pantech/app/music/library/activity/ListSelectActivity$1;->this$0:Lcom/pantech/app/music/library/activity/ListSelectActivity;

    invoke-virtual {v0}, Lcom/pantech/app/music/library/activity/ListSelectActivity;->finish()V

    .line 130
    :cond_b
    return-void
.end method
