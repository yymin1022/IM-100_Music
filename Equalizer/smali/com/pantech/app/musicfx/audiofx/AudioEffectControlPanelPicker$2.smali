.class Lcom/pantech/app/musicfx/audiofx/AudioEffectControlPanelPicker$2;
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
    .line 144
    iput-object p1, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectControlPanelPicker$2;->this$0:Lcom/pantech/app/musicfx/audiofx/AudioEffectControlPanelPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .param p1, "arg0"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    .line 148
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 149
    iget-object v0, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectControlPanelPicker$2;->this$0:Lcom/pantech/app/musicfx/audiofx/AudioEffectControlPanelPicker;

    invoke-virtual {v0}, Lcom/pantech/app/musicfx/audiofx/AudioEffectControlPanelPicker;->finish()V

    .line 150
    return-void
.end method
