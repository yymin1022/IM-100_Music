.class Lcom/pantech/app/music/library/activity/ShortCutActivity$3;
.super Ljava/lang/Object;
.source "ShortCutActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/app/music/library/activity/ShortCutActivity;->checkLoadingDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/music/library/activity/ShortCutActivity;


# direct methods
.method constructor <init>(Lcom/pantech/app/music/library/activity/ShortCutActivity;)V
    .registers 2

    .prologue
    .line 142
    iput-object p1, p0, Lcom/pantech/app/music/library/activity/ShortCutActivity$3;->this$0:Lcom/pantech/app/music/library/activity/ShortCutActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 145
    iget-object v0, p0, Lcom/pantech/app/music/library/activity/ShortCutActivity$3;->this$0:Lcom/pantech/app/music/library/activity/ShortCutActivity;

    iget-object v0, v0, Lcom/pantech/app/music/library/activity/ShortCutActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 146
    return-void
.end method
