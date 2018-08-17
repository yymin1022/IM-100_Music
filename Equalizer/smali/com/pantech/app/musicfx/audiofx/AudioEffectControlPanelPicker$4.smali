.class Lcom/pantech/app/musicfx/audiofx/AudioEffectControlPanelPicker$4;
.super Ljava/lang/Object;
.source "AudioEffectControlPanelPicker.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


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


# direct methods
.method constructor <init>(Lcom/pantech/app/musicfx/audiofx/AudioEffectControlPanelPicker;)V
    .registers 2

    .prologue
    .line 165
    iput-object p1, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectControlPanelPicker$4;->this$0:Lcom/pantech/app/musicfx/audiofx/AudioEffectControlPanelPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 169
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 170
    iget-object v0, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectControlPanelPicker$4;->this$0:Lcom/pantech/app/musicfx/audiofx/AudioEffectControlPanelPicker;

    invoke-virtual {v0}, Lcom/pantech/app/musicfx/audiofx/AudioEffectControlPanelPicker;->finish()V

    .line 171
    return-void
.end method
