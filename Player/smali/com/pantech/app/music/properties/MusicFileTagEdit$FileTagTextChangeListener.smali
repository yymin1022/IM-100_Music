.class Lcom/pantech/app/music/properties/MusicFileTagEdit$FileTagTextChangeListener;
.super Ljava/lang/Object;
.source "MusicFileTagEdit.java"

# interfaces
.implements Lcom/pantech/app/music/view/SkyEditText$onSpecialCharacterListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/music/properties/MusicFileTagEdit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FileTagTextChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/music/properties/MusicFileTagEdit;


# direct methods
.method private constructor <init>(Lcom/pantech/app/music/properties/MusicFileTagEdit;)V
    .registers 2

    .prologue
    .line 779
    iput-object p1, p0, Lcom/pantech/app/music/properties/MusicFileTagEdit$FileTagTextChangeListener;->this$0:Lcom/pantech/app/music/properties/MusicFileTagEdit;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/pantech/app/music/properties/MusicFileTagEdit;Lcom/pantech/app/music/properties/MusicFileTagEdit$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/pantech/app/music/properties/MusicFileTagEdit;
    .param p2, "x1"    # Lcom/pantech/app/music/properties/MusicFileTagEdit$1;

    .prologue
    .line 779
    invoke-direct {p0, p1}, Lcom/pantech/app/music/properties/MusicFileTagEdit$FileTagTextChangeListener;-><init>(Lcom/pantech/app/music/properties/MusicFileTagEdit;)V

    return-void
.end method


# virtual methods
.method public onFindSpecialCharacter()V
    .registers 3

    .prologue
    .line 789
    iget-object v0, p0, Lcom/pantech/app/music/properties/MusicFileTagEdit$FileTagTextChangeListener;->this$0:Lcom/pantech/app/music/properties/MusicFileTagEdit;

    invoke-static {v0}, Lcom/pantech/app/music/properties/MusicFileTagEdit;->access$700(Lcom/pantech/app/music/properties/MusicFileTagEdit;)Lcom/pantech/app/music/properties/MusicPropertiesActivity$OnTagEditCallback;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 790
    iget-object v0, p0, Lcom/pantech/app/music/properties/MusicFileTagEdit$FileTagTextChangeListener;->this$0:Lcom/pantech/app/music/properties/MusicFileTagEdit;

    invoke-static {v0}, Lcom/pantech/app/music/properties/MusicFileTagEdit;->access$700(Lcom/pantech/app/music/properties/MusicFileTagEdit;)Lcom/pantech/app/music/properties/MusicPropertiesActivity$OnTagEditCallback;

    move-result-object v0

    const v1, 0x7f08012d

    invoke-interface {v0, v1}, Lcom/pantech/app/music/properties/MusicPropertiesActivity$OnTagEditCallback;->onShowToast(I)V

    .line 791
    :cond_14
    return-void
.end method

.method public onTextChange(Ljava/lang/String;Z)V
    .registers 5
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "isBtnEnable"    # Z

    .prologue
    const/4 v1, -0x1

    .line 796
    iget-object v0, p0, Lcom/pantech/app/music/properties/MusicFileTagEdit$FileTagTextChangeListener;->this$0:Lcom/pantech/app/music/properties/MusicFileTagEdit;

    invoke-static {v0}, Lcom/pantech/app/music/properties/MusicFileTagEdit;->access$100(Lcom/pantech/app/music/properties/MusicFileTagEdit;)Lcom/pantech/app/music/view/SkyEditText;

    move-result-object v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/pantech/app/music/properties/MusicFileTagEdit$FileTagTextChangeListener;->this$0:Lcom/pantech/app/music/properties/MusicFileTagEdit;

    invoke-static {v0}, Lcom/pantech/app/music/properties/MusicFileTagEdit;->access$100(Lcom/pantech/app/music/properties/MusicFileTagEdit;)Lcom/pantech/app/music/view/SkyEditText;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pantech/app/music/view/SkyEditText;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_22

    .line 797
    const/4 p2, 0x0

    .line 799
    :cond_22
    iget-object v0, p0, Lcom/pantech/app/music/properties/MusicFileTagEdit$FileTagTextChangeListener;->this$0:Lcom/pantech/app/music/properties/MusicFileTagEdit;

    invoke-static {v0}, Lcom/pantech/app/music/properties/MusicFileTagEdit;->access$300(Lcom/pantech/app/music/properties/MusicFileTagEdit;)Lcom/pantech/app/music/view/SkyEditText;

    move-result-object v0

    if-eqz v0, :cond_43

    iget-object v0, p0, Lcom/pantech/app/music/properties/MusicFileTagEdit$FileTagTextChangeListener;->this$0:Lcom/pantech/app/music/properties/MusicFileTagEdit;

    invoke-static {v0}, Lcom/pantech/app/music/properties/MusicFileTagEdit;->access$300(Lcom/pantech/app/music/properties/MusicFileTagEdit;)Lcom/pantech/app/music/view/SkyEditText;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pantech/app/music/view/SkyEditText;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_43

    .line 800
    const/4 p2, 0x0

    .line 802
    :cond_43
    iget-object v0, p0, Lcom/pantech/app/music/properties/MusicFileTagEdit$FileTagTextChangeListener;->this$0:Lcom/pantech/app/music/properties/MusicFileTagEdit;

    invoke-static {v0}, Lcom/pantech/app/music/properties/MusicFileTagEdit;->access$200(Lcom/pantech/app/music/properties/MusicFileTagEdit;)Lcom/pantech/app/music/view/SkyEditText;

    move-result-object v0

    if-eqz v0, :cond_64

    iget-object v0, p0, Lcom/pantech/app/music/properties/MusicFileTagEdit$FileTagTextChangeListener;->this$0:Lcom/pantech/app/music/properties/MusicFileTagEdit;

    invoke-static {v0}, Lcom/pantech/app/music/properties/MusicFileTagEdit;->access$200(Lcom/pantech/app/music/properties/MusicFileTagEdit;)Lcom/pantech/app/music/view/SkyEditText;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pantech/app/music/view/SkyEditText;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_64

    .line 803
    const/4 p2, 0x0

    .line 805
    :cond_64
    iget-object v0, p0, Lcom/pantech/app/music/properties/MusicFileTagEdit$FileTagTextChangeListener;->this$0:Lcom/pantech/app/music/properties/MusicFileTagEdit;

    invoke-static {v0}, Lcom/pantech/app/music/properties/MusicFileTagEdit;->access$500(Lcom/pantech/app/music/properties/MusicFileTagEdit;)Lcom/pantech/app/music/view/SkyEditText;

    move-result-object v0

    if-eqz v0, :cond_91

    iget-object v0, p0, Lcom/pantech/app/music/properties/MusicFileTagEdit$FileTagTextChangeListener;->this$0:Lcom/pantech/app/music/properties/MusicFileTagEdit;

    invoke-static {v0}, Lcom/pantech/app/music/properties/MusicFileTagEdit;->access$500(Lcom/pantech/app/music/properties/MusicFileTagEdit;)Lcom/pantech/app/music/view/SkyEditText;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pantech/app/music/view/SkyEditText;->getVisibility()I

    move-result v0

    if-nez v0, :cond_91

    iget-object v0, p0, Lcom/pantech/app/music/properties/MusicFileTagEdit$FileTagTextChangeListener;->this$0:Lcom/pantech/app/music/properties/MusicFileTagEdit;

    invoke-static {v0}, Lcom/pantech/app/music/properties/MusicFileTagEdit;->access$500(Lcom/pantech/app/music/properties/MusicFileTagEdit;)Lcom/pantech/app/music/view/SkyEditText;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pantech/app/music/view/SkyEditText;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_91

    .line 806
    const/4 p2, 0x0

    .line 808
    :cond_91
    iget-object v0, p0, Lcom/pantech/app/music/properties/MusicFileTagEdit$FileTagTextChangeListener;->this$0:Lcom/pantech/app/music/properties/MusicFileTagEdit;

    invoke-static {v0}, Lcom/pantech/app/music/properties/MusicFileTagEdit;->access$400(Lcom/pantech/app/music/properties/MusicFileTagEdit;)Lcom/pantech/app/music/view/SkyEditText;

    move-result-object v0

    if-eqz v0, :cond_b2

    iget-object v0, p0, Lcom/pantech/app/music/properties/MusicFileTagEdit$FileTagTextChangeListener;->this$0:Lcom/pantech/app/music/properties/MusicFileTagEdit;

    invoke-static {v0}, Lcom/pantech/app/music/properties/MusicFileTagEdit;->access$400(Lcom/pantech/app/music/properties/MusicFileTagEdit;)Lcom/pantech/app/music/view/SkyEditText;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pantech/app/music/view/SkyEditText;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_b2

    .line 809
    const/4 p2, 0x0

    .line 811
    :cond_b2
    iget-object v0, p0, Lcom/pantech/app/music/properties/MusicFileTagEdit$FileTagTextChangeListener;->this$0:Lcom/pantech/app/music/properties/MusicFileTagEdit;

    invoke-static {v0}, Lcom/pantech/app/music/properties/MusicFileTagEdit;->access$1900(Lcom/pantech/app/music/properties/MusicFileTagEdit;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_df

    iget-object v0, p0, Lcom/pantech/app/music/properties/MusicFileTagEdit$FileTagTextChangeListener;->this$0:Lcom/pantech/app/music/properties/MusicFileTagEdit;

    invoke-static {v0}, Lcom/pantech/app/music/properties/MusicFileTagEdit;->access$1900(Lcom/pantech/app/music/properties/MusicFileTagEdit;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_df

    .line 813
    iget-object v0, p0, Lcom/pantech/app/music/properties/MusicFileTagEdit$FileTagTextChangeListener;->this$0:Lcom/pantech/app/music/properties/MusicFileTagEdit;

    invoke-static {v0}, Lcom/pantech/app/music/properties/MusicFileTagEdit;->access$1900(Lcom/pantech/app/music/properties/MusicFileTagEdit;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_df

    .line 815
    iget-object v0, p0, Lcom/pantech/app/music/properties/MusicFileTagEdit$FileTagTextChangeListener;->this$0:Lcom/pantech/app/music/properties/MusicFileTagEdit;

    invoke-static {v0}, Lcom/pantech/app/music/properties/MusicFileTagEdit;->access$1900(Lcom/pantech/app/music/properties/MusicFileTagEdit;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 818
    :cond_df
    return-void
.end method

.method public setListener(Lcom/pantech/app/music/view/SkyEditText;)V
    .registers 2
    .param p1, "et"    # Lcom/pantech/app/music/view/SkyEditText;

    .prologue
    .line 783
    invoke-virtual {p1, p0}, Lcom/pantech/app/music/view/SkyEditText;->setOnSpecialCharacterListener(Lcom/pantech/app/music/view/SkyEditText$onSpecialCharacterListener;)V

    .line 784
    return-void
.end method
