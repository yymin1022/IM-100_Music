.class public Lorg/jdom2/Comment;
.super Lorg/jdom2/Content;
.source "Comment.java"


# static fields
.field private static final serialVersionUID:J = 0xc8L


# instance fields
.field protected text:Ljava/lang/String;


# direct methods
.method protected constructor <init>()V
    .registers 2

    .prologue
    .line 79
    sget-object v0, Lorg/jdom2/Content$CType;->Comment:Lorg/jdom2/Content$CType;

    invoke-direct {p0, v0}, Lorg/jdom2/Content;-><init>(Lorg/jdom2/Content$CType;)V

    .line 80
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 88
    sget-object v0, Lorg/jdom2/Content$CType;->Comment:Lorg/jdom2/Content$CType;

    invoke-direct {p0, v0}, Lorg/jdom2/Content;-><init>(Lorg/jdom2/Content$CType;)V

    .line 89
    invoke-virtual {p0, p1}, Lorg/jdom2/Comment;->setText(Ljava/lang/String;)Lorg/jdom2/Comment;

    .line 90
    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 65
    invoke-virtual {p0}, Lorg/jdom2/Comment;->clone()Lorg/jdom2/Comment;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lorg/jdom2/CloneBase;
    .registers 2

    .prologue
    .line 65
    invoke-virtual {p0}, Lorg/jdom2/Comment;->clone()Lorg/jdom2/Comment;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/jdom2/Comment;
    .registers 2

    .prologue
    .line 133
    invoke-super {p0}, Lorg/jdom2/Content;->clone()Lorg/jdom2/Content;

    move-result-object v0

    check-cast v0, Lorg/jdom2/Comment;

    return-object v0
.end method

.method public bridge synthetic clone()Lorg/jdom2/Content;
    .registers 2

    .prologue
    .line 65
    invoke-virtual {p0}, Lorg/jdom2/Comment;->clone()Lorg/jdom2/Comment;

    move-result-object v0

    return-object v0
.end method

.method public detach()Lorg/jdom2/Comment;
    .registers 2

    .prologue
    .line 138
    invoke-super {p0}, Lorg/jdom2/Content;->detach()Lorg/jdom2/Content;

    move-result-object v0

    check-cast v0, Lorg/jdom2/Comment;

    return-object v0
.end method

.method public bridge synthetic detach()Lorg/jdom2/Content;
    .registers 2

    .prologue
    .line 65
    invoke-virtual {p0}, Lorg/jdom2/Comment;->detach()Lorg/jdom2/Comment;

    move-result-object v0

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .registers 2

    .prologue
    .line 110
    iget-object v0, p0, Lorg/jdom2/Comment;->text:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .registers 2

    .prologue
    .line 101
    iget-object v0, p0, Lorg/jdom2/Comment;->text:Ljava/lang/String;

    return-object v0
.end method

.method protected setParent(Lorg/jdom2/Parent;)Lorg/jdom2/Comment;
    .registers 3
    .param p1, "parent"    # Lorg/jdom2/Parent;

    .prologue
    .line 143
    invoke-super {p0, p1}, Lorg/jdom2/Content;->setParent(Lorg/jdom2/Parent;)Lorg/jdom2/Content;

    move-result-object v0

    check-cast v0, Lorg/jdom2/Comment;

    return-object v0
.end method

.method protected bridge synthetic setParent(Lorg/jdom2/Parent;)Lorg/jdom2/Content;
    .registers 3
    .param p1, "x0"    # Lorg/jdom2/Parent;

    .prologue
    .line 65
    invoke-virtual {p0, p1}, Lorg/jdom2/Comment;->setParent(Lorg/jdom2/Parent;)Lorg/jdom2/Comment;

    move-result-object v0

    return-object v0
.end method

.method public setText(Ljava/lang/String;)Lorg/jdom2/Comment;
    .registers 5
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 123
    invoke-static {p1}, Lorg/jdom2/Verifier;->checkCommentData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "reason":Ljava/lang/String;
    if-eqz v0, :cond_e

    .line 124
    new-instance v1, Lorg/jdom2/IllegalDataException;

    const-string v2, "comment"

    invoke-direct {v1, p1, v2, v0}, Lorg/jdom2/IllegalDataException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    .line 127
    :cond_e
    iput-object p1, p0, Lorg/jdom2/Comment;->text:Ljava/lang/String;

    .line 128
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[Comment: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Lorg/jdom2/output/XMLOutputter;

    invoke-direct {v1}, Lorg/jdom2/output/XMLOutputter;-><init>()V

    invoke-virtual {v1, p0}, Lorg/jdom2/output/XMLOutputter;->outputString(Lorg/jdom2/Comment;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
