.class public Lcom/pantech/app/music/view/SkyWheelSortingPickerDialog;
.super Landroid/app/AlertDialog;
.source "SkyWheelSortingPickerDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Lcom/pantech/app/music/view/SkyWheelSortingPicker$OnSortChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/app/music/view/SkyWheelSortingPickerDialog$OnSortSetListener;
    }
.end annotation


# instance fields
.field private final mCallback:Lcom/pantech/app/music/view/SkyWheelSortingPickerDialog$OnSortSetListener;

.field private final mSortPicker:Lcom/pantech/app/music/view/SkyWheelSortingPicker;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/pantech/app/music/view/SkyWheelSortingPickerDialog$OnSortSetListener;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I
    .param p3, "callBack"    # Lcom/pantech/app/music/view/SkyWheelSortingPickerDialog$OnSortSetListener;

    .prologue
    .line 67
    invoke-direct {p0, p1, p2}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 69
    move-object v1, p1

    .line 71
    .local v1, "themeContext":Landroid/content/Context;
    iput-object p3, p0, Lcom/pantech/app/music/view/SkyWheelSortingPickerDialog;->mCallback:Lcom/pantech/app/music/view/SkyWheelSortingPickerDialog$OnSortSetListener;

    .line 73
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/pantech/app/music/view/SkyWheelSortingPickerDialog;->setIcon(I)V

    .line 74
    const v3, 0x7f080044

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/pantech/app/music/view/SkyWheelSortingPickerDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 76
    const/4 v3, -0x1

    const v4, 0x7f08001b

    invoke-virtual {v1, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {p0, v3, v4, p0}, Lcom/pantech/app/music/view/SkyWheelSortingPickerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 77
    const/4 v3, -0x2

    const v4, 0x7f0800af

    invoke-virtual {v1, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {p0, v3, v4, p0}, Lcom/pantech/app/music/view/SkyWheelSortingPickerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 79
    const-string v3, "layout_inflater"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 80
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v3, 0x7f0300b6

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 82
    .local v2, "view":Landroid/view/View;
    invoke-virtual {p0, v2}, Lcom/pantech/app/music/view/SkyWheelSortingPickerDialog;->setView(Landroid/view/View;)V

    .line 83
    const v3, 0x7f1001a8

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/pantech/app/music/view/SkyWheelSortingPicker;

    iput-object v3, p0, Lcom/pantech/app/music/view/SkyWheelSortingPickerDialog;->mSortPicker:Lcom/pantech/app/music/view/SkyWheelSortingPicker;

    .line 86
    iget-object v3, p0, Lcom/pantech/app/music/view/SkyWheelSortingPickerDialog;->mSortPicker:Lcom/pantech/app/music/view/SkyWheelSortingPicker;

    invoke-virtual {v3, p0}, Lcom/pantech/app/music/view/SkyWheelSortingPicker;->setOnSortChangedListener(Lcom/pantech/app/music/view/SkyWheelSortingPicker$OnSortChangedListener;)V

    .line 87
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/pantech/app/music/view/SkyWheelSortingPickerDialog$OnSortSetListener;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callBack"    # Lcom/pantech/app/music/view/SkyWheelSortingPickerDialog$OnSortSetListener;

    .prologue
    .line 56
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/pantech/app/music/view/SkyWheelSortingPickerDialog;-><init>(Landroid/content/Context;ILcom/pantech/app/music/view/SkyWheelSortingPickerDialog$OnSortSetListener;)V

    .line 57
    return-void
.end method

.method private tryNotifyTimeSet(I)V
    .registers 6
    .param p1, "which"    # I

    .prologue
    .line 103
    iget-object v0, p0, Lcom/pantech/app/music/view/SkyWheelSortingPickerDialog;->mCallback:Lcom/pantech/app/music/view/SkyWheelSortingPickerDialog$OnSortSetListener;

    if-eqz v0, :cond_1c

    .line 104
    iget-object v0, p0, Lcom/pantech/app/music/view/SkyWheelSortingPickerDialog;->mSortPicker:Lcom/pantech/app/music/view/SkyWheelSortingPicker;

    invoke-virtual {v0}, Lcom/pantech/app/music/view/SkyWheelSortingPicker;->clearFocus()V

    .line 105
    iget-object v0, p0, Lcom/pantech/app/music/view/SkyWheelSortingPickerDialog;->mCallback:Lcom/pantech/app/music/view/SkyWheelSortingPickerDialog$OnSortSetListener;

    iget-object v1, p0, Lcom/pantech/app/music/view/SkyWheelSortingPickerDialog;->mSortPicker:Lcom/pantech/app/music/view/SkyWheelSortingPicker;

    iget-object v2, p0, Lcom/pantech/app/music/view/SkyWheelSortingPickerDialog;->mSortPicker:Lcom/pantech/app/music/view/SkyWheelSortingPicker;

    invoke-virtual {v2}, Lcom/pantech/app/music/view/SkyWheelSortingPicker;->getCurrentMainType()I

    move-result v2

    iget-object v3, p0, Lcom/pantech/app/music/view/SkyWheelSortingPickerDialog;->mSortPicker:Lcom/pantech/app/music/view/SkyWheelSortingPicker;

    invoke-virtual {v3}, Lcom/pantech/app/music/view/SkyWheelSortingPicker;->getCurrentSubType()I

    move-result v3

    invoke-interface {v0, v1, v2, v3, p1}, Lcom/pantech/app/music/view/SkyWheelSortingPickerDialog$OnSortSetListener;->onSortSet(Lcom/pantech/app/music/view/SkyWheelSortingPicker;III)V

    .line 107
    :cond_1c
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 97
    invoke-direct {p0, p2}, Lcom/pantech/app/music/view/SkyWheelSortingPickerDialog;->tryNotifyTimeSet(I)V

    .line 98
    invoke-virtual {p0}, Lcom/pantech/app/music/view/SkyWheelSortingPickerDialog;->dismiss()V

    .line 99
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 90
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 92
    invoke-virtual {p0}, Lcom/pantech/app/music/view/SkyWheelSortingPickerDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x402

    const/16 v2, 0x397

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setLayout(II)V

    .line 93
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 128
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 129
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .registers 2

    .prologue
    .line 122
    invoke-super {p0}, Landroid/app/AlertDialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    .line 123
    .local v0, "state":Landroid/os/Bundle;
    return-object v0
.end method

.method public onSortChanged(Lcom/pantech/app/music/view/SkyWheelSortingPicker;II)V
    .registers 5
    .param p1, "view"    # Lcom/pantech/app/music/view/SkyWheelSortingPicker;
    .param p2, "type"    # I
    .param p3, "option"    # I

    .prologue
    .line 133
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/pantech/app/music/view/SkyWheelSortingPickerDialog;->tryNotifyTimeSet(I)V

    .line 134
    return-void
.end method

.method protected onStop()V
    .registers 2

    .prologue
    .line 116
    invoke-super {p0}, Landroid/app/AlertDialog;->onStop()V

    .line 117
    iget-object v0, p0, Lcom/pantech/app/music/view/SkyWheelSortingPickerDialog;->mSortPicker:Lcom/pantech/app/music/view/SkyWheelSortingPicker;

    invoke-virtual {v0}, Lcom/pantech/app/music/view/SkyWheelSortingPicker;->clearFocus()V

    .line 118
    return-void
.end method
