.class public final Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;
.super Ljava/lang/Object;
.source "AbstractFormattedWalker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jdom2/output/support/AbstractFormattedWalker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x14
    name = "MultiText"
.end annotation


# instance fields
.field private ctext:[Ljava/lang/String;

.field private data:[Lorg/jdom2/Content;

.field private gottext:Z

.field private mpos:I

.field private msize:I

.field private final nextcursor:I

.field private final postpad:Z

.field final synthetic this$0:Lorg/jdom2/output/support/AbstractFormattedWalker;

.field private final wasescape:Ljava/lang/Boolean;


# direct methods
.method private constructor <init>(Lorg/jdom2/output/support/AbstractFormattedWalker;IZZILjava/lang/Boolean;)V
    .registers 9
    .param p2, "nextcursor"    # I
    .param p3, "prepad"    # Z
    .param p4, "postpad"    # Z
    .param p5, "guess"    # I
    .param p6, "wasescape"    # Ljava/lang/Boolean;

    .prologue
    const/4 v1, 0x0

    .line 152
    iput-object p1, p0, Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;->this$0:Lorg/jdom2/output/support/AbstractFormattedWalker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    iput-boolean v1, p0, Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;->gottext:Z

    .line 133
    iput v1, p0, Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;->msize:I

    .line 139
    const/4 v0, -0x1

    iput v0, p0, Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;->mpos:I

    .line 153
    iput p2, p0, Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;->nextcursor:I

    .line 154
    iput-boolean p4, p0, Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;->postpad:Z

    .line 155
    iput-object p6, p0, Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;->wasescape:Ljava/lang/Boolean;

    .line 156
    invoke-static {p1}, Lorg/jdom2/output/support/AbstractFormattedWalker;->access$000(Lorg/jdom2/output/support/AbstractFormattedWalker;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 157
    if-eqz p3, :cond_2d

    invoke-static {p1}, Lorg/jdom2/output/support/AbstractFormattedWalker;->access$100(Lorg/jdom2/output/support/AbstractFormattedWalker;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2d

    .line 158
    invoke-static {p1}, Lorg/jdom2/output/support/AbstractFormattedWalker;->access$000(Lorg/jdom2/output/support/AbstractFormattedWalker;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lorg/jdom2/output/support/AbstractFormattedWalker;->access$100(Lorg/jdom2/output/support/AbstractFormattedWalker;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    :cond_2d
    new-array v0, p5, [Lorg/jdom2/Content;

    iput-object v0, p0, Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;->data:[Lorg/jdom2/Content;

    .line 161
    new-array v0, p5, [Ljava/lang/String;

    iput-object v0, p0, Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;->ctext:[Ljava/lang/String;

    .line 162
    return-void
.end method

.method synthetic constructor <init>(Lorg/jdom2/output/support/AbstractFormattedWalker;IZZILjava/lang/Boolean;Lorg/jdom2/output/support/AbstractFormattedWalker$1;)V
    .registers 8
    .param p1, "x0"    # Lorg/jdom2/output/support/AbstractFormattedWalker;
    .param p2, "x1"    # I
    .param p3, "x2"    # Z
    .param p4, "x3"    # Z
    .param p5, "x4"    # I
    .param p6, "x5"    # Ljava/lang/Boolean;
    .param p7, "x6"    # Lorg/jdom2/output/support/AbstractFormattedWalker$1;

    .prologue
    .line 124
    invoke-direct/range {p0 .. p6}, Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;-><init>(Lorg/jdom2/output/support/AbstractFormattedWalker;IZZILjava/lang/Boolean;)V

    return-void
.end method

.method static synthetic access$1000(Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;)[Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;

    .prologue
    .line 124
    iget-object v0, p0, Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;->ctext:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100(Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;)[Lorg/jdom2/Content;
    .registers 2
    .param p0, "x0"    # Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;

    .prologue
    .line 124
    iget-object v0, p0, Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;->data:[Lorg/jdom2/Content;

    return-object v0
.end method

.method static synthetic access$1300(Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 124
    invoke-direct {p0, p1}, Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;->forceAppend(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;)I
    .registers 2
    .param p0, "x0"    # Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;

    .prologue
    .line 124
    iget v0, p0, Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;->nextcursor:I

    return v0
.end method

.method static synthetic access$700(Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;)I
    .registers 2
    .param p0, "x0"    # Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;

    .prologue
    .line 124
    iget v0, p0, Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;->msize:I

    return v0
.end method

.method static synthetic access$800(Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;)I
    .registers 2
    .param p0, "x0"    # Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;

    .prologue
    .line 124
    iget v0, p0, Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;->mpos:I

    return v0
.end method

.method static synthetic access$808(Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;)I
    .registers 3
    .param p0, "x0"    # Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;

    .prologue
    .line 124
    iget v0, p0, Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;->mpos:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;->mpos:I

    return v0
.end method

.method static synthetic access$900(Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;)Ljava/lang/Boolean;
    .registers 2
    .param p0, "x0"    # Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;

    .prologue
    .line 124
    iget-object v0, p0, Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;->wasescape:Ljava/lang/Boolean;

    return-object v0
.end method

.method private closeText()V
    .registers 4

    .prologue
    .line 180
    iget-object v0, p0, Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;->this$0:Lorg/jdom2/output/support/AbstractFormattedWalker;

    invoke-static {v0}, Lorg/jdom2/output/support/AbstractFormattedWalker;->access$000(Lorg/jdom2/output/support/AbstractFormattedWalker;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_d

    .line 187
    :goto_c
    return-void

    .line 184
    :cond_d
    invoke-direct {p0}, Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;->ensurespace()V

    .line 185
    iget-object v0, p0, Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;->ctext:[Ljava/lang/String;

    iget v1, p0, Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;->msize:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;->msize:I

    iget-object v2, p0, Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;->this$0:Lorg/jdom2/output/support/AbstractFormattedWalker;

    invoke-static {v2}, Lorg/jdom2/output/support/AbstractFormattedWalker;->access$000(Lorg/jdom2/output/support/AbstractFormattedWalker;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 186
    iget-object v0, p0, Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;->this$0:Lorg/jdom2/output/support/AbstractFormattedWalker;

    invoke-static {v0}, Lorg/jdom2/output/support/AbstractFormattedWalker;->access$000(Lorg/jdom2/output/support/AbstractFormattedWalker;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_c
.end method

.method private ensurespace()V
    .registers 3

    .prologue
    .line 168
    iget v0, p0, Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;->msize:I

    iget-object v1, p0, Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;->data:[Lorg/jdom2/Content;

    array-length v1, v1

    if-lt v0, v1, :cond_22

    .line 169
    iget-object v0, p0, Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;->data:[Lorg/jdom2/Content;

    iget v1, p0, Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;->msize:I

    add-int/lit8 v1, v1, 0x4

    invoke-static {v0, v1}, Lorg/jdom2/internal/ArrayCopy;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jdom2/Content;

    iput-object v0, p0, Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;->data:[Lorg/jdom2/Content;

    .line 170
    iget-object v0, p0, Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;->ctext:[Ljava/lang/String;

    iget-object v1, p0, Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;->data:[Lorg/jdom2/Content;

    array-length v1, v1

    invoke-static {v0, v1}, Lorg/jdom2/internal/ArrayCopy;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;->ctext:[Ljava/lang/String;

    .line 172
    :cond_22
    return-void
.end method

.method private escapeCDATA(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 236
    iget-object v0, p0, Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;->this$0:Lorg/jdom2/output/support/AbstractFormattedWalker;

    invoke-static {v0}, Lorg/jdom2/output/support/AbstractFormattedWalker;->access$200(Lorg/jdom2/output/support/AbstractFormattedWalker;)Lorg/jdom2/output/EscapeStrategy;

    move-result-object v0

    if-nez v0, :cond_8

    .line 239
    :cond_8
    return-object p1
.end method

.method private escapeText(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 229
    iget-object v0, p0, Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;->this$0:Lorg/jdom2/output/support/AbstractFormattedWalker;

    invoke-static {v0}, Lorg/jdom2/output/support/AbstractFormattedWalker;->access$200(Lorg/jdom2/output/support/AbstractFormattedWalker;)Lorg/jdom2/output/EscapeStrategy;

    move-result-object v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;->this$0:Lorg/jdom2/output/support/AbstractFormattedWalker;

    invoke-static {v0}, Lorg/jdom2/output/support/AbstractFormattedWalker;->access$300(Lorg/jdom2/output/support/AbstractFormattedWalker;)Lorg/jdom2/output/support/FormatStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jdom2/output/support/FormatStack;->getEscapeOutput()Z

    move-result v0

    if-nez v0, :cond_15

    .line 232
    .end local p1    # "text":Ljava/lang/String;
    :cond_14
    :goto_14
    return-object p1

    .restart local p1    # "text":Ljava/lang/String;
    :cond_15
    iget-object v0, p0, Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;->this$0:Lorg/jdom2/output/support/AbstractFormattedWalker;

    invoke-static {v0}, Lorg/jdom2/output/support/AbstractFormattedWalker;->access$200(Lorg/jdom2/output/support/AbstractFormattedWalker;)Lorg/jdom2/output/EscapeStrategy;

    move-result-object v0

    iget-object v1, p0, Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;->this$0:Lorg/jdom2/output/support/AbstractFormattedWalker;

    invoke-static {v1}, Lorg/jdom2/output/support/AbstractFormattedWalker;->access$400(Lorg/jdom2/output/support/AbstractFormattedWalker;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lorg/jdom2/output/Format;->escapeText(Lorg/jdom2/output/EscapeStrategy;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_14
.end method

.method private forceAppend(Ljava/lang/String;)V
    .registers 3
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 285
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;->gottext:Z

    .line 286
    iget-object v0, p0, Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;->this$0:Lorg/jdom2/output/support/AbstractFormattedWalker;

    invoke-static {v0}, Lorg/jdom2/output/support/AbstractFormattedWalker;->access$000(Lorg/jdom2/output/support/AbstractFormattedWalker;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    return-void
.end method


# virtual methods
.method public appendCDATA(Lorg/jdom2/output/support/AbstractFormattedWalker$Trim;Ljava/lang/String;)V
    .registers 7
    .param p1, "trim"    # Lorg/jdom2/output/support/AbstractFormattedWalker$Trim;
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    .line 249
    invoke-direct {p0}, Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;->closeText()V

    .line 250
    const/4 v0, 0x0

    .line 251
    .local v0, "toadd":Ljava/lang/String;
    sget-object v1, Lorg/jdom2/output/support/AbstractFormattedWalker$1;->$SwitchMap$org$jdom2$output$support$AbstractFormattedWalker$Trim:[I

    invoke-virtual {p1}, Lorg/jdom2/output/support/AbstractFormattedWalker$Trim;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_44

    .line 269
    :goto_f
    invoke-direct {p0, v0}, Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;->escapeCDATA(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 270
    invoke-direct {p0}, Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;->ensurespace()V

    .line 272
    iget-object v1, p0, Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;->data:[Lorg/jdom2/Content;

    iget v2, p0, Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;->msize:I

    invoke-static {}, Lorg/jdom2/output/support/AbstractFormattedWalker;->access$500()Lorg/jdom2/CDATA;

    move-result-object v3

    aput-object v3, v1, v2

    .line 273
    iget-object v1, p0, Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;->ctext:[Ljava/lang/String;

    iget v2, p0, Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;->msize:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;->msize:I

    aput-object v0, v1, v2

    .line 275
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;->gottext:Z

    .line 277
    return-void

    .line 253
    :pswitch_2e
    move-object v0, p2

    .line 254
    goto :goto_f

    .line 256
    :pswitch_30
    invoke-static {p2}, Lorg/jdom2/output/Format;->trimBoth(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 257
    goto :goto_f

    .line 259
    :pswitch_35
    invoke-static {p2}, Lorg/jdom2/output/Format;->trimLeft(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 260
    goto :goto_f

    .line 262
    :pswitch_3a
    invoke-static {p2}, Lorg/jdom2/output/Format;->trimRight(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 263
    goto :goto_f

    .line 265
    :pswitch_3f
    invoke-static {p2}, Lorg/jdom2/output/Format;->compact(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_f

    .line 251
    :pswitch_data_44
    .packed-switch 0x1
        :pswitch_2e
        :pswitch_30
        :pswitch_35
        :pswitch_3a
        :pswitch_3f
    .end packed-switch
.end method

.method public appendRaw(Lorg/jdom2/Content;)V
    .registers 5
    .param p1, "c"    # Lorg/jdom2/Content;

    .prologue
    .line 295
    invoke-direct {p0}, Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;->closeText()V

    .line 296
    invoke-direct {p0}, Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;->ensurespace()V

    .line 297
    iget-object v0, p0, Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;->data:[Lorg/jdom2/Content;

    iget v1, p0, Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;->msize:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;->msize:I

    aput-object p1, v0, v1

    .line 298
    iget-object v0, p0, Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;->this$0:Lorg/jdom2/output/support/AbstractFormattedWalker;

    invoke-static {v0}, Lorg/jdom2/output/support/AbstractFormattedWalker;->access$000(Lorg/jdom2/output/support/AbstractFormattedWalker;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 300
    return-void
.end method

.method public appendText(Lorg/jdom2/output/support/AbstractFormattedWalker$Trim;Ljava/lang/String;)V
    .registers 7
    .param p1, "trim"    # Lorg/jdom2/output/support/AbstractFormattedWalker$Trim;
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    .line 199
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    .line 200
    .local v0, "tlen":I
    if-nez v0, :cond_7

    .line 226
    :cond_6
    :goto_6
    return-void

    .line 203
    :cond_7
    const/4 v1, 0x0

    .line 204
    .local v1, "toadd":Ljava/lang/String;
    sget-object v2, Lorg/jdom2/output/support/AbstractFormattedWalker$1;->$SwitchMap$org$jdom2$output$support$AbstractFormattedWalker$Trim:[I

    invoke-virtual {p1}, Lorg/jdom2/output/support/AbstractFormattedWalker$Trim;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_3c

    .line 221
    :goto_13
    if-eqz v1, :cond_6

    .line 222
    invoke-direct {p0, v1}, Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;->escapeText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 223
    iget-object v2, p0, Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;->this$0:Lorg/jdom2/output/support/AbstractFormattedWalker;

    invoke-static {v2}, Lorg/jdom2/output/support/AbstractFormattedWalker;->access$000(Lorg/jdom2/output/support/AbstractFormattedWalker;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;->gottext:Z

    goto :goto_6

    .line 206
    :pswitch_26
    move-object v1, p2

    .line 207
    goto :goto_13

    .line 209
    :pswitch_28
    invoke-static {p2}, Lorg/jdom2/output/Format;->trimBoth(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 210
    goto :goto_13

    .line 212
    :pswitch_2d
    invoke-static {p2}, Lorg/jdom2/output/Format;->trimLeft(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 213
    goto :goto_13

    .line 215
    :pswitch_32
    invoke-static {p2}, Lorg/jdom2/output/Format;->trimRight(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 216
    goto :goto_13

    .line 218
    :pswitch_37
    invoke-static {p2}, Lorg/jdom2/output/Format;->compact(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_13

    .line 204
    :pswitch_data_3c
    .packed-switch 0x1
        :pswitch_26
        :pswitch_28
        :pswitch_2d
        :pswitch_32
        :pswitch_37
    .end packed-switch
.end method

.method public done()V
    .registers 3

    .prologue
    .line 307
    iget-boolean v0, p0, Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;->postpad:Z

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;->this$0:Lorg/jdom2/output/support/AbstractFormattedWalker;

    invoke-static {v0}, Lorg/jdom2/output/support/AbstractFormattedWalker;->access$100(Lorg/jdom2/output/support/AbstractFormattedWalker;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 309
    iget-object v0, p0, Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;->this$0:Lorg/jdom2/output/support/AbstractFormattedWalker;

    invoke-static {v0}, Lorg/jdom2/output/support/AbstractFormattedWalker;->access$000(Lorg/jdom2/output/support/AbstractFormattedWalker;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;->this$0:Lorg/jdom2/output/support/AbstractFormattedWalker;

    invoke-static {v1}, Lorg/jdom2/output/support/AbstractFormattedWalker;->access$100(Lorg/jdom2/output/support/AbstractFormattedWalker;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 311
    :cond_1b
    iget-boolean v0, p0, Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;->gottext:Z

    if-eqz v0, :cond_22

    .line 312
    invoke-direct {p0}, Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;->closeText()V

    .line 314
    :cond_22
    iget-object v0, p0, Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;->this$0:Lorg/jdom2/output/support/AbstractFormattedWalker;

    invoke-static {v0}, Lorg/jdom2/output/support/AbstractFormattedWalker;->access$000(Lorg/jdom2/output/support/AbstractFormattedWalker;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 315
    return-void
.end method
