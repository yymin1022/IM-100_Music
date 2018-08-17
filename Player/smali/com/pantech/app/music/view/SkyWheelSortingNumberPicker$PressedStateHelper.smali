.class Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker$PressedStateHelper;
.super Ljava/lang/Object;
.source "SkyWheelSortingNumberPicker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PressedStateHelper"
.end annotation


# static fields
.field public static final BUTTON_DECREMENT:I = 0x2

.field public static final BUTTON_INCREMENT:I = 0x1


# instance fields
.field private final MODE_PRESS:I

.field private final MODE_TAPPED:I

.field private mManagedButton:I

.field private mMode:I

.field final synthetic this$0:Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;


# direct methods
.method constructor <init>(Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;)V
    .registers 3

    .prologue
    .line 1956
    iput-object p1, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker$PressedStateHelper;->this$0:Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1960
    const/4 v0, 0x1

    iput v0, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker$PressedStateHelper;->MODE_PRESS:I

    .line 1961
    const/4 v0, 0x2

    iput v0, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker$PressedStateHelper;->MODE_TAPPED:I

    return-void
.end method


# virtual methods
.method public buttonPressDelayed(I)V
    .registers 6
    .param p1, "button"    # I

    .prologue
    .line 1994
    invoke-virtual {p0}, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker$PressedStateHelper;->cancel()V

    .line 1995
    const/4 v0, 0x1

    iput v0, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker$PressedStateHelper;->mMode:I

    .line 1996
    iput p1, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker$PressedStateHelper;->mManagedButton:I

    .line 1997
    iget-object v0, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker$PressedStateHelper;->this$0:Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, p0, v2, v3}, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1998
    return-void
.end method

.method public buttonTapped(I)V
    .registers 3
    .param p1, "button"    # I

    .prologue
    .line 2001
    invoke-virtual {p0}, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker$PressedStateHelper;->cancel()V

    .line 2002
    const/4 v0, 0x2

    iput v0, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker$PressedStateHelper;->mMode:I

    .line 2003
    iput p1, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker$PressedStateHelper;->mManagedButton:I

    .line 2004
    iget-object v0, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker$PressedStateHelper;->this$0:Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;

    invoke-virtual {v0, p0}, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->post(Ljava/lang/Runnable;)Z

    .line 2005
    return-void
.end method

.method public cancel()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 1967
    iput v4, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker$PressedStateHelper;->mMode:I

    .line 1968
    iput v4, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker$PressedStateHelper;->mManagedButton:I

    .line 1969
    iget-object v0, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker$PressedStateHelper;->this$0:Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;

    invoke-virtual {v0, p0}, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1970
    iget-object v0, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker$PressedStateHelper;->this$0:Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;

    invoke-static {v0}, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->access$800(Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;)Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 1971
    iget-object v0, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker$PressedStateHelper;->this$0:Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;

    invoke-static {v0, v4}, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->access$802(Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;Z)Z

    .line 1973
    iget-object v0, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker$PressedStateHelper;->this$0:Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;

    iget-object v1, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker$PressedStateHelper;->this$0:Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;

    invoke-virtual {v1}, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->getRight()I

    move-result v1

    iget-object v2, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker$PressedStateHelper;->this$0:Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;

    invoke-static {v2}, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->access$900(Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;)I

    move-result v2

    invoke-virtual {v0, v4, v4, v1, v2}, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->invalidate(IIII)V

    .line 1982
    :goto_28
    iget-object v0, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker$PressedStateHelper;->this$0:Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;

    invoke-static {v0}, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->access$1000(Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;)Z

    move-result v0

    if-eqz v0, :cond_53

    .line 1984
    iget-object v0, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker$PressedStateHelper;->this$0:Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;

    invoke-static {v0, v4}, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->access$1002(Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;Z)Z

    .line 1987
    iget-object v0, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker$PressedStateHelper;->this$0:Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;

    iget-object v1, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker$PressedStateHelper;->this$0:Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;

    invoke-static {v1}, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->access$1100(Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;)I

    move-result v1

    iget-object v2, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker$PressedStateHelper;->this$0:Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;

    invoke-virtual {v2}, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->getRight()I

    move-result v2

    iget-object v3, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker$PressedStateHelper;->this$0:Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;

    invoke-virtual {v3}, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->getBottom()I

    move-result v3

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->invalidate(IIII)V

    .line 1991
    :goto_4c
    return-void

    .line 1975
    :cond_4d
    iget-object v0, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker$PressedStateHelper;->this$0:Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;

    invoke-virtual {v0}, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->invalidate()V

    goto :goto_28

    .line 1989
    :cond_53
    iget-object v0, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker$PressedStateHelper;->this$0:Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;

    invoke-virtual {v0}, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->invalidate()V

    goto :goto_4c
.end method

.method public run()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2009
    iget v0, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker$PressedStateHelper;->mMode:I

    packed-switch v0, :pswitch_data_a2

    .line 2045
    :goto_7
    return-void

    .line 2011
    :pswitch_8
    iget v0, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker$PressedStateHelper;->mManagedButton:I

    packed-switch v0, :pswitch_data_aa

    goto :goto_7

    .line 2013
    :pswitch_e
    iget-object v0, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker$PressedStateHelper;->this$0:Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;

    invoke-static {v0, v5}, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->access$802(Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;Z)Z

    .line 2014
    iget-object v0, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker$PressedStateHelper;->this$0:Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;

    iget-object v1, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker$PressedStateHelper;->this$0:Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;

    invoke-static {v1}, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->access$1100(Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;)I

    move-result v1

    iget-object v2, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker$PressedStateHelper;->this$0:Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;

    invoke-virtual {v2}, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->getRight()I

    move-result v2

    iget-object v3, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker$PressedStateHelper;->this$0:Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;

    invoke-virtual {v3}, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->getBottom()I

    move-result v3

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->invalidate(IIII)V

    goto :goto_7

    .line 2017
    :pswitch_2b
    iget-object v0, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker$PressedStateHelper;->this$0:Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;

    invoke-static {v0, v5}, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->access$1002(Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;Z)Z

    .line 2018
    iget-object v0, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker$PressedStateHelper;->this$0:Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;

    iget-object v1, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker$PressedStateHelper;->this$0:Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;

    invoke-virtual {v1}, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->getRight()I

    move-result v1

    iget-object v2, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker$PressedStateHelper;->this$0:Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;

    invoke-static {v2}, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->access$900(Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;)I

    move-result v2

    invoke-virtual {v0, v4, v4, v1, v2}, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->invalidate(IIII)V

    goto :goto_7

    .line 2023
    :pswitch_42
    iget v0, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker$PressedStateHelper;->mManagedButton:I

    packed-switch v0, :pswitch_data_b2

    goto :goto_7

    .line 2025
    :pswitch_48
    iget-object v0, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker$PressedStateHelper;->this$0:Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;

    invoke-static {v0}, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->access$800(Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;)Z

    move-result v0

    if-nez v0, :cond_5a

    .line 2026
    iget-object v0, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker$PressedStateHelper;->this$0:Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;

    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, p0, v2, v3}, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2029
    :cond_5a
    iget-object v0, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker$PressedStateHelper;->this$0:Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;

    invoke-static {v0, v5}, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->access$880(Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;I)Z

    .line 2031
    iget-object v0, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker$PressedStateHelper;->this$0:Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;

    iget-object v1, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker$PressedStateHelper;->this$0:Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;

    invoke-virtual {v1}, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->getRight()I

    move-result v1

    iget-object v2, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker$PressedStateHelper;->this$0:Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;

    invoke-static {v2}, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->access$900(Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;)I

    move-result v2

    invoke-virtual {v0, v4, v4, v1, v2}, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->invalidate(IIII)V

    goto :goto_7

    .line 2034
    :pswitch_71
    iget-object v0, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker$PressedStateHelper;->this$0:Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;

    invoke-static {v0}, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->access$1000(Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;)Z

    move-result v0

    if-nez v0, :cond_83

    .line 2035
    iget-object v0, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker$PressedStateHelper;->this$0:Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;

    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, p0, v2, v3}, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2038
    :cond_83
    iget-object v0, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker$PressedStateHelper;->this$0:Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;

    invoke-static {v0, v5}, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->access$1080(Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;I)Z

    .line 2040
    iget-object v0, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker$PressedStateHelper;->this$0:Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;

    iget-object v1, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker$PressedStateHelper;->this$0:Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;

    invoke-static {v1}, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->access$1100(Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;)I

    move-result v1

    iget-object v2, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker$PressedStateHelper;->this$0:Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;

    invoke-virtual {v2}, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->getRight()I

    move-result v2

    iget-object v3, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker$PressedStateHelper;->this$0:Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;

    invoke-virtual {v3}, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->getBottom()I

    move-result v3

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->invalidate(IIII)V

    goto/16 :goto_7

    .line 2009
    nop

    :pswitch_data_a2
    .packed-switch 0x1
        :pswitch_8
        :pswitch_42
    .end packed-switch

    .line 2011
    :pswitch_data_aa
    .packed-switch 0x1
        :pswitch_e
        :pswitch_2b
    .end packed-switch

    .line 2023
    :pswitch_data_b2
    .packed-switch 0x1
        :pswitch_48
        :pswitch_71
    .end packed-switch
.end method
