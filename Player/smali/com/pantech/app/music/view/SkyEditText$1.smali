.class Lcom/pantech/app/music/view/SkyEditText$1;
.super Ljava/lang/Object;
.source "SkyEditText.java"

# interfaces
.implements Landroid/text/InputFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/music/view/SkyEditText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/music/view/SkyEditText;


# direct methods
.method constructor <init>(Lcom/pantech/app/music/view/SkyEditText;)V
    .registers 2

    .prologue
    .line 76
    iput-object p1, p0, Lcom/pantech/app/music/view/SkyEditText$1;->this$0:Lcom/pantech/app/music/view/SkyEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .registers 14
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "dest"    # Landroid/text/Spanned;
    .param p5, "dstart"    # I
    .param p6, "dend"    # I

    .prologue
    .line 80
    move v2, p2

    .local v2, "i":I
    :goto_1
    if-ge v2, p3, :cond_47

    .line 82
    invoke-static {p1, v2}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v1

    .line 84
    .local v1, "codePoint":I
    invoke-static {v1}, Ljava/lang/Character;->isSupplementaryCodePoint(I)Z

    move-result v6

    if-eqz v6, :cond_21

    .line 86
    iget-object v6, p0, Lcom/pantech/app/music/view/SkyEditText$1;->this$0:Lcom/pantech/app/music/view/SkyEditText;

    invoke-static {v6}, Lcom/pantech/app/music/view/SkyEditText;->access$000(Lcom/pantech/app/music/view/SkyEditText;)Lcom/pantech/app/music/view/SkyEditText$onSpecialCharacterListener;

    move-result-object v6

    if-eqz v6, :cond_1e

    .line 87
    iget-object v6, p0, Lcom/pantech/app/music/view/SkyEditText$1;->this$0:Lcom/pantech/app/music/view/SkyEditText;

    invoke-static {v6}, Lcom/pantech/app/music/view/SkyEditText;->access$000(Lcom/pantech/app/music/view/SkyEditText;)Lcom/pantech/app/music/view/SkyEditText$onSpecialCharacterListener;

    move-result-object v6

    invoke-interface {v6}, Lcom/pantech/app/music/view/SkyEditText$onSpecialCharacterListener;->onFindSpecialCharacter()V

    .line 89
    :cond_1e
    const-string v6, ""

    .line 107
    .end local v1    # "codePoint":I
    :goto_20
    return-object v6

    .line 94
    .restart local v1    # "codePoint":I
    :cond_21
    invoke-static {}, Lcom/pantech/app/music/view/SkyEditText;->access$100()[I

    move-result-object v0

    .local v0, "arr$":[I
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_27
    if-ge v3, v4, :cond_44

    aget v5, v0, v3

    .line 96
    .local v5, "value":I
    if-ne v1, v5, :cond_41

    .line 98
    iget-object v6, p0, Lcom/pantech/app/music/view/SkyEditText$1;->this$0:Lcom/pantech/app/music/view/SkyEditText;

    invoke-static {v6}, Lcom/pantech/app/music/view/SkyEditText;->access$000(Lcom/pantech/app/music/view/SkyEditText;)Lcom/pantech/app/music/view/SkyEditText$onSpecialCharacterListener;

    move-result-object v6

    if-eqz v6, :cond_3e

    .line 99
    iget-object v6, p0, Lcom/pantech/app/music/view/SkyEditText$1;->this$0:Lcom/pantech/app/music/view/SkyEditText;

    invoke-static {v6}, Lcom/pantech/app/music/view/SkyEditText;->access$000(Lcom/pantech/app/music/view/SkyEditText;)Lcom/pantech/app/music/view/SkyEditText$onSpecialCharacterListener;

    move-result-object v6

    invoke-interface {v6}, Lcom/pantech/app/music/view/SkyEditText$onSpecialCharacterListener;->onFindSpecialCharacter()V

    .line 101
    :cond_3e
    const-string v6, ""

    goto :goto_20

    .line 94
    :cond_41
    add-int/lit8 v3, v3, 0x1

    goto :goto_27

    .line 80
    .end local v5    # "value":I
    :cond_44
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 107
    .end local v0    # "arr$":[I
    .end local v1    # "codePoint":I
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :cond_47
    const/4 v6, 0x0

    goto :goto_20
.end method
