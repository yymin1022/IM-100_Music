.class public Lcom/pantech/app/music/properties/MusicPropertiesActivity$TagHandler;
.super Landroid/os/Handler;
.source "MusicPropertiesActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/music/properties/MusicPropertiesActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TagHandler"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 492
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 495
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_c

    .line 501
    :goto_5
    return-void

    .line 498
    :pswitch_6
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/pantech/app/music/properties/MusicPropertiesActivity;->access$502(Z)Z

    goto :goto_5

    .line 495
    nop

    :pswitch_data_c
    .packed-switch 0xa
        :pswitch_6
    .end packed-switch
.end method
