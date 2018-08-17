.class Lorg/jdom2/ContentList$FilterList;
.super Ljava/util/AbstractList;
.source "ContentList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jdom2/ContentList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FilterList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<F:",
        "Lorg/jdom2/Content;",
        ">",
        "Ljava/util/AbstractList",
        "<TF;>;"
    }
.end annotation


# instance fields
.field backingpos:[I

.field backingsize:I

.field final filter:Lorg/jdom2/filter/Filter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/jdom2/filter/Filter",
            "<TF;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/jdom2/ContentList;

.field xdata:I


# direct methods
.method constructor <init>(Lorg/jdom2/ContentList;Lorg/jdom2/filter/Filter;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jdom2/filter/Filter",
            "<TF;>;)V"
        }
    .end annotation

    .prologue
    .line 907
    .local p0, "this":Lorg/jdom2/ContentList$FilterList;, "Lorg/jdom2/ContentList$FilterList<TF;>;"
    .local p2, "filter":Lorg/jdom2/filter/Filter;, "Lorg/jdom2/filter/Filter<TF;>;"
    iput-object p1, p0, Lorg/jdom2/ContentList$FilterList;->this$0:Lorg/jdom2/ContentList;

    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 896
    iget-object v0, p0, Lorg/jdom2/ContentList$FilterList;->this$0:Lorg/jdom2/ContentList;

    invoke-static {v0}, Lorg/jdom2/ContentList;->access$200(Lorg/jdom2/ContentList;)I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/jdom2/ContentList$FilterList;->backingpos:[I

    .line 897
    const/4 v0, 0x0

    iput v0, p0, Lorg/jdom2/ContentList$FilterList;->backingsize:I

    .line 899
    const/4 v0, -0x1

    iput v0, p0, Lorg/jdom2/ContentList$FilterList;->xdata:I

    .line 908
    iput-object p2, p0, Lorg/jdom2/ContentList$FilterList;->filter:Lorg/jdom2/filter/Filter;

    .line 909
    return-void
.end method

.method static synthetic access$800(Lorg/jdom2/ContentList$FilterList;I)I
    .registers 3
    .param p0, "x0"    # Lorg/jdom2/ContentList$FilterList;
    .param p1, "x1"    # I

    .prologue
    .line 890
    invoke-direct {p0, p1}, Lorg/jdom2/ContentList$FilterList;->resync(I)I

    move-result v0

    return v0
.end method

.method private final fbinarySearch([IIILjava/util/Comparator;)I
    .registers 12
    .param p1, "indexes"    # [I
    .param p2, "len"    # I
    .param p3, "val"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([III",
            "Ljava/util/Comparator",
            "<-TF;>;)I"
        }
    .end annotation

    .prologue
    .line 1203
    .local p0, "this":Lorg/jdom2/ContentList$FilterList;, "Lorg/jdom2/ContentList$FilterList<TF;>;"
    .local p4, "comp":Ljava/util/Comparator;, "Ljava/util/Comparator<-TF;>;"
    const/4 v2, 0x0

    .local v2, "left":I
    const/4 v3, 0x0

    .local v3, "mid":I
    add-int/lit8 v4, p2, -0x1

    .local v4, "right":I
    const/4 v1, 0x0

    .line 1204
    .local v1, "cmp":I
    iget-object v5, p0, Lorg/jdom2/ContentList$FilterList;->this$0:Lorg/jdom2/ContentList;

    invoke-static {v5}, Lorg/jdom2/ContentList;->access$300(Lorg/jdom2/ContentList;)[Lorg/jdom2/Content;

    move-result-object v5

    iget-object v6, p0, Lorg/jdom2/ContentList$FilterList;->backingpos:[I

    aget v6, v6, p3

    aget-object v0, v5, v6

    .line 1205
    .local v0, "base":Lorg/jdom2/Content;, "TF;"
    :goto_11
    if-gt v2, v4, :cond_42

    .line 1206
    add-int v5, v2, v4

    ushr-int/lit8 v3, v5, 0x1

    .line 1207
    iget-object v5, p0, Lorg/jdom2/ContentList$FilterList;->this$0:Lorg/jdom2/ContentList;

    invoke-static {v5}, Lorg/jdom2/ContentList;->access$300(Lorg/jdom2/ContentList;)[Lorg/jdom2/Content;

    move-result-object v5

    aget v6, p1, v3

    aget-object v5, v5, v6

    invoke-interface {p4, v0, v5}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    .line 1208
    if-nez v1, :cond_43

    .line 1210
    :goto_27
    if-nez v1, :cond_40

    if-ge v3, v4, :cond_40

    iget-object v5, p0, Lorg/jdom2/ContentList$FilterList;->this$0:Lorg/jdom2/ContentList;

    invoke-static {v5}, Lorg/jdom2/ContentList;->access$300(Lorg/jdom2/ContentList;)[Lorg/jdom2/Content;

    move-result-object v5

    add-int/lit8 v6, v3, 0x1

    aget v6, p1, v6

    aget-object v5, v5, v6

    invoke-interface {p4, v0, v5}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v5

    if-nez v5, :cond_40

    .line 1211
    add-int/lit8 v3, v3, 0x1

    goto :goto_27

    .line 1213
    :cond_40
    add-int/lit8 v2, v3, 0x1

    .line 1220
    .end local v2    # "left":I
    :cond_42
    return v2

    .line 1214
    .restart local v2    # "left":I
    :cond_43
    if-gez v1, :cond_48

    .line 1215
    add-int/lit8 v4, v3, -0x1

    goto :goto_11

    .line 1217
    :cond_48
    add-int/lit8 v2, v3, 0x1

    goto :goto_11
.end method

.method private final resync(I)I
    .registers 6
    .param p1, "index"    # I

    .prologue
    .line 938
    .local p0, "this":Lorg/jdom2/ContentList$FilterList;, "Lorg/jdom2/ContentList$FilterList<TF;>;"
    iget v2, p0, Lorg/jdom2/ContentList$FilterList;->xdata:I

    iget-object v3, p0, Lorg/jdom2/ContentList$FilterList;->this$0:Lorg/jdom2/ContentList;

    invoke-static {v3}, Lorg/jdom2/ContentList;->access$500(Lorg/jdom2/ContentList;)I

    move-result v3

    if-eq v2, v3, :cond_2c

    .line 941
    iget-object v2, p0, Lorg/jdom2/ContentList$FilterList;->this$0:Lorg/jdom2/ContentList;

    invoke-static {v2}, Lorg/jdom2/ContentList;->access$500(Lorg/jdom2/ContentList;)I

    move-result v2

    iput v2, p0, Lorg/jdom2/ContentList$FilterList;->xdata:I

    .line 942
    const/4 v2, 0x0

    iput v2, p0, Lorg/jdom2/ContentList$FilterList;->backingsize:I

    .line 943
    iget-object v2, p0, Lorg/jdom2/ContentList$FilterList;->this$0:Lorg/jdom2/ContentList;

    invoke-static {v2}, Lorg/jdom2/ContentList;->access$200(Lorg/jdom2/ContentList;)I

    move-result v2

    iget-object v3, p0, Lorg/jdom2/ContentList$FilterList;->backingpos:[I

    array-length v3, v3

    if-lt v2, v3, :cond_2c

    .line 944
    iget-object v2, p0, Lorg/jdom2/ContentList$FilterList;->this$0:Lorg/jdom2/ContentList;

    invoke-static {v2}, Lorg/jdom2/ContentList;->access$200(Lorg/jdom2/ContentList;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    new-array v2, v2, [I

    iput-object v2, p0, Lorg/jdom2/ContentList$FilterList;->backingpos:[I

    .line 948
    :cond_2c
    if-ltz p1, :cond_37

    iget v2, p0, Lorg/jdom2/ContentList$FilterList;->backingsize:I

    if-ge p1, v2, :cond_37

    .line 951
    iget-object v2, p0, Lorg/jdom2/ContentList$FilterList;->backingpos:[I

    aget v0, v2, p1

    .line 970
    :cond_36
    :goto_36
    return v0

    .line 955
    :cond_37
    const/4 v0, 0x0

    .line 956
    .local v0, "bpi":I
    iget v2, p0, Lorg/jdom2/ContentList$FilterList;->backingsize:I

    if-lez v2, :cond_46

    .line 957
    iget-object v2, p0, Lorg/jdom2/ContentList$FilterList;->backingpos:[I

    iget v3, p0, Lorg/jdom2/ContentList$FilterList;->backingsize:I

    add-int/lit8 v3, v3, -0x1

    aget v2, v2, v3

    add-int/lit8 v0, v2, 0x1

    .line 960
    :cond_46
    :goto_46
    iget-object v2, p0, Lorg/jdom2/ContentList$FilterList;->this$0:Lorg/jdom2/ContentList;

    invoke-static {v2}, Lorg/jdom2/ContentList;->access$200(Lorg/jdom2/ContentList;)I

    move-result v2

    if-ge v0, v2, :cond_71

    .line 961
    iget-object v2, p0, Lorg/jdom2/ContentList$FilterList;->filter:Lorg/jdom2/filter/Filter;

    iget-object v3, p0, Lorg/jdom2/ContentList$FilterList;->this$0:Lorg/jdom2/ContentList;

    invoke-static {v3}, Lorg/jdom2/ContentList;->access$300(Lorg/jdom2/ContentList;)[Lorg/jdom2/Content;

    move-result-object v3

    aget-object v3, v3, v0

    invoke-interface {v2, v3}, Lorg/jdom2/filter/Filter;->filter(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jdom2/Content;

    .line 962
    .local v1, "gotit":Lorg/jdom2/Content;, "TF;"
    if-eqz v1, :cond_6e

    .line 963
    iget-object v2, p0, Lorg/jdom2/ContentList$FilterList;->backingpos:[I

    iget v3, p0, Lorg/jdom2/ContentList$FilterList;->backingsize:I

    aput v0, v2, v3

    .line 964
    iget v2, p0, Lorg/jdom2/ContentList$FilterList;->backingsize:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/jdom2/ContentList$FilterList;->backingsize:I

    if-eq v2, p1, :cond_36

    .line 968
    :cond_6e
    add-int/lit8 v0, v0, 0x1

    .line 969
    goto :goto_46

    .line 970
    .end local v1    # "gotit":Lorg/jdom2/Content;, "TF;"
    :cond_71
    iget-object v2, p0, Lorg/jdom2/ContentList$FilterList;->this$0:Lorg/jdom2/ContentList;

    invoke-static {v2}, Lorg/jdom2/ContentList;->access$200(Lorg/jdom2/ContentList;)I

    move-result v0

    goto :goto_36
.end method


# virtual methods
.method public bridge synthetic add(ILjava/lang/Object;)V
    .registers 3
    .param p1, "x0"    # I
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 890
    .local p0, "this":Lorg/jdom2/ContentList$FilterList;, "Lorg/jdom2/ContentList$FilterList<TF;>;"
    check-cast p2, Lorg/jdom2/Content;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/jdom2/ContentList$FilterList;->add(ILorg/jdom2/Content;)V

    return-void
.end method

.method public add(ILorg/jdom2/Content;)V
    .registers 7
    .param p1, "index"    # I
    .param p2, "obj"    # Lorg/jdom2/Content;

    .prologue
    .line 986
    .local p0, "this":Lorg/jdom2/ContentList$FilterList;, "Lorg/jdom2/ContentList$FilterList<TF;>;"
    if-gez p1, :cond_29

    .line 987
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Index: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lorg/jdom2/ContentList$FilterList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 989
    :cond_29
    invoke-direct {p0, p1}, Lorg/jdom2/ContentList$FilterList;->resync(I)I

    move-result v0

    .line 990
    .local v0, "adj":I
    iget-object v1, p0, Lorg/jdom2/ContentList$FilterList;->this$0:Lorg/jdom2/ContentList;

    invoke-static {v1}, Lorg/jdom2/ContentList;->access$200(Lorg/jdom2/ContentList;)I

    move-result v1

    if-ne v0, v1, :cond_62

    invoke-virtual {p0}, Lorg/jdom2/ContentList$FilterList;->size()I

    move-result v1

    if-le p1, v1, :cond_62

    .line 991
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Index: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lorg/jdom2/ContentList$FilterList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 993
    :cond_62
    iget-object v1, p0, Lorg/jdom2/ContentList$FilterList;->filter:Lorg/jdom2/filter/Filter;

    invoke-interface {v1, p2}, Lorg/jdom2/filter/Filter;->matches(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_98

    .line 994
    iget-object v1, p0, Lorg/jdom2/ContentList$FilterList;->this$0:Lorg/jdom2/ContentList;

    invoke-virtual {v1, v0, p2}, Lorg/jdom2/ContentList;->add(ILorg/jdom2/Content;)V

    .line 999
    iget-object v1, p0, Lorg/jdom2/ContentList$FilterList;->backingpos:[I

    array-length v1, v1

    iget-object v2, p0, Lorg/jdom2/ContentList$FilterList;->this$0:Lorg/jdom2/ContentList;

    invoke-static {v2}, Lorg/jdom2/ContentList;->access$200(Lorg/jdom2/ContentList;)I

    move-result v2

    if-gt v1, v2, :cond_87

    .line 1000
    iget-object v1, p0, Lorg/jdom2/ContentList$FilterList;->backingpos:[I

    iget-object v2, p0, Lorg/jdom2/ContentList$FilterList;->backingpos:[I

    array-length v2, v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v1, v2}, Lorg/jdom2/internal/ArrayCopy;->copyOf([II)[I

    move-result-object v1

    iput-object v1, p0, Lorg/jdom2/ContentList$FilterList;->backingpos:[I

    .line 1002
    :cond_87
    iget-object v1, p0, Lorg/jdom2/ContentList$FilterList;->backingpos:[I

    aput v0, v1, p1

    .line 1003
    add-int/lit8 v1, p1, 0x1

    iput v1, p0, Lorg/jdom2/ContentList$FilterList;->backingsize:I

    .line 1004
    iget-object v1, p0, Lorg/jdom2/ContentList$FilterList;->this$0:Lorg/jdom2/ContentList;

    invoke-static {v1}, Lorg/jdom2/ContentList;->access$500(Lorg/jdom2/ContentList;)I

    move-result v1

    iput v1, p0, Lorg/jdom2/ContentList$FilterList;->xdata:I

    .line 1011
    return-void

    .line 1007
    :cond_98
    new-instance v1, Lorg/jdom2/IllegalAddException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Filter won\'t allow the "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' to be added to the list"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/jdom2/IllegalAddException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public addAll(ILjava/util/Collection;)Z
    .registers 14
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection",
            "<+TF;>;)Z"
        }
    .end annotation

    .prologue
    .line 1016
    .local p0, "this":Lorg/jdom2/ContentList$FilterList;, "Lorg/jdom2/ContentList$FilterList<TF;>;"
    .local p2, "collection":Ljava/util/Collection;, "Ljava/util/Collection<+TF;>;"
    if-nez p2, :cond_a

    .line 1017
    new-instance v8, Ljava/lang/NullPointerException;

    const-string v9, "Cannot add a null collection"

    invoke-direct {v8, v9}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1020
    :cond_a
    if-gez p1, :cond_33

    .line 1021
    new-instance v8, Ljava/lang/IndexOutOfBoundsException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Index: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " Size: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Lorg/jdom2/ContentList$FilterList;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1024
    :cond_33
    invoke-direct {p0, p1}, Lorg/jdom2/ContentList$FilterList;->resync(I)I

    move-result v1

    .line 1025
    .local v1, "adj":I
    iget-object v8, p0, Lorg/jdom2/ContentList$FilterList;->this$0:Lorg/jdom2/ContentList;

    invoke-static {v8}, Lorg/jdom2/ContentList;->access$200(Lorg/jdom2/ContentList;)I

    move-result v8

    if-ne v1, v8, :cond_6c

    invoke-virtual {p0}, Lorg/jdom2/ContentList$FilterList;->size()I

    move-result v8

    if-le p1, v8, :cond_6c

    .line 1026
    new-instance v8, Ljava/lang/IndexOutOfBoundsException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Index: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " Size: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Lorg/jdom2/ContentList$FilterList;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1029
    :cond_6c
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v0

    .line 1030
    .local v0, "addcnt":I
    if-nez v0, :cond_74

    .line 1031
    const/4 v8, 0x0

    .line 1087
    :goto_73
    return v8

    .line 1034
    :cond_74
    iget-object v8, p0, Lorg/jdom2/ContentList$FilterList;->this$0:Lorg/jdom2/ContentList;

    iget-object v9, p0, Lorg/jdom2/ContentList$FilterList;->this$0:Lorg/jdom2/ContentList;

    invoke-virtual {v9}, Lorg/jdom2/ContentList;->size()I

    move-result v9

    add-int/2addr v9, v0

    invoke-virtual {v8, v9}, Lorg/jdom2/ContentList;->ensureCapacity(I)V

    .line 1036
    iget-object v8, p0, Lorg/jdom2/ContentList$FilterList;->this$0:Lorg/jdom2/ContentList;

    invoke-static {v8}, Lorg/jdom2/ContentList;->access$100(Lorg/jdom2/ContentList;)I

    move-result v7

    .line 1037
    .local v7, "tmpmodcount":I
    iget-object v8, p0, Lorg/jdom2/ContentList$FilterList;->this$0:Lorg/jdom2/ContentList;

    invoke-static {v8}, Lorg/jdom2/ContentList;->access$500(Lorg/jdom2/ContentList;)I

    move-result v6

    .line 1038
    .local v6, "tmpdmc":I
    const/4 v5, 0x0

    .line 1040
    .local v5, "ok":Z
    const/4 v3, 0x0

    .line 1043
    .local v3, "count":I
    :try_start_8e
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_92
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_127

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jdom2/Content;

    .line 1044
    .local v2, "c":Lorg/jdom2/Content;
    if-nez v2, :cond_b7

    .line 1045
    new-instance v8, Ljava/lang/NullPointerException;

    const-string v9, "Cannot add null content"

    invoke-direct {v8, v9}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_a8
    .catchall {:try_start_8e .. :try_end_a8} :catchall_a8

    .line 1072
    .end local v2    # "c":Lorg/jdom2/Content;
    .end local v4    # "i$":Ljava/util/Iterator;
    :catchall_a8
    move-exception v8

    if-nez v5, :cond_155

    .line 1074
    :goto_ab
    add-int/lit8 v3, v3, -0x1

    if-ltz v3, :cond_147

    .line 1075
    iget-object v9, p0, Lorg/jdom2/ContentList$FilterList;->this$0:Lorg/jdom2/ContentList;

    add-int v10, v1, v3

    invoke-virtual {v9, v10}, Lorg/jdom2/ContentList;->remove(I)Lorg/jdom2/Content;

    goto :goto_ab

    .line 1048
    .restart local v2    # "c":Lorg/jdom2/Content;
    .restart local v4    # "i$":Ljava/util/Iterator;
    :cond_b7
    :try_start_b7
    iget-object v8, p0, Lorg/jdom2/ContentList$FilterList;->filter:Lorg/jdom2/filter/Filter;

    invoke-interface {v8, v2}, Lorg/jdom2/filter/Filter;->matches(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_f6

    .line 1049
    iget-object v8, p0, Lorg/jdom2/ContentList$FilterList;->this$0:Lorg/jdom2/ContentList;

    add-int v9, v1, v3

    invoke-virtual {v8, v9, v2}, Lorg/jdom2/ContentList;->add(ILorg/jdom2/Content;)V

    .line 1055
    iget-object v8, p0, Lorg/jdom2/ContentList$FilterList;->backingpos:[I

    array-length v8, v8

    iget-object v9, p0, Lorg/jdom2/ContentList$FilterList;->this$0:Lorg/jdom2/ContentList;

    invoke-static {v9}, Lorg/jdom2/ContentList;->access$200(Lorg/jdom2/ContentList;)I

    move-result v9

    if-gt v8, v9, :cond_dd

    .line 1056
    iget-object v8, p0, Lorg/jdom2/ContentList$FilterList;->backingpos:[I

    iget-object v9, p0, Lorg/jdom2/ContentList$FilterList;->backingpos:[I

    array-length v9, v9

    add-int/2addr v9, v0

    invoke-static {v8, v9}, Lorg/jdom2/internal/ArrayCopy;->copyOf([II)[I

    move-result-object v8

    iput-object v8, p0, Lorg/jdom2/ContentList$FilterList;->backingpos:[I

    .line 1058
    :cond_dd
    iget-object v8, p0, Lorg/jdom2/ContentList$FilterList;->backingpos:[I

    add-int v9, p1, v3

    add-int v10, v1, v3

    aput v10, v8, v9

    .line 1059
    add-int v8, p1, v3

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lorg/jdom2/ContentList$FilterList;->backingsize:I

    .line 1060
    iget-object v8, p0, Lorg/jdom2/ContentList$FilterList;->this$0:Lorg/jdom2/ContentList;

    invoke-static {v8}, Lorg/jdom2/ContentList;->access$500(Lorg/jdom2/ContentList;)I

    move-result v8

    iput v8, p0, Lorg/jdom2/ContentList$FilterList;->xdata:I

    .line 1062
    add-int/lit8 v3, v3, 0x1

    goto :goto_92

    .line 1064
    :cond_f6
    new-instance v8, Lorg/jdom2/IllegalAddException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Filter won\'t allow the "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\' to be added to the list"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lorg/jdom2/IllegalAddException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_127
    .catchall {:try_start_b7 .. :try_end_127} :catchall_a8

    .line 1070
    .end local v2    # "c":Lorg/jdom2/Content;
    :cond_127
    const/4 v5, 0x1

    .line 1072
    if-nez v5, :cond_144

    .line 1074
    :goto_12a
    add-int/lit8 v3, v3, -0x1

    if-ltz v3, :cond_136

    .line 1075
    iget-object v8, p0, Lorg/jdom2/ContentList$FilterList;->this$0:Lorg/jdom2/ContentList;

    add-int v9, v1, v3

    invoke-virtual {v8, v9}, Lorg/jdom2/ContentList;->remove(I)Lorg/jdom2/Content;

    goto :goto_12a

    .line 1078
    :cond_136
    iget-object v8, p0, Lorg/jdom2/ContentList$FilterList;->this$0:Lorg/jdom2/ContentList;

    invoke-static {v8, v7}, Lorg/jdom2/ContentList;->access$600(Lorg/jdom2/ContentList;I)V

    .line 1079
    iget-object v8, p0, Lorg/jdom2/ContentList$FilterList;->this$0:Lorg/jdom2/ContentList;

    invoke-static {v8, v6}, Lorg/jdom2/ContentList;->access$502(Lorg/jdom2/ContentList;I)I

    .line 1082
    iput p1, p0, Lorg/jdom2/ContentList$FilterList;->backingsize:I

    .line 1083
    iput v7, p0, Lorg/jdom2/ContentList$FilterList;->xdata:I

    .line 1087
    :cond_144
    const/4 v8, 0x1

    goto/16 :goto_73

    .line 1078
    .end local v4    # "i$":Ljava/util/Iterator;
    :cond_147
    iget-object v9, p0, Lorg/jdom2/ContentList$FilterList;->this$0:Lorg/jdom2/ContentList;

    invoke-static {v9, v7}, Lorg/jdom2/ContentList;->access$600(Lorg/jdom2/ContentList;I)V

    .line 1079
    iget-object v9, p0, Lorg/jdom2/ContentList$FilterList;->this$0:Lorg/jdom2/ContentList;

    invoke-static {v9, v6}, Lorg/jdom2/ContentList;->access$502(Lorg/jdom2/ContentList;I)I

    .line 1082
    iput p1, p0, Lorg/jdom2/ContentList$FilterList;->backingsize:I

    .line 1083
    iput v7, p0, Lorg/jdom2/ContentList$FilterList;->xdata:I

    :cond_155
    throw v8
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # I

    .prologue
    .line 890
    .local p0, "this":Lorg/jdom2/ContentList$FilterList;, "Lorg/jdom2/ContentList$FilterList<TF;>;"
    invoke-virtual {p0, p1}, Lorg/jdom2/ContentList$FilterList;->get(I)Lorg/jdom2/Content;

    move-result-object v0

    return-object v0
.end method

.method public get(I)Lorg/jdom2/Content;
    .registers 6
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TF;"
        }
    .end annotation

    .prologue
    .line 1099
    .local p0, "this":Lorg/jdom2/ContentList$FilterList;, "Lorg/jdom2/ContentList$FilterList<TF;>;"
    if-gez p1, :cond_29

    .line 1100
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Index: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lorg/jdom2/ContentList$FilterList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1102
    :cond_29
    invoke-direct {p0, p1}, Lorg/jdom2/ContentList$FilterList;->resync(I)I

    move-result v0

    .line 1103
    .local v0, "adj":I
    iget-object v1, p0, Lorg/jdom2/ContentList$FilterList;->this$0:Lorg/jdom2/ContentList;

    invoke-static {v1}, Lorg/jdom2/ContentList;->access$200(Lorg/jdom2/ContentList;)I

    move-result v1

    if-ne v0, v1, :cond_5c

    .line 1104
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Index: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lorg/jdom2/ContentList$FilterList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1106
    :cond_5c
    iget-object v1, p0, Lorg/jdom2/ContentList$FilterList;->filter:Lorg/jdom2/filter/Filter;

    iget-object v2, p0, Lorg/jdom2/ContentList$FilterList;->this$0:Lorg/jdom2/ContentList;

    invoke-virtual {v2, v0}, Lorg/jdom2/ContentList;->get(I)Lorg/jdom2/Content;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/jdom2/filter/Filter;->filter(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jdom2/Content;

    return-object v1
.end method

.method public isEmpty()Z
    .registers 4

    .prologue
    .local p0, "this":Lorg/jdom2/ContentList$FilterList;, "Lorg/jdom2/ContentList$FilterList<TF;>;"
    const/4 v0, 0x0

    .line 924
    invoke-direct {p0, v0}, Lorg/jdom2/ContentList$FilterList;->resync(I)I

    move-result v1

    iget-object v2, p0, Lorg/jdom2/ContentList$FilterList;->this$0:Lorg/jdom2/ContentList;

    invoke-static {v2}, Lorg/jdom2/ContentList;->access$200(Lorg/jdom2/ContentList;)I

    move-result v2

    if-ne v1, v2, :cond_e

    const/4 v0, 0x1

    :cond_e
    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TF;>;"
        }
    .end annotation

    .prologue
    .line 1111
    .local p0, "this":Lorg/jdom2/ContentList$FilterList;, "Lorg/jdom2/ContentList$FilterList<TF;>;"
    new-instance v0, Lorg/jdom2/ContentList$FilterListIterator;

    iget-object v1, p0, Lorg/jdom2/ContentList$FilterList;->this$0:Lorg/jdom2/ContentList;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lorg/jdom2/ContentList$FilterListIterator;-><init>(Lorg/jdom2/ContentList;Lorg/jdom2/ContentList$FilterList;I)V

    return-object v0
.end method

.method public listIterator()Ljava/util/ListIterator;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ListIterator",
            "<TF;>;"
        }
    .end annotation

    .prologue
    .line 1116
    .local p0, "this":Lorg/jdom2/ContentList$FilterList;, "Lorg/jdom2/ContentList$FilterList<TF;>;"
    new-instance v0, Lorg/jdom2/ContentList$FilterListIterator;

    iget-object v1, p0, Lorg/jdom2/ContentList$FilterList;->this$0:Lorg/jdom2/ContentList;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lorg/jdom2/ContentList$FilterListIterator;-><init>(Lorg/jdom2/ContentList;Lorg/jdom2/ContentList$FilterList;I)V

    return-object v0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .registers 4
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator",
            "<TF;>;"
        }
    .end annotation

    .prologue
    .line 1121
    .local p0, "this":Lorg/jdom2/ContentList$FilterList;, "Lorg/jdom2/ContentList$FilterList<TF;>;"
    new-instance v0, Lorg/jdom2/ContentList$FilterListIterator;

    iget-object v1, p0, Lorg/jdom2/ContentList$FilterList;->this$0:Lorg/jdom2/ContentList;

    invoke-direct {v0, v1, p0, p1}, Lorg/jdom2/ContentList$FilterListIterator;-><init>(Lorg/jdom2/ContentList;Lorg/jdom2/ContentList$FilterList;I)V

    return-object v0
.end method

.method public bridge synthetic remove(I)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # I

    .prologue
    .line 890
    .local p0, "this":Lorg/jdom2/ContentList$FilterList;, "Lorg/jdom2/ContentList$FilterList<TF;>;"
    invoke-virtual {p0, p1}, Lorg/jdom2/ContentList$FilterList;->remove(I)Lorg/jdom2/Content;

    move-result-object v0

    return-object v0
.end method

.method public remove(I)Lorg/jdom2/Content;
    .registers 7
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TF;"
        }
    .end annotation

    .prologue
    .line 1133
    .local p0, "this":Lorg/jdom2/ContentList$FilterList;, "Lorg/jdom2/ContentList$FilterList<TF;>;"
    if-gez p1, :cond_29

    .line 1134
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Index: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Size: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lorg/jdom2/ContentList$FilterList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1136
    :cond_29
    invoke-direct {p0, p1}, Lorg/jdom2/ContentList$FilterList;->resync(I)I

    move-result v0

    .line 1137
    .local v0, "adj":I
    iget-object v2, p0, Lorg/jdom2/ContentList$FilterList;->this$0:Lorg/jdom2/ContentList;

    invoke-static {v2}, Lorg/jdom2/ContentList;->access$200(Lorg/jdom2/ContentList;)I

    move-result v2

    if-ne v0, v2, :cond_5c

    .line 1138
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Index: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Size: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lorg/jdom2/ContentList$FilterList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1140
    :cond_5c
    iget-object v2, p0, Lorg/jdom2/ContentList$FilterList;->this$0:Lorg/jdom2/ContentList;

    invoke-virtual {v2, v0}, Lorg/jdom2/ContentList;->remove(I)Lorg/jdom2/Content;

    move-result-object v1

    .line 1142
    .local v1, "oldc":Lorg/jdom2/Content;
    iput p1, p0, Lorg/jdom2/ContentList$FilterList;->backingsize:I

    .line 1143
    iget-object v2, p0, Lorg/jdom2/ContentList$FilterList;->this$0:Lorg/jdom2/ContentList;

    invoke-static {v2}, Lorg/jdom2/ContentList;->access$500(Lorg/jdom2/ContentList;)I

    move-result v2

    iput v2, p0, Lorg/jdom2/ContentList$FilterList;->xdata:I

    .line 1145
    iget-object v2, p0, Lorg/jdom2/ContentList$FilterList;->filter:Lorg/jdom2/filter/Filter;

    invoke-interface {v2, v1}, Lorg/jdom2/filter/Filter;->filter(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jdom2/Content;

    return-object v2
.end method

.method public bridge synthetic set(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p1, "x0"    # I
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 890
    .local p0, "this":Lorg/jdom2/ContentList$FilterList;, "Lorg/jdom2/ContentList$FilterList<TF;>;"
    check-cast p2, Lorg/jdom2/Content;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/jdom2/ContentList$FilterList;->set(ILorg/jdom2/Content;)Lorg/jdom2/Content;

    move-result-object v0

    return-object v0
.end method

.method public set(ILorg/jdom2/Content;)Lorg/jdom2/Content;
    .registers 9
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITF;)TF;"
        }
    .end annotation

    .prologue
    .line 1160
    .local p0, "this":Lorg/jdom2/ContentList$FilterList;, "Lorg/jdom2/ContentList$FilterList<TF;>;"
    .local p2, "obj":Lorg/jdom2/Content;, "TF;"
    if-gez p1, :cond_29

    .line 1161
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Index: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Size: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lorg/jdom2/ContentList$FilterList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1163
    :cond_29
    invoke-direct {p0, p1}, Lorg/jdom2/ContentList$FilterList;->resync(I)I

    move-result v0

    .line 1164
    .local v0, "adj":I
    iget-object v3, p0, Lorg/jdom2/ContentList$FilterList;->this$0:Lorg/jdom2/ContentList;

    invoke-static {v3}, Lorg/jdom2/ContentList;->access$200(Lorg/jdom2/ContentList;)I

    move-result v3

    if-ne v0, v3, :cond_5c

    .line 1165
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Index: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Size: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lorg/jdom2/ContentList$FilterList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1167
    :cond_5c
    iget-object v3, p0, Lorg/jdom2/ContentList$FilterList;->filter:Lorg/jdom2/filter/Filter;

    invoke-interface {v3, p2}, Lorg/jdom2/filter/Filter;->filter(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jdom2/Content;

    .line 1168
    .local v1, "ins":Lorg/jdom2/Content;, "TF;"
    if-eqz v1, :cond_7d

    .line 1169
    iget-object v3, p0, Lorg/jdom2/ContentList$FilterList;->filter:Lorg/jdom2/filter/Filter;

    iget-object v4, p0, Lorg/jdom2/ContentList$FilterList;->this$0:Lorg/jdom2/ContentList;

    invoke-virtual {v4, v0, v1}, Lorg/jdom2/ContentList;->set(ILorg/jdom2/Content;)Lorg/jdom2/Content;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/jdom2/filter/Filter;->filter(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jdom2/Content;

    .line 1171
    .local v2, "oldc":Lorg/jdom2/Content;, "TF;"
    iget-object v3, p0, Lorg/jdom2/ContentList$FilterList;->this$0:Lorg/jdom2/ContentList;

    invoke-static {v3}, Lorg/jdom2/ContentList;->access$500(Lorg/jdom2/ContentList;)I

    move-result v3

    iput v3, p0, Lorg/jdom2/ContentList$FilterList;->xdata:I

    .line 1172
    return-object v2

    .line 1174
    .end local v2    # "oldc":Lorg/jdom2/Content;, "TF;"
    :cond_7d
    new-instance v3, Lorg/jdom2/IllegalAddException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Filter won\'t allow index "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to be set to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/jdom2/IllegalAddException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public size()I
    .registers 2

    .prologue
    .line 1186
    .local p0, "this":Lorg/jdom2/ContentList$FilterList;, "Lorg/jdom2/ContentList$FilterList<TF;>;"
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lorg/jdom2/ContentList$FilterList;->resync(I)I

    .line 1187
    iget v0, p0, Lorg/jdom2/ContentList$FilterList;->backingsize:I

    return v0
.end method

.method final sort(Ljava/util/Comparator;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<-TF;>;)V"
        }
    .end annotation

    .prologue
    .line 1226
    .local p0, "this":Lorg/jdom2/ContentList$FilterList;, "Lorg/jdom2/ContentList$FilterList<TF;>;"
    .local p1, "comp":Ljava/util/Comparator;, "Ljava/util/Comparator<-TF;>;"
    invoke-virtual {p0}, Lorg/jdom2/ContentList$FilterList;->size()I

    move-result v3

    .line 1227
    .local v3, "sz":I
    new-array v1, v3, [I

    .line 1228
    .local v1, "indexes":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_7
    if-ge v0, v3, :cond_1f

    .line 1229
    invoke-direct {p0, v1, v0, v0, p1}, Lorg/jdom2/ContentList$FilterList;->fbinarySearch([IIILjava/util/Comparator;)I

    move-result v2

    .line 1230
    .local v2, "ip":I
    if-ge v2, v0, :cond_16

    .line 1231
    add-int/lit8 v4, v2, 0x1

    sub-int v5, v0, v2

    invoke-static {v1, v2, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1233
    :cond_16
    iget-object v4, p0, Lorg/jdom2/ContentList$FilterList;->backingpos:[I

    aget v4, v4, v0

    aput v4, v1, v2

    .line 1228
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 1235
    .end local v2    # "ip":I
    :cond_1f
    iget-object v4, p0, Lorg/jdom2/ContentList$FilterList;->this$0:Lorg/jdom2/ContentList;

    invoke-static {v4, v1}, Lorg/jdom2/ContentList;->access$700(Lorg/jdom2/ContentList;[I)V

    .line 1236
    return-void
.end method
