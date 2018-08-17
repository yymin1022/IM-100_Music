.class public Lcom/pantech/app/music/view/SkyDialogFragment;
.super Landroid/app/DialogFragment;
.source "SkyDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/app/music/view/SkyDialogFragment$OnDialogQuestionCallback;
    }
.end annotation


# static fields
.field public static final DIALOG_ARG_ASK_ID:Ljava/lang/String; = "dialogAskID"

.field public static final DIALOG_ARG_BUTTON_TYPE:Ljava/lang/String; = "dialogButtonType"

.field public static final DIALOG_ARG_CANCELABLE:Ljava/lang/String; = "dialogProgressCancelable"

.field public static final DIALOG_ARG_CHKBOX_MESSAGE:Ljava/lang/String; = "dialogChkBoxMessage"

.field public static final DIALOG_ARG_DEFAUT_TEXT:Ljava/lang/String; = "dialogDefaultText"

.field public static final DIALOG_ARG_DISP_SEC:Ljava/lang/String; = "dialogDispSec"

.field public static final DIALOG_ARG_HINT_TEXT:Ljava/lang/String; = "dialogHintText"

.field public static final DIALOG_ARG_HINT_TEXT_STR:Ljava/lang/String; = "dialogHintTextStr"

.field public static final DIALOG_ARG_MAX_LENGTH:Ljava/lang/String; = "dialogMaxLength"

.field public static final DIALOG_ARG_MESSAGE:Ljava/lang/String; = "dialogProgressMessage"

.field public static final DIALOG_ARG_MESSAGES:Ljava/lang/String; = "dialogProgressMessages"

.field public static final DIALOG_ARG_PICKER_TYPE:Ljava/lang/String; = "dialogPickerType"

.field public static final DIALOG_ARG_TITLE:Ljava/lang/String; = "dialogTitle"

.field public static final DIALOG_ARG_TYPE:Ljava/lang/String; = "dialogType"

.field public static final DIALOG_BUTTON_TYPE_CONFIRM_CANCEL:I = 0x4

.field public static final DIALOG_BUTTON_TYPE_DELETE_CANCEL:I = 0x2

.field public static final DIALOG_BUTTON_TYPE_REMOVE_CANCEL:I = 0x3

.field public static final DIALOG_BUTTON_TYPE_YES_NO:I = 0x1

.field public static final DIALOG_TAG_ASK:Ljava/lang/String; = "ask"

.field public static final DIALOG_TAG_CHK_ASK:Ljava/lang/String; = "checkAsk"

.field public static final DIALOG_TAG_EDITBOX:Ljava/lang/String; = "editbox"

.field public static final DIALOG_TAG_INFORM:Ljava/lang/String; = "inform"

.field public static final DIALOG_TAG_LIST_SELECT:Ljava/lang/String; = "listSelect"

.field public static final DIALOG_TAG_LOADING:Ljava/lang/String; = "loading"

.field public static final DIALOG_TAG_PICKER:Ljava/lang/String; = "picker"

.field public static final DIALOG_TAG_SAVING:Ljava/lang/String; = "saving"

.field public static final DIALOG_TAG_VOICE_CONTROL_HELP:Ljava/lang/String; = "VoiceControlHelp"

.field public static final DIALOG_TYPE_ASK:I = 0x5

.field public static final DIALOG_TYPE_CHK_ASK:I = 0x6

.field public static final DIALOG_TYPE_EDITBOX:I = 0x1

.field public static final DIALOG_TYPE_INFORMBOX:I = 0x2

.field public static final DIALOG_TYPE_LIST_SELECT:I = 0x8

.field public static final DIALOG_TYPE_LOADING:I = 0x4

.field public static final DIALOG_TYPE_PICKER:I = 0x9

.field public static final DIALOG_TYPE_SAVING:I = 0x3

.field public static final DIALOG_TYPE_VOICE_CONTROL_HELP:I = 0x7

.field public static final MSG_SET_ON_CANCEL_LISTENER:I = 0x1

.field public static final MSG_SET_ON_DISMISS_LISTENER:I = 0x2

.field public static final TAG:Ljava/lang/String; = "VMusicDiaglogFragment"


# instance fields
.field mDialogChkQuestionListener:Lcom/pantech/app/music/utils/ListUtils$OnDialogTwoButtonOneCheckBoxCallback;

.field mDialogInformListener:Lcom/pantech/app/music/utils/ListUtils$OnDialogInformationCallback;

.field mDialogQuestionListener:Lcom/pantech/app/music/view/SkyDialogFragment$OnDialogQuestionCallback;

.field mDialogType:I

.field mEditPopupList:Lcom/pantech/app/music/view/SkyMusicPopupList;

.field mKeyedTags:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

.field mOnClickListener:Landroid/view/View$OnClickListener;

.field mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field mSortListener:Lcom/pantech/app/music/view/SkyWheelSortingPickerDialog$OnSortSetListener;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 40
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 90
    iput-object v0, p0, Lcom/pantech/app/music/view/SkyDialogFragment;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 91
    iput-object v0, p0, Lcom/pantech/app/music/view/SkyDialogFragment;->mDialogQuestionListener:Lcom/pantech/app/music/view/SkyDialogFragment$OnDialogQuestionCallback;

    .line 92
    iput-object v0, p0, Lcom/pantech/app/music/view/SkyDialogFragment;->mDialogChkQuestionListener:Lcom/pantech/app/music/utils/ListUtils$OnDialogTwoButtonOneCheckBoxCallback;

    .line 94
    iput-object v0, p0, Lcom/pantech/app/music/view/SkyDialogFragment;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    .line 95
    iput-object v0, p0, Lcom/pantech/app/music/view/SkyDialogFragment;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 96
    iput-object v0, p0, Lcom/pantech/app/music/view/SkyDialogFragment;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 97
    iput-object v0, p0, Lcom/pantech/app/music/view/SkyDialogFragment;->mSortListener:Lcom/pantech/app/music/view/SkyWheelSortingPickerDialog$OnSortSetListener;

    .line 101
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/pantech/app/music/view/SkyDialogFragment;->mKeyedTags:Landroid/util/SparseArray;

    .line 1145
    return-void
.end method

.method private createAskPopupList()Lcom/pantech/app/music/view/SkyMusicPopupList;
    .registers 10

    .prologue
    const/4 v8, -0x1

    const/4 v7, -0x2

    .line 682
    invoke-virtual {p0}, Lcom/pantech/app/music/view/SkyDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "dialogTitle"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 683
    .local v4, "title_id":I
    invoke-virtual {p0}, Lcom/pantech/app/music/view/SkyDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "dialogProgressMessage"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 684
    .local v2, "message_id":I
    invoke-virtual {p0}, Lcom/pantech/app/music/view/SkyDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "dialogAskID"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 685
    .local v1, "dialogID":I
    invoke-virtual {p0}, Lcom/pantech/app/music/view/SkyDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "dialogButtonType"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 687
    .local v0, "buttonType":I
    new-instance v3, Lcom/pantech/app/music/view/SkyMusicPopupList;

    invoke-virtual {p0}, Lcom/pantech/app/music/view/SkyDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v3, v5}, Lcom/pantech/app/music/view/SkyMusicPopupList;-><init>(Landroid/content/Context;)V

    .line 689
    .local v3, "popupList":Lcom/pantech/app/music/view/SkyMusicPopupList;
    invoke-virtual {v3, v4}, Lcom/pantech/app/music/view/SkyMusicPopupList;->setTitle(I)V

    .line 690
    invoke-virtual {v3, v2}, Lcom/pantech/app/music/view/SkyMusicPopupList;->setMessage(I)V

    .line 692
    invoke-direct {p0, v8, v0}, Lcom/pantech/app/music/view/SkyDialogFragment;->getButtonString(II)I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/pantech/app/music/view/SkyDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/pantech/app/music/view/SkyDialogFragment$1;

    invoke-direct {v6, p0, v1}, Lcom/pantech/app/music/view/SkyDialogFragment$1;-><init>(Lcom/pantech/app/music/view/SkyDialogFragment;I)V

    invoke-virtual {v3, v8, v5, v6}, Lcom/pantech/app/music/view/SkyMusicPopupList;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 704
    invoke-direct {p0, v7, v0}, Lcom/pantech/app/music/view/SkyDialogFragment;->getButtonString(II)I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/pantech/app/music/view/SkyDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/pantech/app/music/view/SkyDialogFragment$2;

    invoke-direct {v6, p0, v1}, Lcom/pantech/app/music/view/SkyDialogFragment$2;-><init>(Lcom/pantech/app/music/view/SkyDialogFragment;I)V

    invoke-virtual {v3, v7, v5, v6}, Lcom/pantech/app/music/view/SkyMusicPopupList;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 716
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lcom/pantech/app/music/view/SkyMusicPopupList;->setCanceledOnTouchOutside(Z)V

    .line 719
    invoke-virtual {v3}, Lcom/pantech/app/music/view/SkyMusicPopupList;->show()V

    .line 721
    return-object v3
.end method

.method private createEditPopupList()Lcom/pantech/app/music/view/SkyMusicPopupList;
    .registers 20

    .prologue
    .line 819
    invoke-virtual/range {p0 .. p0}, Lcom/pantech/app/music/view/SkyDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v15

    const-string v16, "dialogMaxLength"

    invoke-virtual/range {v15 .. v16}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v10

    .line 820
    .local v10, "maxLength":I
    invoke-virtual/range {p0 .. p0}, Lcom/pantech/app/music/view/SkyDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v15

    const-string v16, "dialogTitle"

    invoke-virtual/range {v15 .. v16}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v12

    .line 821
    .local v12, "title_id":I
    invoke-virtual/range {p0 .. p0}, Lcom/pantech/app/music/view/SkyDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v15

    const-string v16, "dialogHintText"

    invoke-virtual/range {v15 .. v16}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    .line 822
    .local v7, "hint_id":I
    invoke-virtual/range {p0 .. p0}, Lcom/pantech/app/music/view/SkyDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v15

    const-string v16, "dialogHintTextStr"

    invoke-virtual/range {v15 .. v16}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 823
    .local v6, "hintStr":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/pantech/app/music/view/SkyDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v15

    const-string v16, "dialogDefaultText"

    invoke-virtual/range {v15 .. v16}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 825
    .local v3, "defaultText":Ljava/lang/String;
    const/4 v14, 0x0

    .line 835
    .local v14, "view":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/pantech/app/music/view/SkyDialogFragment;->mEditPopupList:Lcom/pantech/app/music/view/SkyMusicPopupList;

    if-nez v15, :cond_178

    .line 837
    invoke-virtual/range {p0 .. p0}, Lcom/pantech/app/music/view/SkyDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v15

    invoke-static {v15}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v8

    .line 838
    .local v8, "inflater":Landroid/view/LayoutInflater;
    const v15, 0x7f030091

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v8, v15, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v14

    .line 839
    new-instance v15, Lcom/pantech/app/music/view/SkyMusicPopupList;

    invoke-virtual/range {p0 .. p0}, Lcom/pantech/app/music/view/SkyDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Lcom/pantech/app/music/view/SkyMusicPopupList;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/pantech/app/music/view/SkyDialogFragment;->mEditPopupList:Lcom/pantech/app/music/view/SkyMusicPopupList;

    .line 848
    .end local v8    # "inflater":Landroid/view/LayoutInflater;
    :goto_59
    const v15, 0x7f10014a

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/pantech/app/music/view/SkyEditText;

    .line 853
    .local v5, "editTextForPlayListName":Lcom/pantech/app/music/view/SkyEditText;
    new-instance v15, Lcom/pantech/app/music/view/SkyDialogFragment$7;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/pantech/app/music/view/SkyDialogFragment$7;-><init>(Lcom/pantech/app/music/view/SkyDialogFragment;)V

    invoke-virtual {v5, v15}, Lcom/pantech/app/music/view/SkyEditText;->setOnSpecialCharacterListener(Lcom/pantech/app/music/view/SkyEditText$onSpecialCharacterListener;)V

    .line 874
    const/4 v15, 0x1

    invoke-virtual {v5, v15}, Lcom/pantech/app/music/view/SkyEditText;->setInputType(I)V

    .line 875
    new-instance v15, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v15, v10}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    invoke-virtual {v5, v15}, Lcom/pantech/app/music/view/SkyEditText;->setFilters(Landroid/text/InputFilter;)V

    .line 876
    const/4 v15, 0x1

    invoke-virtual {v5, v15}, Lcom/pantech/app/music/view/SkyEditText;->setSingleLine(Z)V

    .line 877
    const/high16 v15, 0x80000

    invoke-virtual {v5, v15}, Lcom/pantech/app/music/view/SkyEditText;->setInputType(I)V

    .line 878
    invoke-virtual {v5}, Lcom/pantech/app/music/view/SkyEditText;->requestFocus()Z

    .line 879
    const-string v15, "com.pantech.skyime.noEmoji"

    invoke-virtual {v5, v15}, Lcom/pantech/app/music/view/SkyEditText;->setPrivateImeOptions(Ljava/lang/String;)V

    .line 882
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_193

    .line 884
    const v15, 0x7f080090

    if-ne v7, v15, :cond_18e

    .line 886
    invoke-virtual {v5, v7}, Lcom/pantech/app/music/view/SkyEditText;->setText(I)V

    .line 898
    :goto_97
    if-eqz v3, :cond_a3

    .line 900
    invoke-virtual {v5, v3}, Lcom/pantech/app/music/view/SkyEditText;->setText(Ljava/lang/CharSequence;)V

    .line 901
    invoke-virtual {v5}, Lcom/pantech/app/music/view/SkyEditText;->length()I

    move-result v9

    .line 902
    .local v9, "len":I
    invoke-virtual {v5, v9}, Lcom/pantech/app/music/view/SkyEditText;->setSelection(I)V

    .line 905
    .end local v9    # "len":I
    :cond_a3
    const v15, 0x7f10014a

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/pantech/app/music/view/SkyDialogFragment;->getTag(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 906
    .local v11, "savedText":Ljava/lang/String;
    if-eqz v11, :cond_ba

    .line 908
    invoke-virtual {v5, v11}, Lcom/pantech/app/music/view/SkyEditText;->setText(Ljava/lang/CharSequence;)V

    .line 909
    invoke-virtual {v5}, Lcom/pantech/app/music/view/SkyEditText;->length()I

    move-result v9

    .line 910
    .restart local v9    # "len":I
    invoke-virtual {v5, v9}, Lcom/pantech/app/music/view/SkyEditText;->setSelection(I)V

    .line 913
    .end local v9    # "len":I
    :cond_ba
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/pantech/app/music/view/SkyDialogFragment;->mEditPopupList:Lcom/pantech/app/music/view/SkyMusicPopupList;

    const/16 v16, -0x1

    invoke-virtual/range {p0 .. p0}, Lcom/pantech/app/music/view/SkyDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v17

    const v18, 0x7f08001b

    invoke-virtual/range {v17 .. v18}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v17

    new-instance v18, Lcom/pantech/app/music/view/SkyDialogFragment$8;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v5}, Lcom/pantech/app/music/view/SkyDialogFragment$8;-><init>(Lcom/pantech/app/music/view/SkyDialogFragment;Lcom/pantech/app/music/view/SkyEditText;)V

    invoke-virtual/range {v15 .. v18}, Lcom/pantech/app/music/view/SkyMusicPopupList;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 923
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/pantech/app/music/view/SkyDialogFragment;->mEditPopupList:Lcom/pantech/app/music/view/SkyMusicPopupList;

    const/16 v16, -0x2

    invoke-virtual/range {p0 .. p0}, Lcom/pantech/app/music/view/SkyDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v17

    const v18, 0x7f0800af

    invoke-virtual/range {v17 .. v18}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v17

    new-instance v18, Lcom/pantech/app/music/view/SkyDialogFragment$9;

    invoke-direct/range {v18 .. v19}, Lcom/pantech/app/music/view/SkyDialogFragment$9;-><init>(Lcom/pantech/app/music/view/SkyDialogFragment;)V

    invoke-virtual/range {v15 .. v18}, Lcom/pantech/app/music/view/SkyMusicPopupList;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 932
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/pantech/app/music/view/SkyDialogFragment;->mEditPopupList:Lcom/pantech/app/music/view/SkyMusicPopupList;

    invoke-virtual {v15, v12}, Lcom/pantech/app/music/view/SkyMusicPopupList;->setTitle(I)V

    .line 933
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/pantech/app/music/view/SkyDialogFragment;->mEditPopupList:Lcom/pantech/app/music/view/SkyMusicPopupList;

    invoke-virtual {v15, v14}, Lcom/pantech/app/music/view/SkyMusicPopupList;->setView(Landroid/view/View;)V

    .line 934
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/pantech/app/music/view/SkyDialogFragment;->mEditPopupList:Lcom/pantech/app/music/view/SkyMusicPopupList;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Lcom/pantech/app/music/view/SkyMusicPopupList;->setCanceledOnTouchOutside(Z)V

    .line 936
    const/4 v4, 0x1

    .line 938
    .local v4, "delayTimeMultiplier":I
    invoke-virtual/range {p0 .. p0}, Lcom/pantech/app/music/view/SkyDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v15

    iget v15, v15, Landroid/content/res/Configuration;->orientation:I

    const/16 v16, 0x2

    move/from16 v0, v16

    if-ne v15, v0, :cond_119

    .line 939
    const/4 v4, 0x3

    .line 941
    :cond_119
    new-instance v15, Lcom/pantech/app/music/view/SkyDialogFragment$10;

    move-object/from16 v0, p0

    invoke-direct {v15, v0, v5}, Lcom/pantech/app/music/view/SkyDialogFragment$10;-><init>(Lcom/pantech/app/music/view/SkyDialogFragment;Lcom/pantech/app/music/view/SkyEditText;)V

    mul-int/lit16 v0, v4, 0x15e

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v5, v15, v0, v1}, Lcom/pantech/app/music/view/SkyEditText;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 956
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/pantech/app/music/view/SkyDialogFragment;->mEditPopupList:Lcom/pantech/app/music/view/SkyMusicPopupList;

    invoke-virtual {v15}, Lcom/pantech/app/music/view/SkyMusicPopupList;->show()V

    .line 959
    const/16 v15, 0x7777

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/pantech/app/music/view/SkyDialogFragment;->getTag(I)Ljava/lang/Object;

    move-result-object v13

    .line 960
    .local v13, "undoState":Ljava/lang/Object;
    if-eqz v13, :cond_144

    .line 962
    check-cast v13, Lcom/pantech/app/music/view/SkyEditText$UndoStateOfSkyEditText;

    .end local v13    # "undoState":Ljava/lang/Object;
    invoke-virtual {v5, v13}, Lcom/pantech/app/music/view/SkyEditText;->setUndoBtnState(Lcom/pantech/app/music/view/SkyEditText$UndoStateOfSkyEditText;)V

    .line 966
    :cond_144
    invoke-virtual {v5}, Lcom/pantech/app/music/view/SkyEditText;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    .line 968
    .local v2, "currentText":Ljava/lang/CharSequence;
    if-eqz v2, :cond_173

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    if-nez v15, :cond_173

    .line 970
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/pantech/app/music/view/SkyDialogFragment;->mEditPopupList:Lcom/pantech/app/music/view/SkyMusicPopupList;

    const/16 v16, -0x1

    invoke-virtual/range {v15 .. v16}, Lcom/pantech/app/music/view/SkyMusicPopupList;->getButton(I)Landroid/widget/Button;

    move-result-object v15

    if-eqz v15, :cond_173

    .line 972
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/pantech/app/music/view/SkyDialogFragment;->mEditPopupList:Lcom/pantech/app/music/view/SkyMusicPopupList;

    const/16 v16, -0x1

    invoke-virtual/range {v15 .. v16}, Lcom/pantech/app/music/view/SkyMusicPopupList;->getButton(I)Landroid/widget/Button;

    move-result-object v15

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/widget/Button;->setEnabled(Z)V

    .line 976
    :cond_173
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/pantech/app/music/view/SkyDialogFragment;->mEditPopupList:Lcom/pantech/app/music/view/SkyMusicPopupList;

    return-object v15

    .line 843
    .end local v2    # "currentText":Ljava/lang/CharSequence;
    .end local v4    # "delayTimeMultiplier":I
    .end local v5    # "editTextForPlayListName":Lcom/pantech/app/music/view/SkyEditText;
    .end local v11    # "savedText":Ljava/lang/String;
    :cond_178
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/pantech/app/music/view/SkyDialogFragment;->mEditPopupList:Lcom/pantech/app/music/view/SkyMusicPopupList;

    const v16, 0x7f100149

    invoke-virtual/range {v15 .. v16}, Lcom/pantech/app/music/view/SkyMusicPopupList;->findViewById(I)Landroid/view/View;

    move-result-object v14

    .line 845
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/pantech/app/music/view/SkyDialogFragment;->mEditPopupList:Lcom/pantech/app/music/view/SkyMusicPopupList;

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/pantech/app/music/view/SkyDialogFragment;->updateEditPopupList(Lcom/pantech/app/music/view/SkyMusicPopupList;)V

    goto/16 :goto_59

    .line 890
    .restart local v5    # "editTextForPlayListName":Lcom/pantech/app/music/view/SkyEditText;
    :cond_18e
    invoke-virtual {v5, v7}, Lcom/pantech/app/music/view/SkyEditText;->setHint(I)V

    goto/16 :goto_97

    .line 895
    :cond_193
    invoke-virtual {v5, v6}, Lcom/pantech/app/music/view/SkyEditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_97
.end method

.method private createListSelectPopupList()Lcom/pantech/app/music/view/SkyMusicPopupList;
    .registers 10

    .prologue
    .line 1060
    invoke-virtual {p0}, Lcom/pantech/app/music/view/SkyDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v6

    const-string v7, "dialogTitle"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 1061
    .local v5, "title_id":I
    invoke-virtual {p0}, Lcom/pantech/app/music/view/SkyDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v6

    const-string v7, "dialogProgressMessages"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v3

    .line 1063
    .local v3, "message_ids":[I
    if-nez v3, :cond_18

    const/4 v1, 0x0

    .line 1094
    :goto_17
    return-object v1

    .line 1065
    :cond_18
    new-instance v1, Lcom/pantech/app/music/view/SkyMusicPopupList;

    invoke-virtual {p0}, Lcom/pantech/app/music/view/SkyDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v1, v6}, Lcom/pantech/app/music/view/SkyMusicPopupList;-><init>(Landroid/content/Context;)V

    .line 1066
    .local v1, "listSelectDialog":Lcom/pantech/app/music/view/SkyMusicPopupList;
    invoke-virtual {p0, v5}, Lcom/pantech/app/music/view/SkyDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/pantech/app/music/view/SkyMusicPopupList;->setTitle(Ljava/lang/CharSequence;)V

    .line 1068
    array-length v6, v3

    new-array v4, v6, [Ljava/lang/CharSequence;

    .line 1070
    .local v4, "selectString":[Ljava/lang/CharSequence;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2c
    array-length v6, v3

    if-ge v0, v6, :cond_3a

    .line 1072
    aget v6, v3, v0

    invoke-virtual {p0, v6}, Lcom/pantech/app/music/view/SkyDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v0

    .line 1070
    add-int/lit8 v0, v0, 0x1

    goto :goto_2c

    .line 1075
    :cond_3a
    new-instance v2, Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/pantech/app/music/view/SkyDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v2, v6}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 1077
    .local v2, "listView":Landroid/widget/ListView;
    new-instance v6, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/pantech/app/music/view/SkyDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const v8, 0x1090003

    invoke-direct {v6, v7, v8, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {v2, v6}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1079
    new-instance v6, Lcom/pantech/app/music/view/SkyDialogFragment$12;

    invoke-direct {v6, p0}, Lcom/pantech/app/music/view/SkyDialogFragment$12;-><init>(Lcom/pantech/app/music/view/SkyDialogFragment;)V

    invoke-virtual {v2, v6}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1092
    invoke-virtual {v1, v2}, Lcom/pantech/app/music/view/SkyMusicPopupList;->setView(Landroid/view/View;)V

    goto :goto_17
.end method

.method private createLoadingPopupList()Lcom/pantech/app/music/view/SkyProgressDialog;
    .registers 7

    .prologue
    .line 1043
    invoke-virtual {p0}, Lcom/pantech/app/music/view/SkyDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "dialogTitle"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 1044
    .local v3, "title_id":I
    invoke-virtual {p0}, Lcom/pantech/app/music/view/SkyDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "dialogProgressMessage"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 1045
    .local v1, "message_id":I
    invoke-virtual {p0}, Lcom/pantech/app/music/view/SkyDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "dialogProgressCancelable"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 1047
    .local v0, "dialogCancelable":Z
    new-instance v2, Lcom/pantech/app/music/view/SkyProgressDialog;

    invoke-virtual {p0}, Lcom/pantech/app/music/view/SkyDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/pantech/app/music/view/SkyProgressDialog;-><init>(Landroid/content/Context;)V

    .line 1049
    .local v2, "progressLoading":Lcom/pantech/app/music/view/SkyProgressDialog;
    invoke-virtual {p0, v0}, Lcom/pantech/app/music/view/SkyDialogFragment;->setCancelable(Z)V

    .line 1050
    invoke-virtual {v2, v0}, Lcom/pantech/app/music/view/SkyProgressDialog;->setCancelable(Z)V

    .line 1051
    invoke-virtual {v2, v3}, Lcom/pantech/app/music/view/SkyProgressDialog;->setTitle(I)V

    .line 1052
    invoke-virtual {v2, v1}, Lcom/pantech/app/music/view/SkyProgressDialog;->setBodyMessage(I)V

    .line 1053
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/pantech/app/music/view/SkyProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 1055
    return-object v2
.end method

.method private createPickerDialog()Lcom/pantech/app/music/view/SkyWheelSortingPickerDialog;
    .registers 5

    .prologue
    .line 1099
    invoke-virtual {p0}, Lcom/pantech/app/music/view/SkyDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "dialogPickerType"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 1101
    .local v1, "pickerType":I
    new-instance v0, Lcom/pantech/app/music/view/SkyWheelSortingPickerDialog;

    invoke-virtual {p0}, Lcom/pantech/app/music/view/SkyDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/pantech/app/music/view/SkyDialogFragment;->mSortListener:Lcom/pantech/app/music/view/SkyWheelSortingPickerDialog$OnSortSetListener;

    invoke-direct {v0, v2, v3}, Lcom/pantech/app/music/view/SkyWheelSortingPickerDialog;-><init>(Landroid/content/Context;Lcom/pantech/app/music/view/SkyWheelSortingPickerDialog$OnSortSetListener;)V

    .line 1103
    .local v0, "dialog":Lcom/pantech/app/music/view/SkyWheelSortingPickerDialog;
    return-object v0
.end method

.method private createSavingPopupList()Lcom/pantech/app/music/view/SkySavingDialog;
    .registers 7

    .prologue
    .line 1026
    invoke-virtual {p0}, Lcom/pantech/app/music/view/SkyDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "dialogTitle"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 1027
    .local v3, "title_id":I
    invoke-virtual {p0}, Lcom/pantech/app/music/view/SkyDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "dialogProgressMessage"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 1028
    .local v1, "message_id":I
    invoke-virtual {p0}, Lcom/pantech/app/music/view/SkyDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "dialogProgressCancelable"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 1030
    .local v0, "dialogCancelable":Z
    new-instance v2, Lcom/pantech/app/music/view/SkySavingDialog;

    invoke-virtual {p0}, Lcom/pantech/app/music/view/SkyDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/pantech/app/music/view/SkySavingDialog;-><init>(Landroid/content/Context;)V

    .line 1032
    .local v2, "savingDialog":Lcom/pantech/app/music/view/SkySavingDialog;
    invoke-virtual {p0, v0}, Lcom/pantech/app/music/view/SkyDialogFragment;->setCancelable(Z)V

    .line 1033
    invoke-virtual {v2, v0}, Lcom/pantech/app/music/view/SkySavingDialog;->setCancelable(Z)V

    .line 1034
    invoke-virtual {v2, v3}, Lcom/pantech/app/music/view/SkySavingDialog;->setTitle(I)V

    .line 1035
    invoke-virtual {v2, v1}, Lcom/pantech/app/music/view/SkySavingDialog;->setBodyMessage(I)V

    .line 1036
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/pantech/app/music/view/SkySavingDialog;->setCanceledOnTouchOutside(Z)V

    .line 1038
    return-object v2
.end method

.method public static dismiss(Landroid/app/Activity;Ljava/lang/String;)V
    .registers 6
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "tagg"    # Ljava/lang/String;

    .prologue
    .line 1137
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/music/view/SkyDialogFragment;

    .line 1139
    .local v0, "fragment":Lcom/pantech/app/music/view/SkyDialogFragment;
    const-string v1, "VMusicDiaglogFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dismiss "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/music/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1141
    if-eqz v0, :cond_31

    .line 1142
    invoke-virtual {v0}, Lcom/pantech/app/music/view/SkyDialogFragment;->dismissAllowingStateLoss()V

    .line 1143
    :cond_31
    return-void
.end method

.method private getButtonString(II)I
    .registers 6
    .param p1, "whichButton"    # I
    .param p2, "buttonType"    # I

    .prologue
    const v0, 0x7f0800af

    .line 601
    const/4 v1, -0x1

    if-ne p1, v1, :cond_3c

    .line 603
    packed-switch p2, :pswitch_data_48

    .line 636
    :cond_9
    :goto_9
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "buttonType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " whichButton:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 606
    :pswitch_2c
    const v0, 0x7f08009e

    .line 632
    :goto_2f
    :pswitch_2f
    return v0

    .line 609
    :pswitch_30
    const v0, 0x7f080026

    goto :goto_2f

    .line 612
    :pswitch_34
    const v0, 0x7f080072

    goto :goto_2f

    .line 615
    :pswitch_38
    const v0, 0x7f08001b

    goto :goto_2f

    .line 618
    :cond_3c
    const/4 v1, -0x2

    if-ne p1, v1, :cond_9

    .line 620
    packed-switch p2, :pswitch_data_54

    goto :goto_9

    .line 623
    :pswitch_43
    const v0, 0x7f08005d

    goto :goto_2f

    .line 603
    nop

    :pswitch_data_48
    .packed-switch 0x1
        :pswitch_2c
        :pswitch_30
        :pswitch_34
        :pswitch_38
    .end packed-switch

    .line 620
    :pswitch_data_54
    .packed-switch 0x1
        :pswitch_43
        :pswitch_2f
        :pswitch_2f
        :pswitch_2f
    .end packed-switch
.end method

.method public static showAskPopupList(Landroid/app/Activity;IIIILjava/lang/Object;Lcom/pantech/app/music/view/SkyDialogFragment$OnDialogQuestionCallback;)Lcom/pantech/app/music/view/SkyDialogFragment;
    .registers 15
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "title_id"    # I
    .param p2, "message_id"    # I
    .param p3, "popupListId"    # I
    .param p4, "buttonType"    # I
    .param p5, "value"    # Ljava/lang/Object;
    .param p6, "callback"    # Lcom/pantech/app/music/view/SkyDialogFragment$OnDialogQuestionCallback;

    .prologue
    const/4 v7, 0x5

    .line 110
    const-string v4, "VMusicDiaglogFragment"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "showAskPopupList:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " buttonType:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/pantech/app/music/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    .line 113
    .local v2, "ft":Landroid/app/FragmentTransaction;
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    const-string v5, "ask"

    invoke-virtual {v4, v5}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v3

    .line 114
    .local v3, "prev":Landroid/app/Fragment;
    if-eqz v3, :cond_3a

    .line 115
    invoke-virtual {v2, v3}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 119
    :cond_3a
    new-instance v1, Lcom/pantech/app/music/view/SkyDialogFragment;

    invoke-direct {v1}, Lcom/pantech/app/music/view/SkyDialogFragment;-><init>()V

    .line 120
    .local v1, "askingDialogFragment":Lcom/pantech/app/music/view/SkyDialogFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 121
    .local v0, "args":Landroid/os/Bundle;
    const-string v4, "dialogType"

    invoke-virtual {v0, v4, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 122
    const-string v4, "dialogTitle"

    invoke-virtual {v0, v4, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 123
    const-string v4, "dialogProgressMessage"

    invoke-virtual {v0, v4, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 124
    const-string v4, "dialogAskID"

    invoke-virtual {v0, v4, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 125
    const-string v4, "dialogButtonType"

    invoke-virtual {v0, v4, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 126
    invoke-virtual {v1, v0}, Lcom/pantech/app/music/view/SkyDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 127
    invoke-virtual {v1, p6}, Lcom/pantech/app/music/view/SkyDialogFragment;->setOnDialogQuestionListener(Lcom/pantech/app/music/view/SkyDialogFragment$OnDialogQuestionCallback;)V

    .line 128
    invoke-virtual {v1, v7, p5}, Lcom/pantech/app/music/view/SkyDialogFragment;->setTag(ILjava/lang/Object;)V

    .line 129
    const-string v4, "ask"

    invoke-virtual {v1, v2, v4}, Lcom/pantech/app/music/view/SkyDialogFragment;->show(Landroid/app/FragmentTransaction;Ljava/lang/String;)I

    .line 131
    return-object v1
.end method

.method public static showAskPopupList(Landroid/app/Activity;IILjava/lang/Object;Lcom/pantech/app/music/view/SkyDialogFragment$OnDialogQuestionCallback;)Lcom/pantech/app/music/view/SkyDialogFragment;
    .registers 12
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "message_id"    # I
    .param p2, "popupListId"    # I
    .param p3, "value"    # Ljava/lang/Object;
    .param p4, "callback"    # Lcom/pantech/app/music/view/SkyDialogFragment$OnDialogQuestionCallback;

    .prologue
    .line 105
    const v1, 0x7f08006c

    const/4 v4, 0x1

    move-object v0, p0

    move v2, p1

    move v3, p2

    move-object v5, p3

    move-object v6, p4

    invoke-static/range {v0 .. v6}, Lcom/pantech/app/music/view/SkyDialogFragment;->showAskPopupList(Landroid/app/Activity;IIIILjava/lang/Object;Lcom/pantech/app/music/view/SkyDialogFragment$OnDialogQuestionCallback;)Lcom/pantech/app/music/view/SkyDialogFragment;

    move-result-object v0

    return-object v0
.end method

.method public static showCheckboxAskPopupList(Landroid/app/Activity;IIIILcom/pantech/app/music/utils/ListUtils$OnDialogTwoButtonOneCheckBoxCallback;)Lcom/pantech/app/music/view/SkyDialogFragment;
    .registers 13
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "title_id"    # I
    .param p2, "message_id"    # I
    .param p3, "chkboxMessage"    # I
    .param p4, "buttonType"    # I
    .param p5, "callback"    # Lcom/pantech/app/music/utils/ListUtils$OnDialogTwoButtonOneCheckBoxCallback;

    .prologue
    .line 136
    const-string v4, "VMusicDiaglogFragment"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "showLoadingPopupList:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " buttonType:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/pantech/app/music/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    .line 139
    .local v2, "ft":Landroid/app/FragmentTransaction;
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    const-string v5, "checkAsk"

    invoke-virtual {v4, v5}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v3

    .line 140
    .local v3, "prev":Landroid/app/Fragment;
    if-eqz v3, :cond_39

    .line 141
    invoke-virtual {v2, v3}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 145
    :cond_39
    new-instance v1, Lcom/pantech/app/music/view/SkyDialogFragment;

    invoke-direct {v1}, Lcom/pantech/app/music/view/SkyDialogFragment;-><init>()V

    .line 146
    .local v1, "chkboxAskDialogFragment":Lcom/pantech/app/music/view/SkyDialogFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 147
    .local v0, "args":Landroid/os/Bundle;
    const-string v4, "dialogType"

    const/4 v5, 0x6

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 148
    const-string v4, "dialogTitle"

    invoke-virtual {v0, v4, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 149
    const-string v4, "dialogProgressMessage"

    invoke-virtual {v0, v4, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 150
    const-string v4, "dialogChkBoxMessage"

    invoke-virtual {v0, v4, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 151
    const-string v4, "dialogProgressCancelable"

    const/4 v5, 0x1

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 152
    const-string v4, "dialogButtonType"

    invoke-virtual {v0, v4, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 154
    invoke-virtual {v1, v0}, Lcom/pantech/app/music/view/SkyDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 155
    invoke-virtual {v1, p5}, Lcom/pantech/app/music/view/SkyDialogFragment;->setOnDialogChkboxQuestionListener(Lcom/pantech/app/music/utils/ListUtils$OnDialogTwoButtonOneCheckBoxCallback;)V

    .line 156
    const-string v4, "checkAsk"

    invoke-virtual {v1, v2, v4}, Lcom/pantech/app/music/view/SkyDialogFragment;->show(Landroid/app/FragmentTransaction;Ljava/lang/String;)I

    .line 158
    return-object v1
.end method

.method public static showEditBoxDialog(Landroid/app/Activity;IILjava/lang/String;Landroid/view/View$OnClickListener;)Lcom/pantech/app/music/view/SkyDialogFragment;
    .registers 11
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "title_id"    # I
    .param p2, "hint_id"    # I
    .param p3, "defaultText"    # Ljava/lang/String;
    .param p4, "callback"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 188
    const-string v4, "VMusicDiaglogFragment"

    const-string v5, "showEditBoxDialog"

    invoke-static {v4, v5}, Lcom/pantech/app/music/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    .line 191
    .local v2, "ft":Landroid/app/FragmentTransaction;
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    const-string v5, "editbox"

    invoke-virtual {v4, v5}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v3

    .line 192
    .local v3, "prev":Landroid/app/Fragment;
    if-eqz v3, :cond_1e

    .line 193
    invoke-virtual {v2, v3}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 197
    :cond_1e
    new-instance v1, Lcom/pantech/app/music/view/SkyDialogFragment;

    invoke-direct {v1}, Lcom/pantech/app/music/view/SkyDialogFragment;-><init>()V

    .line 198
    .local v1, "editPopupDialogFragment":Lcom/pantech/app/music/view/SkyDialogFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 199
    .local v0, "args":Landroid/os/Bundle;
    const-string v4, "dialogType"

    const/4 v5, 0x1

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 200
    const-string v4, "dialogTitle"

    invoke-virtual {v0, v4, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 201
    const-string v4, "dialogHintText"

    invoke-virtual {v0, v4, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 202
    const-string v4, "dialogHintTextStr"

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    const-string v4, "dialogDefaultText"

    invoke-virtual {v0, v4, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    const-string v4, "dialogMaxLength"

    const/16 v5, 0x1e

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 205
    invoke-virtual {v1, v0}, Lcom/pantech/app/music/view/SkyDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 206
    invoke-virtual {v1, p4}, Lcom/pantech/app/music/view/SkyDialogFragment;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 207
    const-string v4, "editbox"

    invoke-virtual {v1, v2, v4}, Lcom/pantech/app/music/view/SkyDialogFragment;->show(Landroid/app/FragmentTransaction;Ljava/lang/String;)I

    .line 209
    return-object v1
.end method

.method public static showInformPopupList(Landroid/app/Activity;IIILjava/lang/Object;Lcom/pantech/app/music/utils/ListUtils$OnDialogInformationCallback;)Lcom/pantech/app/music/view/SkyDialogFragment;
    .registers 14
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "title_id"    # I
    .param p2, "message_id"    # I
    .param p3, "sec"    # I
    .param p4, "value"    # Ljava/lang/Object;
    .param p5, "callback"    # Lcom/pantech/app/music/utils/ListUtils$OnDialogInformationCallback;

    .prologue
    const/4 v7, 0x2

    .line 163
    const-string v4, "VMusicDiaglogFragment"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "showAskPopupList:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/pantech/app/music/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 166
    .local v1, "ft":Landroid/app/FragmentTransaction;
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    const-string v5, "inform"

    invoke-virtual {v4, v5}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v3

    .line 167
    .local v3, "prev":Landroid/app/Fragment;
    if-eqz v3, :cond_30

    .line 168
    invoke-virtual {v1, v3}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 171
    :cond_30
    new-instance v2, Lcom/pantech/app/music/view/SkyDialogFragment;

    invoke-direct {v2}, Lcom/pantech/app/music/view/SkyDialogFragment;-><init>()V

    .line 172
    .local v2, "informDialogFragment":Lcom/pantech/app/music/view/SkyDialogFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 173
    .local v0, "args":Landroid/os/Bundle;
    const-string v4, "dialogType"

    invoke-virtual {v0, v4, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 174
    const-string v4, "dialogTitle"

    invoke-virtual {v0, v4, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 175
    const-string v4, "dialogProgressMessage"

    invoke-virtual {v0, v4, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 176
    const-string v4, "dialogDispSec"

    invoke-virtual {v0, v4, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 178
    invoke-virtual {v2, v0}, Lcom/pantech/app/music/view/SkyDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 179
    invoke-virtual {v2, p5}, Lcom/pantech/app/music/view/SkyDialogFragment;->setOnInformListener(Lcom/pantech/app/music/utils/ListUtils$OnDialogInformationCallback;)V

    .line 180
    invoke-virtual {v2, v7, p4}, Lcom/pantech/app/music/view/SkyDialogFragment;->setTag(ILjava/lang/Object;)V

    .line 181
    const-string v4, "inform"

    invoke-virtual {v2, v1, v4}, Lcom/pantech/app/music/view/SkyDialogFragment;->show(Landroid/app/FragmentTransaction;Ljava/lang/String;)I

    .line 183
    return-object v2
.end method

.method public static showLoadingPopupList(Landroid/app/Activity;IIZ)Lcom/pantech/app/music/view/SkyDialogFragment;
    .registers 10
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "title_id"    # I
    .param p2, "message_id"    # I
    .param p3, "cancelable"    # Z

    .prologue
    .line 271
    const-string v3, "VMusicDiaglogFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "showLoadingPopupList:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/pantech/app/music/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 284
    .local v1, "ft":Landroid/app/FragmentTransaction;
    new-instance v2, Lcom/pantech/app/music/view/SkyDialogFragment;

    invoke-direct {v2}, Lcom/pantech/app/music/view/SkyDialogFragment;-><init>()V

    .line 285
    .local v2, "loadingDialogFragment":Lcom/pantech/app/music/view/SkyDialogFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 286
    .local v0, "args":Landroid/os/Bundle;
    const-string v3, "dialogType"

    const/4 v4, 0x4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 287
    const-string v3, "dialogTitle"

    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 288
    const-string v3, "dialogProgressMessage"

    invoke-virtual {v0, v3, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 289
    const-string v3, "dialogProgressCancelable"

    invoke-virtual {v0, v3, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 290
    invoke-virtual {v2, v0}, Lcom/pantech/app/music/view/SkyDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 291
    const-string v3, "loading"

    invoke-virtual {v2, v1, v3}, Lcom/pantech/app/music/view/SkyDialogFragment;->show(Landroid/app/FragmentTransaction;Ljava/lang/String;)I

    .line 293
    return-object v2
.end method

.method public static showMusicLifePicker(Landroid/app/Activity;I)Lcom/pantech/app/music/view/SkyDialogFragment;
    .registers 9
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "pickerType"    # I

    .prologue
    .line 350
    const-string v4, "VMusicDiaglogFragment"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "showMusicLifePicker:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/pantech/app/music/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 353
    .local v1, "ft":Landroid/app/FragmentTransaction;
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    const-string v5, "picker"

    invoke-virtual {v4, v5}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v3

    .line 354
    .local v3, "prev":Landroid/app/Fragment;
    if-eqz v3, :cond_2f

    .line 355
    invoke-virtual {v1, v3}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 359
    :cond_2f
    new-instance v2, Lcom/pantech/app/music/view/SkyDialogFragment;

    invoke-direct {v2}, Lcom/pantech/app/music/view/SkyDialogFragment;-><init>()V

    .line 360
    .local v2, "pickerDialogFragment":Lcom/pantech/app/music/view/SkyDialogFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 361
    .local v0, "args":Landroid/os/Bundle;
    const-string v4, "dialogType"

    const/16 v5, 0x9

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 362
    const-string v4, "dialogPickerType"

    invoke-virtual {v0, v4, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 363
    invoke-virtual {v2, v0}, Lcom/pantech/app/music/view/SkyDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 364
    const-string v4, "picker"

    invoke-virtual {v2, v1, v4}, Lcom/pantech/app/music/view/SkyDialogFragment;->show(Landroid/app/FragmentTransaction;Ljava/lang/String;)I

    .line 366
    return-object v2
.end method

.method public static showSavingPopupList(Landroid/app/Activity;II)Lcom/pantech/app/music/view/SkyDialogFragment;
    .registers 10
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "title_id"    # I
    .param p2, "message_id"    # I

    .prologue
    .line 239
    const-string v4, "VMusicDiaglogFragment"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "showSavingPopupList:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/pantech/app/music/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 242
    .local v1, "ft":Landroid/app/FragmentTransaction;
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    const-string v5, "saving"

    invoke-virtual {v4, v5}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v2

    .line 243
    .local v2, "prev":Landroid/app/Fragment;
    if-eqz v2, :cond_2f

    .line 244
    invoke-virtual {v1, v2}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 248
    :cond_2f
    new-instance v3, Lcom/pantech/app/music/view/SkyDialogFragment;

    invoke-direct {v3}, Lcom/pantech/app/music/view/SkyDialogFragment;-><init>()V

    .line 249
    .local v3, "savingDialogFragment":Lcom/pantech/app/music/view/SkyDialogFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 250
    .local v0, "args":Landroid/os/Bundle;
    const-string v4, "dialogType"

    const/4 v5, 0x3

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 251
    const-string v4, "dialogTitle"

    invoke-virtual {v0, v4, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 252
    const-string v4, "dialogProgressMessage"

    invoke-virtual {v0, v4, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 253
    const-string v4, "dialogProgressCancelable"

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 254
    invoke-virtual {v3, v0}, Lcom/pantech/app/music/view/SkyDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 255
    const-string v4, "saving"

    invoke-virtual {v3, v1, v4}, Lcom/pantech/app/music/view/SkyDialogFragment;->show(Landroid/app/FragmentTransaction;Ljava/lang/String;)I

    .line 257
    return-object v3
.end method

.method public static showSelectPopupList(Landroid/app/Activity;I[ILandroid/widget/AdapterView$OnItemClickListener;)Lcom/pantech/app/music/view/SkyDialogFragment;
    .registers 10
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "title_id"    # I
    .param p2, "message_ids"    # [I
    .param p3, "itemClickListener"    # Landroid/widget/AdapterView$OnItemClickListener;

    .prologue
    .line 325
    const-string v4, "VMusicDiaglogFragment"

    const-string v5, "showLoadingPopupList()"

    invoke-static {v4, v5}, Lcom/pantech/app/music/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 328
    .local v1, "ft":Landroid/app/FragmentTransaction;
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    const-string v5, "listSelect"

    invoke-virtual {v4, v5}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v3

    .line 329
    .local v3, "prev":Landroid/app/Fragment;
    if-eqz v3, :cond_1e

    .line 330
    invoke-virtual {v1, v3}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 334
    :cond_1e
    new-instance v2, Lcom/pantech/app/music/view/SkyDialogFragment;

    invoke-direct {v2}, Lcom/pantech/app/music/view/SkyDialogFragment;-><init>()V

    .line 335
    .local v2, "listSelectDialogFragment":Lcom/pantech/app/music/view/SkyDialogFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 336
    .local v0, "args":Landroid/os/Bundle;
    const-string v4, "dialogType"

    const/16 v5, 0x8

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 337
    const-string v4, "dialogTitle"

    invoke-virtual {v0, v4, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 338
    const-string v4, "dialogProgressMessages"

    invoke-virtual {v0, v4, p2}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 339
    const-string v4, "dialogProgressCancelable"

    const/4 v5, 0x1

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 341
    invoke-virtual {v2, v0}, Lcom/pantech/app/music/view/SkyDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 342
    invoke-virtual {v2, p3}, Lcom/pantech/app/music/view/SkyDialogFragment;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 343
    const-string v4, "listSelect"

    invoke-virtual {v2, v1, v4}, Lcom/pantech/app/music/view/SkyDialogFragment;->show(Landroid/app/FragmentTransaction;Ljava/lang/String;)I

    .line 345
    return-object v2
.end method

.method private updateAskPopupList(Lcom/pantech/app/music/view/SkyMusicPopupList;)V
    .registers 10
    .param p1, "popupList"    # Lcom/pantech/app/music/view/SkyMusicPopupList;

    .prologue
    const/4 v7, -0x1

    const/4 v6, -0x2

    .line 666
    invoke-virtual {p0}, Lcom/pantech/app/music/view/SkyDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "dialogTitle"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 667
    .local v3, "title_id":I
    invoke-virtual {p0}, Lcom/pantech/app/music/view/SkyDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "dialogProgressMessage"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 668
    .local v2, "message_id":I
    invoke-virtual {p0}, Lcom/pantech/app/music/view/SkyDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "dialogButtonType"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 670
    .local v1, "buttonType":I
    invoke-virtual {p1, v3}, Lcom/pantech/app/music/view/SkyMusicPopupList;->setTitle(I)V

    .line 671
    invoke-virtual {p1, v2}, Lcom/pantech/app/music/view/SkyMusicPopupList;->setMessage(I)V

    .line 673
    invoke-virtual {p1, v7}, Lcom/pantech/app/music/view/SkyMusicPopupList;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 674
    .local v0, "btn":Landroid/widget/Button;
    if-eqz v0, :cond_33

    invoke-direct {p0, v7, v1}, Lcom/pantech/app/music/view/SkyDialogFragment;->getButtonString(II)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setText(I)V

    .line 676
    :cond_33
    invoke-virtual {p1, v6}, Lcom/pantech/app/music/view/SkyMusicPopupList;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 677
    if-eqz v0, :cond_40

    invoke-direct {p0, v6, v1}, Lcom/pantech/app/music/view/SkyDialogFragment;->getButtonString(II)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setText(I)V

    .line 678
    :cond_40
    return-void
.end method

.method private updateEditPopupList(Lcom/pantech/app/music/view/SkyMusicPopupList;)V
    .registers 5
    .param p1, "popupList"    # Lcom/pantech/app/music/view/SkyMusicPopupList;

    .prologue
    .line 807
    if-eqz p1, :cond_2c

    .line 809
    const/4 v1, -0x1

    invoke-virtual {p1, v1}, Lcom/pantech/app/music/view/SkyMusicPopupList;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 810
    .local v0, "btn":Landroid/widget/Button;
    if-eqz v0, :cond_17

    invoke-virtual {p0}, Lcom/pantech/app/music/view/SkyDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f08001b

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 812
    :cond_17
    const/4 v1, -0x2

    invoke-virtual {p1, v1}, Lcom/pantech/app/music/view/SkyMusicPopupList;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 813
    if-eqz v0, :cond_2c

    invoke-virtual {p0}, Lcom/pantech/app/music/view/SkyDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0800af

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 815
    .end local v0    # "btn":Landroid/widget/Button;
    :cond_2c
    return-void
.end method


# virtual methods
.method public createChkAskPopupList()Lcom/pantech/app/music/view/SkyMusicPopupList;
    .registers 16

    .prologue
    const/4 v14, 0x0

    const/4 v13, -0x2

    const/4 v12, -0x1

    .line 726
    new-instance v7, Lcom/pantech/app/music/view/SkyMusicPopupList;

    invoke-virtual {p0}, Lcom/pantech/app/music/view/SkyDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-direct {v7, v10}, Lcom/pantech/app/music/view/SkyMusicPopupList;-><init>(Landroid/content/Context;)V

    .line 728
    .local v7, "popupList":Lcom/pantech/app/music/view/SkyMusicPopupList;
    invoke-virtual {p0}, Lcom/pantech/app/music/view/SkyDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v10

    const-string v11, "dialogTitle"

    invoke-virtual {v10, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    .line 729
    .local v9, "title_id":I
    invoke-virtual {p0}, Lcom/pantech/app/music/view/SkyDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v10

    const-string v11, "dialogProgressMessage"

    invoke-virtual {v10, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 730
    .local v3, "message_id":I
    invoke-virtual {p0}, Lcom/pantech/app/music/view/SkyDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v10

    const-string v11, "dialogChkBoxMessage"

    invoke-virtual {v10, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 731
    .local v1, "chkbox_message_id":I
    invoke-virtual {p0}, Lcom/pantech/app/music/view/SkyDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v10

    const-string v11, "dialogButtonType"

    invoke-virtual {v10, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 733
    .local v0, "buttonType":I
    if-ne v9, v12, :cond_ac

    .line 734
    const v10, 0x7f08003e

    invoke-virtual {v7, v10}, Lcom/pantech/app/music/view/SkyMusicPopupList;->setTitle(I)V

    .line 738
    :goto_3c
    invoke-virtual {p0}, Lcom/pantech/app/music/view/SkyDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-static {v10}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 739
    .local v2, "inflater":Landroid/view/LayoutInflater;
    const v10, 0x7f030092

    const/4 v11, 0x0

    invoke-virtual {v2, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    .line 740
    .local v6, "popupLayout":Landroid/widget/LinearLayout;
    const v10, 0x7f10014b

    invoke-virtual {v6, v10}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 741
    .local v8, "popupMessageView":Landroid/widget/TextView;
    const v10, 0x7f10014d

    invoke-virtual {v6, v10}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 743
    .local v4, "popupCheckBoxText":Landroid/widget/TextView;
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(I)V

    .line 744
    invoke-virtual {v8, v3}, Landroid/widget/TextView;->setText(I)V

    .line 746
    invoke-virtual {v7, v6}, Lcom/pantech/app/music/view/SkyMusicPopupList;->setView(Landroid/view/View;)V

    .line 748
    invoke-direct {p0, v12, v0}, Lcom/pantech/app/music/view/SkyDialogFragment;->getButtonString(II)I

    move-result v10

    invoke-virtual {p0, v10}, Lcom/pantech/app/music/view/SkyDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v10

    new-instance v11, Lcom/pantech/app/music/view/SkyDialogFragment$3;

    invoke-direct {v11, p0}, Lcom/pantech/app/music/view/SkyDialogFragment$3;-><init>(Lcom/pantech/app/music/view/SkyDialogFragment;)V

    invoke-virtual {v7, v12, v10, v11}, Lcom/pantech/app/music/view/SkyMusicPopupList;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 758
    invoke-direct {p0, v13, v0}, Lcom/pantech/app/music/view/SkyDialogFragment;->getButtonString(II)I

    move-result v10

    invoke-virtual {p0, v10}, Lcom/pantech/app/music/view/SkyDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v10

    new-instance v11, Lcom/pantech/app/music/view/SkyDialogFragment$4;

    invoke-direct {v11, p0}, Lcom/pantech/app/music/view/SkyDialogFragment$4;-><init>(Lcom/pantech/app/music/view/SkyDialogFragment;)V

    invoke-virtual {v7, v13, v10, v11}, Lcom/pantech/app/music/view/SkyMusicPopupList;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 768
    const v10, 0x7f10014c

    invoke-virtual {v6, v10}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    .line 770
    .local v5, "popupCheckBoxView":Landroid/widget/CheckBox;
    invoke-virtual {v5, v14}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 772
    new-instance v10, Lcom/pantech/app/music/view/SkyDialogFragment$5;

    invoke-direct {v10, p0}, Lcom/pantech/app/music/view/SkyDialogFragment$5;-><init>(Lcom/pantech/app/music/view/SkyDialogFragment;)V

    invoke-virtual {v5, v10}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 785
    new-instance v10, Lcom/pantech/app/music/view/SkyDialogFragment$6;

    invoke-direct {v10, p0}, Lcom/pantech/app/music/view/SkyDialogFragment$6;-><init>(Lcom/pantech/app/music/view/SkyDialogFragment;)V

    invoke-virtual {p0, v10}, Lcom/pantech/app/music/view/SkyDialogFragment;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 796
    invoke-virtual {v7, v14}, Lcom/pantech/app/music/view/SkyMusicPopupList;->setCanceledOnTouchOutside(Z)V

    .line 798
    invoke-virtual {v7}, Lcom/pantech/app/music/view/SkyMusicPopupList;->show()V

    .line 800
    return-object v7

    .line 736
    .end local v2    # "inflater":Landroid/view/LayoutInflater;
    .end local v4    # "popupCheckBoxText":Landroid/widget/TextView;
    .end local v5    # "popupCheckBoxView":Landroid/widget/CheckBox;
    .end local v6    # "popupLayout":Landroid/widget/LinearLayout;
    .end local v8    # "popupMessageView":Landroid/widget/TextView;
    :cond_ac
    invoke-virtual {v7, v9}, Lcom/pantech/app/music/view/SkyMusicPopupList;->setTitle(I)V

    goto :goto_3c
.end method

.method public createDialog()Landroid/app/Dialog;
    .registers 5

    .prologue
    .line 384
    invoke-virtual {p0}, Lcom/pantech/app/music/view/SkyDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "dialogType"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 386
    .local v0, "dialogType":I
    const-string v1, "VMusicDiaglogFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCreateDialog"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/music/utils/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    invoke-virtual {p0}, Lcom/pantech/app/music/view/SkyDialogFragment;->createDialog()Landroid/app/Dialog;

    move-result-object v1

    return-object v1
.end method

.method public createInformPopupList()Lcom/pantech/app/music/view/SkyMusicPopupList;
    .registers 8

    .prologue
    .line 981
    new-instance v3, Lcom/pantech/app/music/view/SkyMusicPopupNoButton;

    invoke-virtual {p0}, Lcom/pantech/app/music/view/SkyDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v3, v5}, Lcom/pantech/app/music/view/SkyMusicPopupNoButton;-><init>(Landroid/content/Context;)V

    .line 983
    .local v3, "popupList":Lcom/pantech/app/music/view/SkyMusicPopupList;
    invoke-virtual {p0}, Lcom/pantech/app/music/view/SkyDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "dialogTitle"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 984
    .local v4, "title_id":I
    invoke-virtual {p0}, Lcom/pantech/app/music/view/SkyDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "dialogProgressMessage"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 985
    .local v2, "message_id":I
    invoke-virtual {p0}, Lcom/pantech/app/music/view/SkyDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "dialogDispSec"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 987
    .local v0, "disp_sec":I
    const/4 v5, 0x2

    invoke-virtual {p0, v5}, Lcom/pantech/app/music/view/SkyDialogFragment;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    .line 989
    .local v1, "extendsVal":Ljava/lang/Object;
    const/4 v5, -0x1

    if-ne v4, v5, :cond_55

    .line 990
    const v5, 0x7f08003e

    invoke-virtual {v3, v5}, Lcom/pantech/app/music/view/SkyMusicPopupList;->setTitle(I)V

    .line 994
    :goto_35
    invoke-virtual {v3, v2}, Lcom/pantech/app/music/view/SkyMusicPopupList;->setMessage(I)V

    .line 996
    new-instance v5, Lcom/pantech/app/music/view/SkyDialogFragment$11;

    invoke-direct {v5, p0}, Lcom/pantech/app/music/view/SkyDialogFragment$11;-><init>(Lcom/pantech/app/music/view/SkyDialogFragment;)V

    invoke-virtual {p0, v5}, Lcom/pantech/app/music/view/SkyDialogFragment;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1006
    if-eqz v0, :cond_47

    .line 1008
    mul-int/lit16 v5, v0, 0x3e8

    invoke-virtual {v3, v5}, Lcom/pantech/app/music/view/SkyMusicPopupList;->setDispTime(I)V

    .line 1011
    :cond_47
    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Lcom/pantech/app/music/view/SkyMusicPopupList;->setCanceledOnTouchOutside(Z)V

    .line 1013
    invoke-virtual {v3}, Lcom/pantech/app/music/view/SkyMusicPopupList;->show()V

    .line 1015
    if-eqz v0, :cond_54

    .line 1018
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lcom/pantech/app/music/view/SkyMusicPopupList;->setCancelable(Z)V

    .line 1021
    :cond_54
    return-object v3

    .line 992
    :cond_55
    invoke-virtual {v3, v4}, Lcom/pantech/app/music/view/SkyMusicPopupList;->setTitle(I)V

    goto :goto_35
.end method

.method public getDialog()Landroid/app/Dialog;
    .registers 2

    .prologue
    .line 1110
    invoke-super {p0}, Landroid/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method public getSkyMusicPopupList()Lcom/pantech/app/music/view/SkyMusicPopupList;
    .registers 2

    .prologue
    .line 1116
    invoke-virtual {p0}, Lcom/pantech/app/music/view/SkyDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/music/view/SkyMusicPopupList;

    return-object v0
.end method

.method public getTag(I)Ljava/lang/Object;
    .registers 3
    .param p1, "key"    # I

    .prologue
    .line 596
    iget-object v0, p0, Lcom/pantech/app/music/view/SkyDialogFragment;->mKeyedTags:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 436
    const-string v0, "VMusicDiaglogFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityCreated"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 439
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .registers 5
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 445
    const-string v0, "VMusicDiaglogFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAttach"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onAttach(Landroid/app/Activity;)V

    .line 448
    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 505
    const-string v0, "VMusicDiaglogFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mOnCancelListener:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/music/view/SkyDialogFragment;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 507
    iget-object v0, p0, Lcom/pantech/app/music/view/SkyDialogFragment;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    if-eqz v0, :cond_23

    .line 508
    iget-object v0, p0, Lcom/pantech/app/music/view/SkyDialogFragment;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    invoke-interface {v0, p1}, Landroid/content/DialogInterface$OnCancelListener;->onCancel(Landroid/content/DialogInterface;)V

    .line 510
    :cond_23
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    .line 511
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 6
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 643
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 645
    invoke-virtual {p0}, Lcom/pantech/app/music/view/SkyDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/music/view/SkyMusicPopupList;

    .line 647
    .local v0, "d":Lcom/pantech/app/music/view/SkyMusicPopupList;
    const-string v1, "VMusicDiaglogFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onConfigurationChanged:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/music/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 649
    if-eqz v0, :cond_37

    .line 651
    invoke-virtual {p0}, Lcom/pantech/app/music/view/SkyDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "dialogType"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/pantech/app/music/view/SkyDialogFragment;->mDialogType:I

    .line 653
    iget v1, p0, Lcom/pantech/app/music/view/SkyDialogFragment;->mDialogType:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_38

    .line 655
    invoke-direct {p0, v0}, Lcom/pantech/app/music/view/SkyDialogFragment;->updateAskPopupList(Lcom/pantech/app/music/view/SkyMusicPopupList;)V

    .line 662
    :cond_37
    :goto_37
    return-void

    .line 657
    :cond_38
    iget v1, p0, Lcom/pantech/app/music/view/SkyDialogFragment;->mDialogType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_37

    .line 659
    invoke-direct {p0, v0}, Lcom/pantech/app/music/view/SkyDialogFragment;->updateEditPopupList(Lcom/pantech/app/music/view/SkyMusicPopupList;)V

    goto :goto_37
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "arg0"    # Landroid/os/Bundle;

    .prologue
    .line 373
    const-string v0, "VMusicDiaglogFragment"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pantech/app/music/view/SkyDialogFragment;->mEditPopupList:Lcom/pantech/app/music/view/SkyMusicPopupList;

    .line 377
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/pantech/app/music/view/SkyDialogFragment;->setRetainInstance(Z)V

    .line 379
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 380
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .registers 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 392
    invoke-virtual {p0}, Lcom/pantech/app/music/view/SkyDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "dialogType"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/pantech/app/music/view/SkyDialogFragment;->mDialogType:I

    .line 394
    const-string v0, "VMusicDiaglogFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreateDialog Type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/pantech/app/music/view/SkyDialogFragment;->mDialogType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    iget v0, p0, Lcom/pantech/app/music/view/SkyDialogFragment;->mDialogType:I

    packed-switch v0, :pswitch_data_56

    .line 429
    :pswitch_2b
    const/4 v0, 0x0

    :goto_2c
    return-object v0

    .line 399
    :pswitch_2d
    invoke-direct {p0}, Lcom/pantech/app/music/view/SkyDialogFragment;->createEditPopupList()Lcom/pantech/app/music/view/SkyMusicPopupList;

    move-result-object v0

    goto :goto_2c

    .line 402
    :pswitch_32
    invoke-virtual {p0}, Lcom/pantech/app/music/view/SkyDialogFragment;->createInformPopupList()Lcom/pantech/app/music/view/SkyMusicPopupList;

    move-result-object v0

    goto :goto_2c

    .line 405
    :pswitch_37
    invoke-direct {p0}, Lcom/pantech/app/music/view/SkyDialogFragment;->createAskPopupList()Lcom/pantech/app/music/view/SkyMusicPopupList;

    move-result-object v0

    goto :goto_2c

    .line 408
    :pswitch_3c
    invoke-virtual {p0}, Lcom/pantech/app/music/view/SkyDialogFragment;->createChkAskPopupList()Lcom/pantech/app/music/view/SkyMusicPopupList;

    move-result-object v0

    goto :goto_2c

    .line 411
    :pswitch_41
    invoke-direct {p0}, Lcom/pantech/app/music/view/SkyDialogFragment;->createSavingPopupList()Lcom/pantech/app/music/view/SkySavingDialog;

    move-result-object v0

    goto :goto_2c

    .line 414
    :pswitch_46
    invoke-direct {p0}, Lcom/pantech/app/music/view/SkyDialogFragment;->createLoadingPopupList()Lcom/pantech/app/music/view/SkyProgressDialog;

    move-result-object v0

    goto :goto_2c

    .line 423
    :pswitch_4b
    invoke-direct {p0}, Lcom/pantech/app/music/view/SkyDialogFragment;->createListSelectPopupList()Lcom/pantech/app/music/view/SkyMusicPopupList;

    move-result-object v0

    goto :goto_2c

    .line 426
    :pswitch_50
    invoke-direct {p0}, Lcom/pantech/app/music/view/SkyDialogFragment;->createPickerDialog()Lcom/pantech/app/music/view/SkyWheelSortingPickerDialog;

    move-result-object v0

    goto :goto_2c

    .line 396
    nop

    :pswitch_data_56
    .packed-switch 0x1
        :pswitch_2d
        :pswitch_32
        :pswitch_41
        :pswitch_46
        :pswitch_37
        :pswitch_3c
        :pswitch_2b
        :pswitch_4b
        :pswitch_50
    .end packed-switch
.end method

.method public onDestroyView()V
    .registers 3

    .prologue
    .line 493
    invoke-virtual {p0}, Lcom/pantech/app/music/view/SkyDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_14

    invoke-virtual {p0}, Lcom/pantech/app/music/view/SkyDialogFragment;->getRetainInstance()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 494
    invoke-virtual {p0}, Lcom/pantech/app/music/view/SkyDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setDismissMessage(Landroid/os/Message;)V

    .line 496
    :cond_14
    const-string v0, "VMusicDiaglogFragment"

    const-string v1, "onDestroyView()"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 498
    invoke-super {p0}, Landroid/app/DialogFragment;->onDestroyView()V

    .line 499
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 517
    const-string v0, "VMusicDiaglogFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDismiss mDialogType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/pantech/app/music/view/SkyDialogFragment;->mDialogType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 519
    iget-object v0, p0, Lcom/pantech/app/music/view/SkyDialogFragment;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    if-eqz v0, :cond_23

    .line 520
    iget-object v0, p0, Lcom/pantech/app/music/view/SkyDialogFragment;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-interface {v0, p1}, Landroid/content/DialogInterface$OnDismissListener;->onDismiss(Landroid/content/DialogInterface;)V

    .line 522
    :cond_23
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 523
    return-void
.end method

.method public onStart()V
    .registers 3

    .prologue
    .line 454
    const-string v0, "VMusicDiaglogFragment"

    const-string v1, "onStart"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    invoke-super {p0}, Landroid/app/DialogFragment;->onStart()V

    .line 457
    return-void
.end method

.method public onStop()V
    .registers 5

    .prologue
    const v3, 0x7f10014a

    .line 463
    const-string v1, "VMusicDiaglogFragment"

    const-string v2, "onStop"

    invoke-static {v1, v2}, Lcom/pantech/app/music/utils/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 465
    invoke-virtual {p0}, Lcom/pantech/app/music/view/SkyDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_63

    invoke-virtual {p0}, Lcom/pantech/app/music/view/SkyDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v1

    if-eqz v1, :cond_63

    .line 467
    iget v1, p0, Lcom/pantech/app/music/view/SkyDialogFragment;->mDialogType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_63

    invoke-virtual {p0}, Lcom/pantech/app/music/view/SkyDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    if-eqz v1, :cond_63

    .line 469
    invoke-virtual {p0}, Lcom/pantech/app/music/view/SkyDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/music/view/SkyEditText;

    .line 471
    .local v0, "editTextForPlayListName":Lcom/pantech/app/music/view/SkyEditText;
    if-eqz v0, :cond_63

    .line 473
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EditTextString:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/pantech/app/music/view/SkyEditText;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/pantech/app/music/utils/MLog;->i(Ljava/lang/String;)V

    .line 474
    invoke-virtual {v0}, Lcom/pantech/app/music/view/SkyEditText;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v3, v1}, Lcom/pantech/app/music/view/SkyDialogFragment;->setTag(ILjava/lang/Object;)V

    .line 476
    const/16 v1, 0x7777

    invoke-virtual {v0}, Lcom/pantech/app/music/view/SkyEditText;->getUndoBtnState()Lcom/pantech/app/music/view/SkyEditText$UndoStateOfSkyEditText;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/pantech/app/music/view/SkyDialogFragment;->setTag(ILjava/lang/Object;)V

    .line 481
    .end local v0    # "editTextForPlayListName":Lcom/pantech/app/music/view/SkyEditText;
    :cond_63
    invoke-super {p0}, Landroid/app/DialogFragment;->onStop()V

    .line 482
    return-void
.end method

.method public setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V
    .registers 2
    .param p1, "callback"    # Landroid/content/DialogInterface$OnCancelListener;

    .prologue
    .line 563
    iput-object p1, p0, Lcom/pantech/app/music/view/SkyDialogFragment;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    .line 564
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .registers 2
    .param p1, "callback"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 536
    iput-object p1, p0, Lcom/pantech/app/music/view/SkyDialogFragment;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 537
    return-void
.end method

.method public setOnDialogChkboxQuestionListener(Lcom/pantech/app/music/utils/ListUtils$OnDialogTwoButtonOneCheckBoxCallback;)V
    .registers 2
    .param p1, "callback"    # Lcom/pantech/app/music/utils/ListUtils$OnDialogTwoButtonOneCheckBoxCallback;

    .prologue
    .line 551
    iput-object p1, p0, Lcom/pantech/app/music/view/SkyDialogFragment;->mDialogChkQuestionListener:Lcom/pantech/app/music/utils/ListUtils$OnDialogTwoButtonOneCheckBoxCallback;

    .line 552
    return-void
.end method

.method public setOnDialogQuestionListener(Lcom/pantech/app/music/view/SkyDialogFragment$OnDialogQuestionCallback;)V
    .registers 2
    .param p1, "callback"    # Lcom/pantech/app/music/view/SkyDialogFragment$OnDialogQuestionCallback;

    .prologue
    .line 541
    iput-object p1, p0, Lcom/pantech/app/music/view/SkyDialogFragment;->mDialogQuestionListener:Lcom/pantech/app/music/view/SkyDialogFragment$OnDialogQuestionCallback;

    .line 542
    return-void
.end method

.method public setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V
    .registers 5
    .param p1, "callback"    # Landroid/content/DialogInterface$OnDismissListener;

    .prologue
    .line 568
    const-string v0, "VMusicDiaglogFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setOnDismissListener:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 570
    iput-object p1, p0, Lcom/pantech/app/music/view/SkyDialogFragment;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 571
    return-void
.end method

.method public setOnInformListener(Lcom/pantech/app/music/utils/ListUtils$OnDialogInformationCallback;)V
    .registers 2
    .param p1, "callback"    # Lcom/pantech/app/music/utils/ListUtils$OnDialogInformationCallback;

    .prologue
    .line 546
    iput-object p1, p0, Lcom/pantech/app/music/view/SkyDialogFragment;->mDialogInformListener:Lcom/pantech/app/music/utils/ListUtils$OnDialogInformationCallback;

    .line 547
    return-void
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .registers 5
    .param p1, "listener"    # Landroid/widget/AdapterView$OnItemClickListener;

    .prologue
    .line 575
    const-string v0, "VMusicDiaglogFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setOnItemClickListener:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 577
    iput-object p1, p0, Lcom/pantech/app/music/view/SkyDialogFragment;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 578
    return-void
.end method

.method public setShowsDialog(Z)V
    .registers 5
    .param p1, "showsDialog"    # Z

    .prologue
    .line 529
    const-string v0, "VMusicDiaglogFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setShowsDialog"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 531
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->setShowsDialog(Z)V

    .line 532
    return-void
.end method

.method public setSortListener(Lcom/pantech/app/music/view/SkyWheelSortingPickerDialog$OnSortSetListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/pantech/app/music/view/SkyWheelSortingPickerDialog$OnSortSetListener;

    .prologue
    .line 582
    iput-object p1, p0, Lcom/pantech/app/music/view/SkyDialogFragment;->mSortListener:Lcom/pantech/app/music/view/SkyWheelSortingPickerDialog$OnSortSetListener;

    .line 583
    return-void
.end method

.method public setTag(ILjava/lang/Object;)V
    .registers 4
    .param p1, "key"    # I
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 587
    iget-object v0, p0, Lcom/pantech/app/music/view/SkyDialogFragment;->mKeyedTags:Landroid/util/SparseArray;

    if-nez v0, :cond_b

    .line 588
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/pantech/app/music/view/SkyDialogFragment;->mKeyedTags:Landroid/util/SparseArray;

    .line 591
    :cond_b
    iget-object v0, p0, Lcom/pantech/app/music/view/SkyDialogFragment;->mKeyedTags:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 592
    return-void
.end method

.method public show(Landroid/app/FragmentTransaction;Ljava/lang/String;)I
    .registers 4
    .param p1, "arg0"    # Landroid/app/FragmentTransaction;
    .param p2, "arg1"    # Ljava/lang/String;

    .prologue
    .line 1132
    invoke-super {p0, p1, p2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentTransaction;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public show(Landroid/app/FragmentManager;Ljava/lang/String;)V
    .registers 3
    .param p1, "arg0"    # Landroid/app/FragmentManager;
    .param p2, "arg1"    # Ljava/lang/String;

    .prologue
    .line 1124
    invoke-super {p0, p1, p2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 1125
    return-void
.end method
