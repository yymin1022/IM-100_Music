.class Lcom/pantech/app/music/settings/SettingsActivity$4;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/app/music/settings/SettingsActivity;->startAudioEffectPanel()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/music/settings/SettingsActivity;


# direct methods
.method constructor <init>(Lcom/pantech/app/music/settings/SettingsActivity;)V
    .registers 2

    .prologue
    .line 366
    iput-object p1, p0, Lcom/pantech/app/music/settings/SettingsActivity$4;->this$0:Lcom/pantech/app/music/settings/SettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .registers 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 369
    packed-switch p2, :pswitch_data_a

    .line 374
    const/4 v0, 0x0

    :goto_4
    return v0

    .line 371
    :pswitch_5
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 372
    const/4 v0, 0x1

    goto :goto_4

    .line 369
    :pswitch_data_a
    .packed-switch 0x4
        :pswitch_5
    .end packed-switch
.end method
