.class Lcom/pantech/multimedia/parser/vendor/CloudLiveFeedParser$SaxHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "CloudLiveFeedParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/multimedia/parser/vendor/CloudLiveFeedParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SaxHandler"
.end annotation


# instance fields
.field addBodyMap:Z

.field addHeaderMap:Z

.field isItem:Z

.field mFd:Lcom/pantech/multimedia/data/vendor/CloudLiveFeedData;

.field mFileData:Lcom/pantech/multimedia/data/vendor/CloudLiveFeedData$CloudLiveFileList;

.field mParserMap:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field mlocalName:Ljava/lang/String;

.field final synthetic this$0:Lcom/pantech/multimedia/parser/vendor/CloudLiveFeedParser;


# direct methods
.method public constructor <init>(Lcom/pantech/multimedia/parser/vendor/CloudLiveFeedParser;Lcom/pantech/multimedia/data/vendor/CloudLiveFeedData;)V
    .registers 5
    .param p2, "fd"    # Lcom/pantech/multimedia/data/vendor/CloudLiveFeedData;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 133
    iput-object p1, p0, Lcom/pantech/multimedia/parser/vendor/CloudLiveFeedParser$SaxHandler;->this$0:Lcom/pantech/multimedia/parser/vendor/CloudLiveFeedParser;

    .line 129
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 121
    iput-boolean v0, p0, Lcom/pantech/multimedia/parser/vendor/CloudLiveFeedParser$SaxHandler;->addBodyMap:Z

    .line 122
    iput-boolean v0, p0, Lcom/pantech/multimedia/parser/vendor/CloudLiveFeedParser$SaxHandler;->addHeaderMap:Z

    .line 123
    iput-boolean v0, p0, Lcom/pantech/multimedia/parser/vendor/CloudLiveFeedParser$SaxHandler;->isItem:Z

    .line 124
    iput-object v1, p0, Lcom/pantech/multimedia/parser/vendor/CloudLiveFeedParser$SaxHandler;->mlocalName:Ljava/lang/String;

    .line 126
    iput-object v1, p0, Lcom/pantech/multimedia/parser/vendor/CloudLiveFeedParser$SaxHandler;->mParserMap:Ljava/util/WeakHashMap;

    .line 130
    iput-object p2, p0, Lcom/pantech/multimedia/parser/vendor/CloudLiveFeedParser$SaxHandler;->mFd:Lcom/pantech/multimedia/data/vendor/CloudLiveFeedData;

    .line 132
    iget-object v0, p0, Lcom/pantech/multimedia/parser/vendor/CloudLiveFeedParser$SaxHandler;->mFd:Lcom/pantech/multimedia/data/vendor/CloudLiveFeedData;

    invoke-virtual {v0}, Lcom/pantech/multimedia/data/vendor/CloudLiveFeedData;->getParserMap()Ljava/util/WeakHashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/multimedia/parser/vendor/CloudLiveFeedParser$SaxHandler;->mParserMap:Ljava/util/WeakHashMap;

    return-void
.end method


# virtual methods
.method public characters([CII)V
    .registers 10
    .param p1, "ch"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 139
    iget-boolean v2, p0, Lcom/pantech/multimedia/parser/vendor/CloudLiveFeedParser$SaxHandler;->addHeaderMap:Z

    if-eqz v2, :cond_1e

    iget-boolean v2, p0, Lcom/pantech/multimedia/parser/vendor/CloudLiveFeedParser$SaxHandler;->isItem:Z

    if-eqz v2, :cond_1e

    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 141
    .local v0, "data":Ljava/lang/StringBuilder;
    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 143
    iget-object v2, p0, Lcom/pantech/multimedia/parser/vendor/CloudLiveFeedParser$SaxHandler;->mParserMap:Ljava/util/WeakHashMap;

    iget-object v3, p0, Lcom/pantech/multimedia/parser/vendor/CloudLiveFeedParser$SaxHandler;->mlocalName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/pantech/multimedia/parser/vendor/CloudLiveFeedParser$SaxHandler;->isItem:Z

    .line 147
    .end local v0    # "data":Ljava/lang/StringBuilder;
    :cond_1e
    iget-boolean v2, p0, Lcom/pantech/multimedia/parser/vendor/CloudLiveFeedParser$SaxHandler;->addBodyMap:Z

    if-eqz v2, :cond_5e

    iget-boolean v2, p0, Lcom/pantech/multimedia/parser/vendor/CloudLiveFeedParser$SaxHandler;->isItem:Z

    if-eqz v2, :cond_5e

    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 149
    .restart local v0    # "data":Ljava/lang/StringBuilder;
    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 152
    iget-object v2, p0, Lcom/pantech/multimedia/parser/vendor/CloudLiveFeedParser$SaxHandler;->mFileData:Lcom/pantech/multimedia/data/vendor/CloudLiveFeedData$CloudLiveFileList;

    invoke-virtual {v2}, Lcom/pantech/multimedia/data/vendor/CloudLiveFeedData$CloudLiveFileList;->getParserMap()Ljava/util/WeakHashMap;

    move-result-object v2

    iget-object v3, p0, Lcom/pantech/multimedia/parser/vendor/CloudLiveFeedParser$SaxHandler;->mlocalName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 154
    .local v1, "tempData":Ljava/lang/String;
    if-eqz v1, :cond_5f

    .line 156
    iget-object v2, p0, Lcom/pantech/multimedia/parser/vendor/CloudLiveFeedParser$SaxHandler;->mFileData:Lcom/pantech/multimedia/data/vendor/CloudLiveFeedData$CloudLiveFileList;

    invoke-virtual {v2}, Lcom/pantech/multimedia/data/vendor/CloudLiveFeedData$CloudLiveFileList;->getParserMap()Ljava/util/WeakHashMap;

    move-result-object v2

    iget-object v3, p0, Lcom/pantech/multimedia/parser/vendor/CloudLiveFeedParser$SaxHandler;->mlocalName:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    .end local v0    # "data":Ljava/lang/StringBuilder;
    .end local v1    # "tempData":Ljava/lang/String;
    :cond_5e
    :goto_5e
    return-void

    .line 158
    .restart local v0    # "data":Ljava/lang/StringBuilder;
    .restart local v1    # "tempData":Ljava/lang/String;
    :cond_5f
    iget-object v2, p0, Lcom/pantech/multimedia/parser/vendor/CloudLiveFeedParser$SaxHandler;->mFileData:Lcom/pantech/multimedia/data/vendor/CloudLiveFeedData$CloudLiveFileList;

    invoke-virtual {v2}, Lcom/pantech/multimedia/data/vendor/CloudLiveFeedData$CloudLiveFileList;->getParserMap()Ljava/util/WeakHashMap;

    move-result-object v2

    iget-object v3, p0, Lcom/pantech/multimedia/parser/vendor/CloudLiveFeedParser$SaxHandler;->mlocalName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5e
.end method

.method public endDocument()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 166
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 172
    const-string v0, "responseHeader"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    const-string v0, "size"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 173
    :cond_11
    iput-boolean v1, p0, Lcom/pantech/multimedia/parser/vendor/CloudLiveFeedParser$SaxHandler;->addHeaderMap:Z

    .line 174
    iput-boolean v1, p0, Lcom/pantech/multimedia/parser/vendor/CloudLiveFeedParser$SaxHandler;->isItem:Z

    .line 177
    :cond_15
    const-string v0, "entity"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 178
    iput-boolean v1, p0, Lcom/pantech/multimedia/parser/vendor/CloudLiveFeedParser$SaxHandler;->addBodyMap:Z

    .line 179
    iput-boolean v1, p0, Lcom/pantech/multimedia/parser/vendor/CloudLiveFeedParser$SaxHandler;->isItem:Z

    .line 182
    :cond_21
    const-string v0, "row"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 183
    iget-object v0, p0, Lcom/pantech/multimedia/parser/vendor/CloudLiveFeedParser$SaxHandler;->mFd:Lcom/pantech/multimedia/data/vendor/CloudLiveFeedData;

    iget-object v1, p0, Lcom/pantech/multimedia/parser/vendor/CloudLiveFeedParser$SaxHandler;->mFileData:Lcom/pantech/multimedia/data/vendor/CloudLiveFeedData$CloudLiveFileList;

    invoke-virtual {v0, v1}, Lcom/pantech/multimedia/data/vendor/CloudLiveFeedData;->setItem(Ljava/lang/Object;)V

    .line 186
    :cond_30
    return-void
.end method

.method public startDocument()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 191
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .registers 7
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .param p4, "attributes"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 199
    iput-object p2, p0, Lcom/pantech/multimedia/parser/vendor/CloudLiveFeedParser$SaxHandler;->mlocalName:Ljava/lang/String;

    .line 201
    const-string v0, "responseHeader"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 202
    iput-boolean v1, p0, Lcom/pantech/multimedia/parser/vendor/CloudLiveFeedParser$SaxHandler;->addHeaderMap:Z

    .line 205
    :cond_d
    const-string v0, "serviceId"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3d

    const-string v0, "responseTime"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3d

    .line 206
    const-string v0, "actionUrl"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3d

    const-string v0, "resultCode"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3d

    .line 207
    const-string v0, "resultMessage"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3d

    const-string v0, "lastSyncDts"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 208
    :cond_3d
    iput-boolean v1, p0, Lcom/pantech/multimedia/parser/vendor/CloudLiveFeedParser$SaxHandler;->isItem:Z

    .line 211
    :cond_3f
    const-string v0, "size"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 212
    iput-boolean v1, p0, Lcom/pantech/multimedia/parser/vendor/CloudLiveFeedParser$SaxHandler;->addHeaderMap:Z

    .line 213
    iput-boolean v1, p0, Lcom/pantech/multimedia/parser/vendor/CloudLiveFeedParser$SaxHandler;->isItem:Z

    .line 216
    :cond_4b
    const-string v0, "entity"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_57

    .line 217
    iput-boolean v1, p0, Lcom/pantech/multimedia/parser/vendor/CloudLiveFeedParser$SaxHandler;->addBodyMap:Z

    .line 218
    iput-boolean v1, p0, Lcom/pantech/multimedia/parser/vendor/CloudLiveFeedParser$SaxHandler;->isItem:Z

    .line 221
    :cond_57
    const-string v0, "row"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_67

    .line 222
    iget-object v0, p0, Lcom/pantech/multimedia/parser/vendor/CloudLiveFeedParser$SaxHandler;->mFd:Lcom/pantech/multimedia/data/vendor/CloudLiveFeedData;

    invoke-virtual {v0}, Lcom/pantech/multimedia/data/vendor/CloudLiveFeedData;->createItem()Lcom/pantech/multimedia/data/vendor/CloudLiveFeedData$CloudLiveFileList;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/multimedia/parser/vendor/CloudLiveFeedParser$SaxHandler;->mFileData:Lcom/pantech/multimedia/data/vendor/CloudLiveFeedData$CloudLiveFileList;

    .line 224
    :cond_67
    return-void
.end method
