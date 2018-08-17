.class Lcom/pantech/app/musicfx/audiofx/AudioEffectControlPanelPicker$1;
.super Ljava/lang/Object;
.source "AudioEffectControlPanelPicker.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/app/musicfx/audiofx/AudioEffectControlPanelPicker;->showPickerDialog([Ljava/lang/String;ILandroid/database/MatrixCursor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/musicfx/audiofx/AudioEffectControlPanelPicker;

.field final synthetic val$c:Landroid/database/MatrixCursor;


# direct methods
.method constructor <init>(Lcom/pantech/app/musicfx/audiofx/AudioEffectControlPanelPicker;Landroid/database/MatrixCursor;)V
    .registers 3

    .prologue
    .line 128
    iput-object p1, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectControlPanelPicker$1;->this$0:Lcom/pantech/app/musicfx/audiofx/AudioEffectControlPanelPicker;

    iput-object p2, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectControlPanelPicker$1;->val$c:Landroid/database/MatrixCursor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 7
    .param p1, "arg0"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    .line 132
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectControlPanelPicker$1;->this$0:Lcom/pantech/app/musicfx/audiofx/AudioEffectControlPanelPicker;

    const-class v2, Lcom/pantech/app/musicfx/audiofx/AudioEffectCompatibility$Service;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 133
    .local v0, "updateIntent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectControlPanelPicker$1;->val$c:Landroid/database/MatrixCursor;

    iget-object v2, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectControlPanelPicker$1;->this$0:Lcom/pantech/app/musicfx/audiofx/AudioEffectControlPanelPicker;

    invoke-static {v2}, Lcom/pantech/app/musicfx/audiofx/AudioEffectControlPanelPicker;->access$000(Lcom/pantech/app/musicfx/audiofx/AudioEffectControlPanelPicker;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/database/MatrixCursor;->moveToPosition(I)Z

    .line 134
    const-string v1, "com.pantech.app.musicfx.audiofx.defPackage"

    iget-object v2, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectControlPanelPicker$1;->val$c:Landroid/database/MatrixCursor;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/database/MatrixCursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 135
    const-string v1, "com.pantech.app.musicfx.audiofx.defName"

    iget-object v2, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectControlPanelPicker$1;->val$c:Landroid/database/MatrixCursor;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/database/MatrixCursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 136
    iget-object v1, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectControlPanelPicker$1;->this$0:Lcom/pantech/app/musicfx/audiofx/AudioEffectControlPanelPicker;

    invoke-virtual {v1, v0}, Lcom/pantech/app/musicfx/audiofx/AudioEffectControlPanelPicker;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 138
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 139
    iget-object v1, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectControlPanelPicker$1;->this$0:Lcom/pantech/app/musicfx/audiofx/AudioEffectControlPanelPicker;

    invoke-virtual {v1}, Lcom/pantech/app/musicfx/audiofx/AudioEffectControlPanelPicker;->finish()V

    .line 140
    return-void
.end method
