.class public Lcom/pantech/app/music/picker/MusicPickerList$AudioFocusHelper;
.super Ljava/lang/Object;
.source "MusicPickerList.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/music/picker/MusicPickerList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AudioFocusHelper"
.end annotation


# instance fields
.field mAudioManager:Landroid/media/AudioManager;

.field final synthetic this$0:Lcom/pantech/app/music/picker/MusicPickerList;


# direct methods
.method public constructor <init>(Lcom/pantech/app/music/picker/MusicPickerList;)V
    .registers 3

    .prologue
    .line 950
    iput-object p1, p0, Lcom/pantech/app/music/picker/MusicPickerList$AudioFocusHelper;->this$0:Lcom/pantech/app/music/picker/MusicPickerList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 951
    const-string v0, "audio"

    invoke-virtual {p1, v0}, Lcom/pantech/app/music/picker/MusicPickerList;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/pantech/app/music/picker/MusicPickerList$AudioFocusHelper;->mAudioManager:Landroid/media/AudioManager;

    .line 952
    return-void
.end method


# virtual methods
.method public abandonFocus()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 979
    iget-object v1, p0, Lcom/pantech/app/music/picker/MusicPickerList$AudioFocusHelper;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, p0}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    move-result v1

    if-ne v0, v1, :cond_a

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public onAudioFocusChange(I)V
    .registers 3
    .param p1, "focusChange"    # I

    .prologue
    .line 956
    packed-switch p1, :pswitch_data_14

    .line 966
    :goto_3
    :pswitch_3
    return-void

    .line 962
    :pswitch_4
    iget-object v0, p0, Lcom/pantech/app/music/picker/MusicPickerList$AudioFocusHelper;->this$0:Lcom/pantech/app/music/picker/MusicPickerList;

    invoke-virtual {v0}, Lcom/pantech/app/music/picker/MusicPickerList;->stopMediaPlayer()V

    .line 963
    iget-object v0, p0, Lcom/pantech/app/music/picker/MusicPickerList$AudioFocusHelper;->this$0:Lcom/pantech/app/music/picker/MusicPickerList;

    invoke-virtual {v0}, Lcom/pantech/app/music/picker/MusicPickerList;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->invalidateViews()V

    goto :goto_3

    .line 956
    nop

    :pswitch_data_14
    .packed-switch -0x3
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public requestFocus()Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 969
    iget-object v1, p0, Lcom/pantech/app/music/picker/MusicPickerList$AudioFocusHelper;->mAudioManager:Landroid/media/AudioManager;

    const/4 v2, 0x3

    invoke-virtual {v1, p0, v2, v0}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v1

    if-ne v0, v1, :cond_b

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public requestTransientFocus()Z
    .registers 5

    .prologue
    const/4 v0, 0x1

    .line 974
    iget-object v1, p0, Lcom/pantech/app/music/picker/MusicPickerList$AudioFocusHelper;->mAudioManager:Landroid/media/AudioManager;

    const/4 v2, 0x3

    const/4 v3, 0x2

    invoke-virtual {v1, p0, v2, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v1

    if-ne v0, v1, :cond_c

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method
