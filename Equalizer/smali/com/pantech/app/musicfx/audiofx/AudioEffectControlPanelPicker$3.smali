.class Lcom/pantech/app/musicfx/audiofx/AudioEffectControlPanelPicker$3;
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


# direct methods
.method constructor <init>(Lcom/pantech/app/musicfx/audiofx/AudioEffectControlPanelPicker;)V
    .registers 2

    .prologue
    .line 154
    iput-object p1, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectControlPanelPicker$3;->this$0:Lcom/pantech/app/musicfx/audiofx/AudioEffectControlPanelPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AudioEffectControlPanelPicker() onClick: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/pantech/app/musicfx/utils/MLog;->i(Ljava/lang/String;)V

    .line 160
    iget-object v0, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectControlPanelPicker$3;->this$0:Lcom/pantech/app/musicfx/audiofx/AudioEffectControlPanelPicker;

    invoke-static {v0, p2}, Lcom/pantech/app/musicfx/audiofx/AudioEffectControlPanelPicker;->access$002(Lcom/pantech/app/musicfx/audiofx/AudioEffectControlPanelPicker;I)I

    .line 161
    return-void
.end method
