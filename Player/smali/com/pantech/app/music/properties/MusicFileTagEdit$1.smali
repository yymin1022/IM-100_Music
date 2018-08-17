.class Lcom/pantech/app/music/properties/MusicFileTagEdit$1;
.super Ljava/lang/Object;
.source "MusicFileTagEdit.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/app/music/properties/MusicFileTagEdit;->showDialogForTagEdit(ILcom/pantech/app/music/properties/MusicFileTagEditData;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/music/properties/MusicFileTagEdit;

.field final synthetic val$spinnerGenre:Landroid/widget/Spinner;

.field final synthetic val$writeType:I


# direct methods
.method constructor <init>(Lcom/pantech/app/music/properties/MusicFileTagEdit;Landroid/widget/Spinner;I)V
    .registers 4

    .prologue
    .line 220
    iput-object p1, p0, Lcom/pantech/app/music/properties/MusicFileTagEdit$1;->this$0:Lcom/pantech/app/music/properties/MusicFileTagEdit;

    iput-object p2, p0, Lcom/pantech/app/music/properties/MusicFileTagEdit$1;->val$spinnerGenre:Landroid/widget/Spinner;

    iput p3, p0, Lcom/pantech/app/music/properties/MusicFileTagEdit$1;->val$writeType:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 24
    .param p1, "arg0"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    .line 224
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/pantech/app/music/properties/MusicFileTagEdit$1;->this$0:Lcom/pantech/app/music/properties/MusicFileTagEdit;

    invoke-static {v9}, Lcom/pantech/app/music/properties/MusicFileTagEdit;->access$100(Lcom/pantech/app/music/properties/MusicFileTagEdit;)Lcom/pantech/app/music/view/SkyEditText;

    move-result-object v9

    invoke-virtual {v9}, Lcom/pantech/app/music/view/SkyEditText;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 225
    .local v4, "newTitle":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/pantech/app/music/properties/MusicFileTagEdit$1;->this$0:Lcom/pantech/app/music/properties/MusicFileTagEdit;

    invoke-static {v9}, Lcom/pantech/app/music/properties/MusicFileTagEdit;->access$200(Lcom/pantech/app/music/properties/MusicFileTagEdit;)Lcom/pantech/app/music/view/SkyEditText;

    move-result-object v9

    invoke-virtual {v9}, Lcom/pantech/app/music/view/SkyEditText;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    .line 226
    .local v5, "newArtist":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/pantech/app/music/properties/MusicFileTagEdit$1;->this$0:Lcom/pantech/app/music/properties/MusicFileTagEdit;

    invoke-static {v9}, Lcom/pantech/app/music/properties/MusicFileTagEdit;->access$300(Lcom/pantech/app/music/properties/MusicFileTagEdit;)Lcom/pantech/app/music/view/SkyEditText;

    move-result-object v9

    invoke-virtual {v9}, Lcom/pantech/app/music/view/SkyEditText;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    .line 227
    .local v6, "newAlbum":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/pantech/app/music/properties/MusicFileTagEdit$1;->this$0:Lcom/pantech/app/music/properties/MusicFileTagEdit;

    invoke-static {v9}, Lcom/pantech/app/music/properties/MusicFileTagEdit;->access$400(Lcom/pantech/app/music/properties/MusicFileTagEdit;)Lcom/pantech/app/music/view/SkyEditText;

    move-result-object v9

    invoke-virtual {v9}, Lcom/pantech/app/music/view/SkyEditText;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    .line 228
    .local v8, "newTrack":Ljava/lang/String;
    const/4 v7, 0x0

    .line 230
    .local v7, "newGenre":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/pantech/app/music/properties/MusicFileTagEdit$1;->this$0:Lcom/pantech/app/music/properties/MusicFileTagEdit;

    invoke-static {v9}, Lcom/pantech/app/music/properties/MusicFileTagEdit;->access$500(Lcom/pantech/app/music/properties/MusicFileTagEdit;)Lcom/pantech/app/music/view/SkyEditText;

    move-result-object v9

    invoke-virtual {v9}, Lcom/pantech/app/music/view/SkyEditText;->getVisibility()I

    move-result v9

    if-nez v9, :cond_cb

    .line 231
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/pantech/app/music/properties/MusicFileTagEdit$1;->this$0:Lcom/pantech/app/music/properties/MusicFileTagEdit;

    invoke-static {v9}, Lcom/pantech/app/music/properties/MusicFileTagEdit;->access$500(Lcom/pantech/app/music/properties/MusicFileTagEdit;)Lcom/pantech/app/music/view/SkyEditText;

    move-result-object v9

    invoke-virtual {v9}, Lcom/pantech/app/music/view/SkyEditText;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    .line 241
    :cond_5f
    :goto_5f
    new-instance v3, Lcom/pantech/app/music/properties/MusicFileTagEditData;

    const/4 v9, 0x1

    invoke-direct/range {v3 .. v9}, Lcom/pantech/app/music/properties/MusicFileTagEditData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 243
    .local v3, "userData":Lcom/pantech/app/music/properties/MusicFileTagEditData;
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/pantech/app/music/properties/MusicFileTagEdit$1;->this$0:Lcom/pantech/app/music/properties/MusicFileTagEdit;

    invoke-static {v9}, Lcom/pantech/app/music/properties/MusicFileTagEdit;->access$600(Lcom/pantech/app/music/properties/MusicFileTagEdit;)Landroid/content/Context;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/app/music/properties/MusicFileTagEdit$1;->this$0:Lcom/pantech/app/music/properties/MusicFileTagEdit;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/pantech/app/music/properties/MusicFileTagEdit;->access$500(Lcom/pantech/app/music/properties/MusicFileTagEdit;)Lcom/pantech/app/music/view/SkyEditText;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/pantech/app/music/view/SkyEditText;->getVisibility()I

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v3, v9, v0}, Lcom/pantech/app/music/properties/MusicFileTagEditData;->getAndCheckEmptyData(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v10

    .line 244
    .local v10, "emptyStr":Ljava/lang/String;
    invoke-virtual {v3}, Lcom/pantech/app/music/properties/MusicFileTagEditData;->checkDataChanged()Z

    move-result v11

    .line 245
    .local v11, "isDataChange":Z
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/pantech/app/music/properties/MusicFileTagEdit$1;->this$0:Lcom/pantech/app/music/properties/MusicFileTagEdit;

    invoke-virtual {v9}, Lcom/pantech/app/music/properties/MusicFileTagEdit;->getStorageAvailableType()I

    move-result v16

    .line 246
    .local v16, "storageType":I
    invoke-virtual {v3}, Lcom/pantech/app/music/properties/MusicFileTagEditData;->checkSpecialCharacter()Z

    move-result v12

    .line 248
    .local v12, "isSpecialCharactor":Z
    if-eqz v10, :cond_e8

    .line 250
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/pantech/app/music/properties/MusicFileTagEdit$1;->this$0:Lcom/pantech/app/music/properties/MusicFileTagEdit;

    invoke-static {v9}, Lcom/pantech/app/music/properties/MusicFileTagEdit;->access$700(Lcom/pantech/app/music/properties/MusicFileTagEdit;)Lcom/pantech/app/music/properties/MusicPropertiesActivity$OnTagEditCallback;

    move-result-object v9

    if-eqz v9, :cond_a8

    .line 251
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/pantech/app/music/properties/MusicFileTagEdit$1;->this$0:Lcom/pantech/app/music/properties/MusicFileTagEdit;

    invoke-static {v9}, Lcom/pantech/app/music/properties/MusicFileTagEdit;->access$700(Lcom/pantech/app/music/properties/MusicFileTagEdit;)Lcom/pantech/app/music/properties/MusicPropertiesActivity$OnTagEditCallback;

    move-result-object v9

    invoke-interface {v9, v10}, Lcom/pantech/app/music/properties/MusicPropertiesActivity$OnTagEditCallback;->onShowToast(Ljava/lang/String;)V

    .line 253
    :cond_a8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/app/music/properties/MusicFileTagEdit$1;->this$0:Lcom/pantech/app/music/properties/MusicFileTagEdit;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/pantech/app/music/properties/MusicFileTagEdit$1;->val$writeType:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/pantech/app/music/properties/MusicFileTagEdit$1;->this$0:Lcom/pantech/app/music/properties/MusicFileTagEdit;

    invoke-static {v9}, Lcom/pantech/app/music/properties/MusicFileTagEdit;->access$500(Lcom/pantech/app/music/properties/MusicFileTagEdit;)Lcom/pantech/app/music/view/SkyEditText;

    move-result-object v9

    invoke-virtual {v9}, Lcom/pantech/app/music/view/SkyEditText;->getVisibility()I

    move-result v9

    if-nez v9, :cond_e6

    const/4 v9, 0x1

    :goto_c3
    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-static {v0, v1, v3, v9}, Lcom/pantech/app/music/properties/MusicFileTagEdit;->access$800(Lcom/pantech/app/music/properties/MusicFileTagEdit;ILcom/pantech/app/music/properties/MusicFileTagEditData;Z)V

    .line 313
    :cond_ca
    :goto_ca
    return-void

    .line 232
    .end local v3    # "userData":Lcom/pantech/app/music/properties/MusicFileTagEditData;
    .end local v10    # "emptyStr":Ljava/lang/String;
    .end local v11    # "isDataChange":Z
    .end local v12    # "isSpecialCharactor":Z
    .end local v16    # "storageType":I
    :cond_cb
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/pantech/app/music/properties/MusicFileTagEdit$1;->val$spinnerGenre:Landroid/widget/Spinner;

    invoke-virtual {v9}, Landroid/widget/Spinner;->getVisibility()I

    move-result v9

    if-nez v9, :cond_5f

    .line 234
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/pantech/app/music/properties/MusicFileTagEdit$1;->val$spinnerGenre:Landroid/widget/Spinner;

    invoke-virtual {v9}, Landroid/widget/Spinner;->getTag()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 235
    .local v15, "obj":Ljava/lang/String;
    if-eqz v15, :cond_5f

    move-object v7, v15

    .line 236
    check-cast v7, Ljava/lang/String;

    goto/16 :goto_5f

    .line 253
    .end local v15    # "obj":Ljava/lang/String;
    .restart local v3    # "userData":Lcom/pantech/app/music/properties/MusicFileTagEditData;
    .restart local v10    # "emptyStr":Ljava/lang/String;
    .restart local v11    # "isDataChange":Z
    .restart local v12    # "isSpecialCharactor":Z
    .restart local v16    # "storageType":I
    :cond_e6
    const/4 v9, 0x0

    goto :goto_c3

    .line 256
    :cond_e8
    if-nez v11, :cond_f4

    .line 258
    const-string v9, "VMusicTagEdit"

    const-string v18, "No data changed"

    move-object/from16 v0, v18

    invoke-static {v9, v0}, Lcom/pantech/app/music/utils/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_ca

    .line 260
    :cond_f4
    if-eqz v12, :cond_139

    .line 262
    const-string v9, "VMusicTagEdit"

    const-string v18, "Has Special Character"

    move-object/from16 v0, v18

    invoke-static {v9, v0}, Lcom/pantech/app/music/utils/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/pantech/app/music/properties/MusicFileTagEdit$1;->this$0:Lcom/pantech/app/music/properties/MusicFileTagEdit;

    invoke-static {v9}, Lcom/pantech/app/music/properties/MusicFileTagEdit;->access$700(Lcom/pantech/app/music/properties/MusicFileTagEdit;)Lcom/pantech/app/music/properties/MusicPropertiesActivity$OnTagEditCallback;

    move-result-object v9

    if-eqz v9, :cond_119

    .line 265
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/pantech/app/music/properties/MusicFileTagEdit$1;->this$0:Lcom/pantech/app/music/properties/MusicFileTagEdit;

    invoke-static {v9}, Lcom/pantech/app/music/properties/MusicFileTagEdit;->access$700(Lcom/pantech/app/music/properties/MusicFileTagEdit;)Lcom/pantech/app/music/properties/MusicPropertiesActivity$OnTagEditCallback;

    move-result-object v9

    const v18, 0x7f080156

    move/from16 v0, v18

    invoke-interface {v9, v0}, Lcom/pantech/app/music/properties/MusicPropertiesActivity$OnTagEditCallback;->onShowToast(I)V

    .line 267
    :cond_119
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/pantech/app/music/properties/MusicFileTagEdit$1;->this$0:Lcom/pantech/app/music/properties/MusicFileTagEdit;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/pantech/app/music/properties/MusicFileTagEdit$1;->val$writeType:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/app/music/properties/MusicFileTagEdit$1;->this$0:Lcom/pantech/app/music/properties/MusicFileTagEdit;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/pantech/app/music/properties/MusicFileTagEdit;->access$900(Lcom/pantech/app/music/properties/MusicFileTagEdit;)Lcom/pantech/app/music/properties/MusicFileTagEditData;

    move-result-object v19

    const/16 v20, 0x0

    move/from16 v0, v18

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v9, v0, v1, v2}, Lcom/pantech/app/music/properties/MusicFileTagEdit;->access$800(Lcom/pantech/app/music/properties/MusicFileTagEdit;ILcom/pantech/app/music/properties/MusicFileTagEditData;Z)V

    goto :goto_ca

    .line 269
    :cond_139
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/pantech/app/music/properties/MusicFileTagEdit$1;->this$0:Lcom/pantech/app/music/properties/MusicFileTagEdit;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/pantech/app/music/properties/MusicFileTagEdit$1;->val$writeType:I

    move/from16 v18, v0

    iget-object v0, v3, Lcom/pantech/app/music/properties/MusicFileTagEditData;->track:Ljava/lang/String;

    move-object/from16 v19, v0

    move/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v9, v0, v1}, Lcom/pantech/app/music/properties/MusicFileTagEdit;->access$1000(Lcom/pantech/app/music/properties/MusicFileTagEdit;ILjava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_255

    if-nez v16, :cond_255

    .line 271
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/pantech/app/music/properties/MusicFileTagEdit$1;->this$0:Lcom/pantech/app/music/properties/MusicFileTagEdit;

    invoke-static {v9}, Lcom/pantech/app/music/properties/MusicFileTagEdit;->access$1100(Lcom/pantech/app/music/properties/MusicFileTagEdit;)Lcom/pantech/app/music/properties/MusicFileTagEditHandler;

    move-result-object v9

    if-eqz v9, :cond_250

    .line 273
    const-string v9, "VMusicTagEdit"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "APP DATA >> TITLE:  "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget-object v0, v3, Lcom/pantech/app/music/properties/MusicFileTagEditData;->title:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v9, v0}, Lcom/pantech/app/music/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    const-string v9, "VMusicTagEdit"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "APP DATA >> ALBUM:  "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget-object v0, v3, Lcom/pantech/app/music/properties/MusicFileTagEditData;->album:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v9, v0}, Lcom/pantech/app/music/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    const-string v9, "VMusicTagEdit"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "APP DATA >> Artist: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget-object v0, v3, Lcom/pantech/app/music/properties/MusicFileTagEditData;->artist:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v9, v0}, Lcom/pantech/app/music/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    const-string v9, "VMusicTagEdit"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "APP DATA >> Genre:  "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget-object v0, v3, Lcom/pantech/app/music/properties/MusicFileTagEditData;->genre:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v9, v0}, Lcom/pantech/app/music/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    const-string v9, "VMusicTagEdit"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "APP DATA >> Track:  "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget-object v0, v3, Lcom/pantech/app/music/properties/MusicFileTagEditData;->track:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v9, v0}, Lcom/pantech/app/music/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/pantech/app/music/properties/MusicFileTagEdit$1;->this$0:Lcom/pantech/app/music/properties/MusicFileTagEdit;

    invoke-static {v9}, Lcom/pantech/app/music/properties/MusicFileTagEdit;->access$1200(Lcom/pantech/app/music/properties/MusicFileTagEdit;)Lcom/pantech/app/music/properties/MusicFileTagEdit$TagEditUIHandler;

    move-result-object v9

    if-eqz v9, :cond_20c

    .line 280
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/pantech/app/music/properties/MusicFileTagEdit$1;->this$0:Lcom/pantech/app/music/properties/MusicFileTagEdit;

    invoke-static {v9}, Lcom/pantech/app/music/properties/MusicFileTagEdit;->access$1200(Lcom/pantech/app/music/properties/MusicFileTagEdit;)Lcom/pantech/app/music/properties/MusicFileTagEdit$TagEditUIHandler;

    move-result-object v9

    const/16 v18, 0x4

    move/from16 v0, v18

    invoke-virtual {v9, v0}, Lcom/pantech/app/music/properties/MusicFileTagEdit$TagEditUIHandler;->sendEmptyMessage(I)Z

    .line 283
    :cond_20c
    new-instance v14, Lcom/pantech/audiotag/AudioFileTagData;

    invoke-direct {v14}, Lcom/pantech/audiotag/AudioFileTagData;-><init>()V

    .line 284
    .local v14, "newData":Lcom/pantech/audiotag/AudioFileTagData;
    iget-object v9, v3, Lcom/pantech/app/music/properties/MusicFileTagEditData;->title:Ljava/lang/String;

    invoke-virtual {v14, v9}, Lcom/pantech/audiotag/AudioFileTagData;->setTitle(Ljava/lang/String;)V

    .line 285
    iget-object v9, v3, Lcom/pantech/app/music/properties/MusicFileTagEditData;->album:Ljava/lang/String;

    invoke-virtual {v14, v9}, Lcom/pantech/audiotag/AudioFileTagData;->setAlbum(Ljava/lang/String;)V

    .line 286
    iget-object v9, v3, Lcom/pantech/app/music/properties/MusicFileTagEditData;->artist:Ljava/lang/String;

    invoke-virtual {v14, v9}, Lcom/pantech/audiotag/AudioFileTagData;->setArtist(Ljava/lang/String;)V

    .line 287
    iget-object v9, v3, Lcom/pantech/app/music/properties/MusicFileTagEditData;->genre:Ljava/lang/String;

    invoke-virtual {v14, v9}, Lcom/pantech/audiotag/AudioFileTagData;->setGenre(Ljava/lang/String;)V

    .line 288
    iget-object v9, v3, Lcom/pantech/app/music/properties/MusicFileTagEditData;->track:Ljava/lang/String;

    invoke-virtual {v14, v9}, Lcom/pantech/audiotag/AudioFileTagData;->setTrack(Ljava/lang/String;)V

    .line 290
    sget-object v9, Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;->YEAR:Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;

    invoke-virtual {v9}, Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;->getProperty()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v14, v9}, Lcom/pantech/audiotag/AudioFileTagData;->setYear(Ljava/lang/String;)V

    .line 292
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/pantech/app/music/properties/MusicFileTagEdit$1;->this$0:Lcom/pantech/app/music/properties/MusicFileTagEdit;

    invoke-static {v9}, Lcom/pantech/app/music/properties/MusicFileTagEdit;->access$1100(Lcom/pantech/app/music/properties/MusicFileTagEdit;)Lcom/pantech/app/music/properties/MusicFileTagEditHandler;

    move-result-object v9

    const/16 v18, 0x2

    move/from16 v0, v18

    invoke-virtual {v9, v0}, Lcom/pantech/app/music/properties/MusicFileTagEditHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v13

    .line 293
    .local v13, "msg":Landroid/os/Message;
    iput-object v14, v13, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 294
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/pantech/app/music/properties/MusicFileTagEdit$1;->this$0:Lcom/pantech/app/music/properties/MusicFileTagEdit;

    invoke-static {v9}, Lcom/pantech/app/music/properties/MusicFileTagEdit;->access$1100(Lcom/pantech/app/music/properties/MusicFileTagEdit;)Lcom/pantech/app/music/properties/MusicFileTagEditHandler;

    move-result-object v9

    invoke-virtual {v9, v13}, Lcom/pantech/app/music/properties/MusicFileTagEditHandler;->sendMessage(Landroid/os/Message;)Z

    .line 297
    .end local v13    # "msg":Landroid/os/Message;
    .end local v14    # "newData":Lcom/pantech/audiotag/AudioFileTagData;
    :cond_250
    invoke-interface/range {p1 .. p1}, Landroid/content/DialogInterface;->dismiss()V

    goto/16 :goto_ca

    .line 299
    :cond_255
    if-gez v16, :cond_27b

    .line 301
    const v17, 0x7f080155

    .line 303
    .local v17, "strID":I
    const/4 v9, -0x2

    move/from16 v0, v16

    if-ne v0, v9, :cond_262

    .line 304
    const v17, 0x7f08014b

    .line 306
    :cond_262
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/pantech/app/music/properties/MusicFileTagEdit$1;->this$0:Lcom/pantech/app/music/properties/MusicFileTagEdit;

    invoke-static {v9}, Lcom/pantech/app/music/properties/MusicFileTagEdit;->access$700(Lcom/pantech/app/music/properties/MusicFileTagEdit;)Lcom/pantech/app/music/properties/MusicPropertiesActivity$OnTagEditCallback;

    move-result-object v9

    if-eqz v9, :cond_ca

    .line 307
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/pantech/app/music/properties/MusicFileTagEdit$1;->this$0:Lcom/pantech/app/music/properties/MusicFileTagEdit;

    invoke-static {v9}, Lcom/pantech/app/music/properties/MusicFileTagEdit;->access$700(Lcom/pantech/app/music/properties/MusicFileTagEdit;)Lcom/pantech/app/music/properties/MusicPropertiesActivity$OnTagEditCallback;

    move-result-object v9

    move/from16 v0, v17

    invoke-interface {v9, v0}, Lcom/pantech/app/music/properties/MusicPropertiesActivity$OnTagEditCallback;->onShowToast(I)V

    goto/16 :goto_ca

    .line 311
    .end local v17    # "strID":I
    :cond_27b
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/pantech/app/music/properties/MusicFileTagEdit$1;->this$0:Lcom/pantech/app/music/properties/MusicFileTagEdit;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/pantech/app/music/properties/MusicFileTagEdit$1;->val$writeType:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/app/music/properties/MusicFileTagEdit$1;->this$0:Lcom/pantech/app/music/properties/MusicFileTagEdit;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/pantech/app/music/properties/MusicFileTagEdit;->access$900(Lcom/pantech/app/music/properties/MusicFileTagEdit;)Lcom/pantech/app/music/properties/MusicFileTagEditData;

    move-result-object v19

    const/16 v20, 0x0

    move/from16 v0, v18

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v9, v0, v1, v2}, Lcom/pantech/app/music/properties/MusicFileTagEdit;->access$800(Lcom/pantech/app/music/properties/MusicFileTagEdit;ILcom/pantech/app/music/properties/MusicFileTagEditData;Z)V

    goto/16 :goto_ca
.end method
