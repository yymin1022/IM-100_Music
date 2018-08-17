.class public Lcom/pantech/app/music/list/adapter/helper/AdapterUtil;
.super Ljava/lang/Object;
.source "AdapterUtil.java"

# interfaces
.implements Lcom/pantech/app/music/utils/LibraryUtils;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/app/music/list/adapter/helper/AdapterUtil$keywordMatching;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    return-void
.end method

.method public static drawMultiAlbumart(Landroid/widget/ImageView;Landroid/widget/ImageView;[Landroid/graphics/Bitmap;)V
    .registers 4
    .param p0, "icon"    # Landroid/widget/ImageView;
    .param p1, "multi"    # Landroid/widget/ImageView;
    .param p2, "bitmaps"    # [Landroid/graphics/Bitmap;

    .prologue
    .line 214
    const/4 v0, 0x0

    aget-object v0, p2, v0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 216
    if-eqz p1, :cond_e

    .line 218
    const v0, 0x7f020394

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 220
    :cond_e
    return-void
.end method

.method public static findSameText(Ljava/util/ArrayList;Ljava/lang/String;I)Z
    .registers 8
    .param p1, "keyword"    # Ljava/lang/String;
    .param p2, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/pantech/app/music/list/adapter/helper/AdapterUtil$keywordMatching;",
            ">;",
            "Ljava/lang/String;",
            "I)Z"
        }
    .end annotation

    .prologue
    .line 40
    .local p0, "tmp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/pantech/app/music/list/adapter/helper/AdapterUtil$keywordMatching;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 42
    .local v2, "tmpArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/pantech/app/music/list/adapter/helper/AdapterUtil$keywordMatching;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_a
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_47

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pantech/app/music/list/adapter/helper/AdapterUtil$keywordMatching;

    .line 44
    .local v1, "item":Lcom/pantech/app/music/list/adapter/helper/AdapterUtil$keywordMatching;
    iget v3, v1, Lcom/pantech/app/music/list/adapter/helper/AdapterUtil$keywordMatching;->position:I

    if-lt v3, p2, :cond_3a

    iget v3, v1, Lcom/pantech/app/music/list/adapter/helper/AdapterUtil$keywordMatching;->position:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v4, p2

    if-ge v3, v4, :cond_3a

    iget v3, v1, Lcom/pantech/app/music/list/adapter/helper/AdapterUtil$keywordMatching;->position:I

    iget v4, v1, Lcom/pantech/app/music/list/adapter/helper/AdapterUtil$keywordMatching;->keywordsLen:I

    add-int/2addr v3, v4

    if-lt v3, p2, :cond_3a

    iget v3, v1, Lcom/pantech/app/music/list/adapter/helper/AdapterUtil$keywordMatching;->position:I

    iget v4, v1, Lcom/pantech/app/music/list/adapter/helper/AdapterUtil$keywordMatching;->keywordsLen:I

    add-int/2addr v3, v4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v4, p2

    if-ge v3, v4, :cond_3a

    .line 46
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_a

    .line 48
    :cond_3a
    iget v3, v1, Lcom/pantech/app/music/list/adapter/helper/AdapterUtil$keywordMatching;->position:I

    if-lt p2, v3, :cond_a

    iget v3, v1, Lcom/pantech/app/music/list/adapter/helper/AdapterUtil$keywordMatching;->position:I

    iget v4, v1, Lcom/pantech/app/music/list/adapter/helper/AdapterUtil$keywordMatching;->keywordsLen:I

    add-int/2addr v3, v4

    if-ge p2, v3, :cond_a

    .line 49
    const/4 v3, 0x1

    .line 52
    .end local v1    # "item":Lcom/pantech/app/music/list/adapter/helper/AdapterUtil$keywordMatching;
    :goto_46
    return v3

    :cond_47
    const/4 v3, 0x0

    goto :goto_46
.end method

.method public static setKeywordTextHilight(Ljava/lang/String;[Ljava/lang/String;)Landroid/text/Spanned;
    .registers 15
    .param p0, "title"    # Ljava/lang/String;
    .param p1, "keywords"    # [Ljava/lang/String;

    .prologue
    const/4 v12, -0x1

    .line 57
    const/4 v8, 0x0

    .line 60
    .local v8, "nIndexFound":I
    const-string v3, "<span style=\"background-color: #FFFF00\">"

    .line 61
    .local v3, "fontTagStart":Ljava/lang/String;
    const-string v2, "</span>"

    .line 63
    .local v2, "fontTagEnd":Ljava/lang/String;
    if-nez p0, :cond_a

    .line 64
    const-string p0, ""

    .line 66
    :cond_a
    const-string v9, "<"

    const-string v10, "&lt;"

    invoke-virtual {p0, v9, v10}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, ">"

    const-string v11, "&gt;"

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 68
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1, p0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 69
    .local v1, "buf":Ljava/lang/StringBuffer;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 71
    .local v0, "arrFoundIndexList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/pantech/app/music/list/adapter/helper/AdapterUtil$keywordMatching;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_25
    if-eqz p1, :cond_7f

    array-length v9, p1

    if-ge v4, v9, :cond_7f

    .line 73
    aget-object v5, p1, v4

    .line 76
    .local v5, "keyword":Ljava/lang/String;
    const-string v9, "<"

    const-string v10, "&lt;"

    invoke-virtual {v5, v9, v10}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, ">"

    const-string v11, "&gt;"

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 78
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    .line 79
    .local v6, "keywordLength":I
    new-instance v7, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v9}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 82
    .local v7, "lowerCaseTitle":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    .line 84
    if-eq v8, v12, :cond_6d

    .line 87
    invoke-static {v0, v5, v8}, Lcom/pantech/app/music/list/adapter/helper/AdapterUtil;->findSameText(Ljava/util/ArrayList;Ljava/lang/String;I)Z

    move-result v9

    if-nez v9, :cond_61

    .line 88
    new-instance v9, Lcom/pantech/app/music/list/adapter/helper/AdapterUtil$keywordMatching;

    invoke-direct {v9, v5, v8}, Lcom/pantech/app/music/list/adapter/helper/AdapterUtil$keywordMatching;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    :cond_61
    :goto_61
    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    add-int v10, v8, v6

    invoke-virtual {v7, v9, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v8

    .line 94
    if-ne v8, v12, :cond_70

    .line 71
    :cond_6d
    add-int/lit8 v4, v4, 0x1

    goto :goto_25

    .line 98
    :cond_70
    invoke-static {v0, v5, v8}, Lcom/pantech/app/music/list/adapter/helper/AdapterUtil;->findSameText(Ljava/util/ArrayList;Ljava/lang/String;I)Z

    move-result v9

    if-nez v9, :cond_61

    .line 99
    new-instance v9, Lcom/pantech/app/music/list/adapter/helper/AdapterUtil$keywordMatching;

    invoke-direct {v9, v5, v8}, Lcom/pantech/app/music/list/adapter/helper/AdapterUtil$keywordMatching;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_61

    .line 105
    .end local v5    # "keyword":Ljava/lang/String;
    .end local v6    # "keywordLength":I
    .end local v7    # "lowerCaseTitle":Ljava/lang/String;
    :cond_7f
    new-instance v9, Lcom/pantech/app/music/list/adapter/helper/AdapterUtil$1;

    invoke-direct {v9}, Lcom/pantech/app/music/list/adapter/helper/AdapterUtil$1;-><init>()V

    invoke-static {v0, v9}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 114
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    :goto_8b
    if-lez v4, :cond_b5

    .line 116
    add-int/lit8 v9, v4, -0x1

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/pantech/app/music/list/adapter/helper/AdapterUtil$keywordMatching;

    iget v10, v9, Lcom/pantech/app/music/list/adapter/helper/AdapterUtil$keywordMatching;->position:I

    add-int/lit8 v9, v4, -0x1

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/pantech/app/music/list/adapter/helper/AdapterUtil$keywordMatching;

    iget v9, v9, Lcom/pantech/app/music/list/adapter/helper/AdapterUtil$keywordMatching;->keywordsLen:I

    add-int/2addr v9, v10

    invoke-virtual {v1, v9, v2}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 117
    add-int/lit8 v9, v4, -0x1

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/pantech/app/music/list/adapter/helper/AdapterUtil$keywordMatching;

    iget v9, v9, Lcom/pantech/app/music/list/adapter/helper/AdapterUtil$keywordMatching;->position:I

    invoke-virtual {v1, v9, v3}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 114
    add-int/lit8 v4, v4, -0x1

    goto :goto_8b

    .line 120
    :cond_b5
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v9

    return-object v9
.end method

.method public static setSpanSearchKeywords(Ljava/lang/String;[Ljava/lang/String;I)Landroid/text/Spanned;
    .registers 18
    .param p0, "title"    # Ljava/lang/String;
    .param p1, "keywords"    # [Ljava/lang/String;
    .param p2, "searchBackgroundColor"    # I

    .prologue
    .line 137
    if-nez p0, :cond_4

    .line 138
    const-string p0, ""

    .line 140
    :cond_4
    new-instance v9, Landroid/text/SpannableStringBuilder;

    invoke-direct {v9, p0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 142
    .local v9, "spanBuilder":Landroid/text/SpannableStringBuilder;
    if-nez p1, :cond_c

    .line 209
    :cond_b
    return-object v9

    .line 145
    :cond_c
    const/4 v7, 0x0

    .line 146
    .local v7, "nIndexFound":I
    const/4 v8, 0x0

    .line 148
    .local v8, "nSearchPoint":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v10

    .line 150
    .local v10, "titleLen":I
    const/4 v5, 0x0

    .line 151
    .local v5, "keywordIdx":I
    move-object/from16 v0, p1

    array-length v4, v0

    .line 153
    .local v4, "keywordCount":I
    new-instance v6, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v6, v11}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 155
    .local v6, "lowerCaseTitle":Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 157
    .local v1, "arrFoundIndexList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/pantech/app/music/list/adapter/helper/AdapterUtil$keywordMatching;>;"
    :goto_24
    if-ge v7, v10, :cond_46

    if-ge v5, v4, :cond_46

    .line 159
    aget-object v3, p1, v5

    .line 161
    .local v3, "keyword":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v7

    .line 165
    const/4 v11, -0x1

    if-eq v7, v11, :cond_46

    .line 172
    new-instance v11, Lcom/pantech/app/music/list/adapter/helper/AdapterUtil$keywordMatching;

    invoke-direct {v11, v3, v7}, Lcom/pantech/app/music/list/adapter/helper/AdapterUtil$keywordMatching;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 175
    add-int/lit8 v5, v5, 0x1

    .line 176
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v11

    add-int v8, v7, v11

    .line 182
    goto :goto_24

    .line 185
    .end local v3    # "keyword":Ljava/lang/String;
    :cond_46
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-eq v11, v4, :cond_4f

    .line 188
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 191
    :cond_4f
    new-instance v11, Lcom/pantech/app/music/list/adapter/helper/AdapterUtil$2;

    invoke-direct {v11}, Lcom/pantech/app/music/list/adapter/helper/AdapterUtil$2;-><init>()V

    invoke-static {v1, v11}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 200
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .local v2, "i":I
    :goto_5b
    if-lez v2, :cond_b

    .line 202
    new-instance v12, Landroid/text/style/BackgroundColorSpan;

    move/from16 v0, p2

    invoke-direct {v12, v0}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    add-int/lit8 v11, v2, -0x1

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/pantech/app/music/list/adapter/helper/AdapterUtil$keywordMatching;

    iget v13, v11, Lcom/pantech/app/music/list/adapter/helper/AdapterUtil$keywordMatching;->position:I

    add-int/lit8 v11, v2, -0x1

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/pantech/app/music/list/adapter/helper/AdapterUtil$keywordMatching;

    iget v14, v11, Lcom/pantech/app/music/list/adapter/helper/AdapterUtil$keywordMatching;->position:I

    add-int/lit8 v11, v2, -0x1

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/pantech/app/music/list/adapter/helper/AdapterUtil$keywordMatching;

    iget v11, v11, Lcom/pantech/app/music/list/adapter/helper/AdapterUtil$keywordMatching;->keywordsLen:I

    add-int/2addr v11, v14

    const/16 v14, 0x21

    invoke-virtual {v9, v12, v13, v11, v14}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 200
    add-int/lit8 v2, v2, -0x1

    goto :goto_5b
.end method
