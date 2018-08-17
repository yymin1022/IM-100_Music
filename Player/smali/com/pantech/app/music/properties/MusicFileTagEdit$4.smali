.class Lcom/pantech/app/music/properties/MusicFileTagEdit$4;
.super Ljava/lang/Object;
.source "MusicFileTagEdit.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/app/music/properties/MusicFileTagEdit;->setGenreSpinner(Landroid/widget/Spinner;Lcom/pantech/app/music/view/SkyEditText;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/music/properties/MusicFileTagEdit;

.field final synthetic val$adapter:Landroid/widget/ArrayAdapter;

.field final synthetic val$editTextGenre:Lcom/pantech/app/music/view/SkyEditText;

.field final synthetic val$genreSpinner:Landroid/widget/Spinner;

.field final synthetic val$oldGenre:Ljava/lang/String;

.field final synthetic val$spinItems:Ljava/util/ArrayList;

.field final synthetic val$writeType:I


# direct methods
.method constructor <init>(Lcom/pantech/app/music/properties/MusicFileTagEdit;Landroid/widget/ArrayAdapter;Landroid/widget/Spinner;Lcom/pantech/app/music/view/SkyEditText;ILjava/lang/String;Ljava/util/ArrayList;)V
    .registers 8

    .prologue
    .line 375
    iput-object p1, p0, Lcom/pantech/app/music/properties/MusicFileTagEdit$4;->this$0:Lcom/pantech/app/music/properties/MusicFileTagEdit;

    iput-object p2, p0, Lcom/pantech/app/music/properties/MusicFileTagEdit$4;->val$adapter:Landroid/widget/ArrayAdapter;

    iput-object p3, p0, Lcom/pantech/app/music/properties/MusicFileTagEdit$4;->val$genreSpinner:Landroid/widget/Spinner;

    iput-object p4, p0, Lcom/pantech/app/music/properties/MusicFileTagEdit$4;->val$editTextGenre:Lcom/pantech/app/music/view/SkyEditText;

    iput p5, p0, Lcom/pantech/app/music/properties/MusicFileTagEdit$4;->val$writeType:I

    iput-object p6, p0, Lcom/pantech/app/music/properties/MusicFileTagEdit$4;->val$oldGenre:Ljava/lang/String;

    iput-object p7, p0, Lcom/pantech/app/music/properties/MusicFileTagEdit$4;->val$spinItems:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 10
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 379
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/pantech/app/music/properties/MusicFileTagEdit$4;->this$0:Lcom/pantech/app/music/properties/MusicFileTagEdit;

    invoke-static {v1}, Lcom/pantech/app/music/properties/MusicFileTagEdit;->access$1300(Lcom/pantech/app/music/properties/MusicFileTagEdit;)I

    move-result v1

    if-ne v1, p3, :cond_7c

    iget-object v1, p0, Lcom/pantech/app/music/properties/MusicFileTagEdit$4;->val$adapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v1, p3}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/pantech/app/music/properties/MusicFileTagEdit$4;->this$0:Lcom/pantech/app/music/properties/MusicFileTagEdit;

    invoke-static {v2}, Lcom/pantech/app/music/properties/MusicFileTagEdit;->access$600(Lcom/pantech/app/music/properties/MusicFileTagEdit;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f080131

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7c

    .line 381
    iget-object v1, p0, Lcom/pantech/app/music/properties/MusicFileTagEdit$4;->val$genreSpinner:Landroid/widget/Spinner;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 382
    iget-object v1, p0, Lcom/pantech/app/music/properties/MusicFileTagEdit$4;->val$editTextGenre:Lcom/pantech/app/music/view/SkyEditText;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/pantech/app/music/view/SkyEditText;->setVisibility(I)V

    .line 384
    iget-object v1, p0, Lcom/pantech/app/music/properties/MusicFileTagEdit$4;->val$editTextGenre:Lcom/pantech/app/music/view/SkyEditText;

    invoke-virtual {v1}, Lcom/pantech/app/music/view/SkyEditText;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_74

    iget-object v1, p0, Lcom/pantech/app/music/properties/MusicFileTagEdit$4;->val$editTextGenre:Lcom/pantech/app/music/view/SkyEditText;

    invoke-virtual {v1}, Lcom/pantech/app/music/view/SkyEditText;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_74

    .line 385
    iget-object v1, p0, Lcom/pantech/app/music/properties/MusicFileTagEdit$4;->val$editTextGenre:Lcom/pantech/app/music/view/SkyEditText;

    iget-object v2, p0, Lcom/pantech/app/music/properties/MusicFileTagEdit$4;->val$editTextGenre:Lcom/pantech/app/music/view/SkyEditText;

    invoke-virtual {v2}, Lcom/pantech/app/music/view/SkyEditText;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/pantech/app/music/view/SkyEditText;->setSelection(I)V

    .line 389
    :goto_63
    iget-object v1, p0, Lcom/pantech/app/music/properties/MusicFileTagEdit$4;->val$editTextGenre:Lcom/pantech/app/music/view/SkyEditText;

    invoke-virtual {v1}, Lcom/pantech/app/music/view/SkyEditText;->getEditTextView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 391
    iget-object v1, p0, Lcom/pantech/app/music/properties/MusicFileTagEdit$4;->this$0:Lcom/pantech/app/music/properties/MusicFileTagEdit;

    iget-object v2, p0, Lcom/pantech/app/music/properties/MusicFileTagEdit$4;->val$editTextGenre:Lcom/pantech/app/music/view/SkyEditText;

    invoke-virtual {v1, v2}, Lcom/pantech/app/music/properties/MusicFileTagEdit;->showIME(Lcom/pantech/app/music/view/SkyEditText;)V

    .line 430
    :goto_73
    return-void

    .line 387
    :cond_74
    iget-object v1, p0, Lcom/pantech/app/music/properties/MusicFileTagEdit$4;->val$editTextGenre:Lcom/pantech/app/music/view/SkyEditText;

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/pantech/app/music/view/SkyEditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_63

    .line 398
    :cond_7c
    iget v1, p0, Lcom/pantech/app/music/properties/MusicFileTagEdit$4;->val$writeType:I

    const/16 v2, 0x100

    if-ne v1, v2, :cond_bf

    .line 400
    if-nez p3, :cond_b8

    .line 402
    iget-object v1, p0, Lcom/pantech/app/music/properties/MusicFileTagEdit$4;->val$oldGenre:Ljava/lang/String;

    if-eqz v1, :cond_b6

    iget-object v1, p0, Lcom/pantech/app/music/properties/MusicFileTagEdit$4;->val$oldGenre:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b6

    .line 403
    iget-object v1, p0, Lcom/pantech/app/music/properties/MusicFileTagEdit$4;->val$oldGenre:Ljava/lang/String;

    invoke-static {v1}, Lcom/pantech/audiotag/common/util/GenreUtil;->getGenreNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 427
    .local v0, "newGenre":Ljava/lang/String;
    :goto_98
    iget-object v1, p0, Lcom/pantech/app/music/properties/MusicFileTagEdit$4;->val$genreSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setTag(Ljava/lang/Object;)V

    .line 429
    const-string v1, "VMusicTagEdit"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "select genre: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/music/utils/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_73

    .line 405
    .end local v0    # "newGenre":Ljava/lang/String;
    :cond_b6
    const/4 v0, 0x0

    .restart local v0    # "newGenre":Ljava/lang/String;
    goto :goto_98

    .line 409
    .end local v0    # "newGenre":Ljava/lang/String;
    :cond_b8
    add-int/lit8 v1, p3, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "newGenre":Ljava/lang/String;
    goto :goto_98

    .line 414
    .end local v0    # "newGenre":Ljava/lang/String;
    :cond_bf
    if-nez p3, :cond_da

    .line 416
    iget-object v1, p0, Lcom/pantech/app/music/properties/MusicFileTagEdit$4;->val$oldGenre:Ljava/lang/String;

    if-eqz v1, :cond_d8

    iget-object v1, p0, Lcom/pantech/app/music/properties/MusicFileTagEdit$4;->val$oldGenre:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d8

    .line 417
    iget-object v1, p0, Lcom/pantech/app/music/properties/MusicFileTagEdit$4;->val$spinItems:Ljava/util/ArrayList;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .restart local v0    # "newGenre":Ljava/lang/String;
    goto :goto_98

    .line 419
    .end local v0    # "newGenre":Ljava/lang/String;
    :cond_d8
    const/4 v0, 0x0

    .restart local v0    # "newGenre":Ljava/lang/String;
    goto :goto_98

    .line 423
    .end local v0    # "newGenre":Ljava/lang/String;
    :cond_da
    iget-object v1, p0, Lcom/pantech/app/music/properties/MusicFileTagEdit$4;->val$spinItems:Ljava/util/ArrayList;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .restart local v0    # "newGenre":Ljava/lang/String;
    goto :goto_98
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 435
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method
