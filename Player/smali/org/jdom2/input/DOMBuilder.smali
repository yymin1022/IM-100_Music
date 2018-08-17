.class public Lorg/jdom2/input/DOMBuilder;
.super Ljava/lang/Object;
.source "DOMBuilder.java"


# instance fields
.field private factory:Lorg/jdom2/JDOMFactory;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    new-instance v0, Lorg/jdom2/DefaultJDOMFactory;

    invoke-direct {v0}, Lorg/jdom2/DefaultJDOMFactory;-><init>()V

    iput-object v0, p0, Lorg/jdom2/input/DOMBuilder;->factory:Lorg/jdom2/JDOMFactory;

    .line 113
    return-void
.end method

.method private buildTree(Lorg/w3c/dom/Node;Lorg/jdom2/Document;Lorg/jdom2/Element;Z)V
    .registers 41
    .param p1, "node"    # Lorg/w3c/dom/Node;
    .param p2, "doc"    # Lorg/jdom2/Document;
    .param p3, "current"    # Lorg/jdom2/Element;
    .param p4, "atRoot"    # Z

    .prologue
    .line 248
    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v34

    packed-switch v34, :pswitch_data_2fa

    .line 461
    .end local p1    # "node":Lorg/w3c/dom/Node;
    :cond_7
    :goto_7
    :pswitch_7
    return-void

    .line 250
    .restart local p1    # "node":Lorg/w3c/dom/Node;
    :pswitch_8
    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v26

    .line 251
    .local v26, "nodes":Lorg/w3c/dom/NodeList;
    const/16 v21, 0x0

    .local v21, "i":I
    invoke-interface/range {v26 .. v26}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v31

    .local v31, "size":I
    :goto_12
    move/from16 v0, v21

    move/from16 v1, v31

    if-ge v0, v1, :cond_7

    .line 252
    move-object/from16 v0, v26

    move/from16 v1, v21

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v34

    const/16 v35, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, v35

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/jdom2/input/DOMBuilder;->buildTree(Lorg/w3c/dom/Node;Lorg/jdom2/Document;Lorg/jdom2/Element;Z)V

    .line 251
    add-int/lit8 v21, v21, 0x1

    goto :goto_12

    .line 257
    .end local v21    # "i":I
    .end local v26    # "nodes":Lorg/w3c/dom/NodeList;
    .end local v31    # "size":I
    :pswitch_32
    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v25

    .line 258
    .local v25, "nodeName":Ljava/lang/String;
    const-string v30, ""

    .line 259
    .local v30, "prefix":Ljava/lang/String;
    move-object/from16 v24, v25

    .line 260
    .local v24, "localName":Ljava/lang/String;
    const/16 v34, 0x3a

    move-object/from16 v0, v25

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v18

    .line 261
    .local v18, "colon":I
    if-ltz v18, :cond_5c

    .line 262
    const/16 v34, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v34

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v30

    .line 263
    add-int/lit8 v34, v18, 0x1

    move-object/from16 v0, v25

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v24

    .line 267
    :cond_5c
    const/16 v27, 0x0

    .line 268
    .local v27, "ns":Lorg/jdom2/Namespace;
    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v33

    .line 269
    .local v33, "uri":Ljava/lang/String;
    if-nez v33, :cond_e4

    .line 270
    if-nez p3, :cond_db

    sget-object v27, Lorg/jdom2/Namespace;->NO_NAMESPACE:Lorg/jdom2/Namespace;

    .line 277
    :goto_68
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jdom2/input/DOMBuilder;->factory:Lorg/jdom2/JDOMFactory;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    move-object/from16 v1, v24

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/jdom2/JDOMFactory;->element(Ljava/lang/String;Lorg/jdom2/Namespace;)Lorg/jdom2/Element;

    move-result-object v20

    .line 279
    .local v20, "element":Lorg/jdom2/Element;
    if-eqz p4, :cond_ee

    .line 281
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jdom2/input/DOMBuilder;->factory:Lorg/jdom2/JDOMFactory;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    move-object/from16 v1, p2

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2}, Lorg/jdom2/JDOMFactory;->setRoot(Lorg/jdom2/Document;Lorg/jdom2/Element;)V

    .line 288
    :goto_89
    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v12

    .line 289
    .local v12, "attributeList":Lorg/w3c/dom/NamedNodeMap;
    invoke-interface {v12}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v13

    .line 291
    .local v13, "attsize":I
    const/16 v21, 0x0

    .restart local v21    # "i":I
    :goto_93
    move/from16 v0, v21

    if-ge v0, v13, :cond_10e

    .line 292
    move/from16 v0, v21

    invoke-interface {v12, v0}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    check-cast v5, Lorg/w3c/dom/Attr;

    .line 294
    .local v5, "att":Lorg/w3c/dom/Attr;
    invoke-interface {v5}, Lorg/w3c/dom/Attr;->getName()Ljava/lang/String;

    move-result-object v10

    .line 295
    .local v10, "attname":Ljava/lang/String;
    const-string v34, "xmlns"

    move-object/from16 v0, v34

    invoke-virtual {v10, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v34

    if-eqz v34, :cond_d8

    .line 296
    const-string v8, ""

    .line 297
    .local v8, "attPrefix":Ljava/lang/String;
    const/16 v34, 0x3a

    move/from16 v0, v34

    invoke-virtual {v10, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v18

    .line 298
    if-ltz v18, :cond_c1

    .line 299
    add-int/lit8 v34, v18, 0x1

    move/from16 v0, v34

    invoke-virtual {v10, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 302
    :cond_c1
    invoke-interface {v5}, Lorg/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v14

    .line 304
    .local v14, "attvalue":Ljava/lang/String;
    invoke-static {v8, v14}, Lorg/jdom2/Namespace;->getNamespace(Ljava/lang/String;Ljava/lang/String;)Lorg/jdom2/Namespace;

    move-result-object v19

    .line 312
    .local v19, "declaredNS":Lorg/jdom2/Namespace;
    move-object/from16 v0, v30

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_fe

    .line 317
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/jdom2/Element;->setNamespace(Lorg/jdom2/Namespace;)Lorg/jdom2/Element;

    .line 291
    .end local v8    # "attPrefix":Ljava/lang/String;
    .end local v14    # "attvalue":Ljava/lang/String;
    .end local v19    # "declaredNS":Lorg/jdom2/Namespace;
    :cond_d8
    :goto_d8
    add-int/lit8 v21, v21, 0x1

    goto :goto_93

    .line 270
    .end local v5    # "att":Lorg/w3c/dom/Attr;
    .end local v10    # "attname":Ljava/lang/String;
    .end local v12    # "attributeList":Lorg/w3c/dom/NamedNodeMap;
    .end local v13    # "attsize":I
    .end local v20    # "element":Lorg/jdom2/Element;
    .end local v21    # "i":I
    :cond_db
    move-object/from16 v0, p3

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lorg/jdom2/Element;->getNamespace(Ljava/lang/String;)Lorg/jdom2/Namespace;

    move-result-object v27

    goto :goto_68

    .line 274
    :cond_e4
    move-object/from16 v0, v30

    move-object/from16 v1, v33

    invoke-static {v0, v1}, Lorg/jdom2/Namespace;->getNamespace(Ljava/lang/String;Ljava/lang/String;)Lorg/jdom2/Namespace;

    move-result-object v27

    goto/16 :goto_68

    .line 284
    .restart local v20    # "element":Lorg/jdom2/Element;
    :cond_ee
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jdom2/input/DOMBuilder;->factory:Lorg/jdom2/JDOMFactory;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    move-object/from16 v1, p3

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2}, Lorg/jdom2/JDOMFactory;->addContent(Lorg/jdom2/Parent;Lorg/jdom2/Content;)V

    goto :goto_89

    .line 320
    .restart local v5    # "att":Lorg/w3c/dom/Attr;
    .restart local v8    # "attPrefix":Ljava/lang/String;
    .restart local v10    # "attname":Ljava/lang/String;
    .restart local v12    # "attributeList":Lorg/w3c/dom/NamedNodeMap;
    .restart local v13    # "attsize":I
    .restart local v14    # "attvalue":Ljava/lang/String;
    .restart local v19    # "declaredNS":Lorg/jdom2/Namespace;
    .restart local v21    # "i":I
    :cond_fe
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jdom2/input/DOMBuilder;->factory:Lorg/jdom2/JDOMFactory;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    move-object/from16 v1, v20

    move-object/from16 v2, v19

    invoke-interface {v0, v1, v2}, Lorg/jdom2/JDOMFactory;->addNamespaceDeclaration(Lorg/jdom2/Element;Lorg/jdom2/Namespace;)V

    goto :goto_d8

    .line 326
    .end local v5    # "att":Lorg/w3c/dom/Attr;
    .end local v8    # "attPrefix":Ljava/lang/String;
    .end local v10    # "attname":Ljava/lang/String;
    .end local v14    # "attvalue":Ljava/lang/String;
    .end local v19    # "declaredNS":Lorg/jdom2/Namespace;
    :cond_10e
    const/16 v21, 0x0

    :goto_110
    move/from16 v0, v21

    if-ge v0, v13, :cond_20f

    .line 327
    move/from16 v0, v21

    invoke-interface {v12, v0}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    check-cast v5, Lorg/w3c/dom/Attr;

    .line 329
    .restart local v5    # "att":Lorg/w3c/dom/Attr;
    invoke-interface {v5}, Lorg/w3c/dom/Attr;->getName()Ljava/lang/String;

    move-result-object v10

    .line 331
    .restart local v10    # "attname":Ljava/lang/String;
    const-string v34, "xmlns"

    move-object/from16 v0, v34

    invoke-virtual {v10, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v34

    if-nez v34, :cond_179

    .line 332
    const-string v8, ""

    .line 333
    .restart local v8    # "attPrefix":Ljava/lang/String;
    move-object v6, v10

    .line 334
    .local v6, "attLocalName":Ljava/lang/String;
    const/16 v34, 0x3a

    move/from16 v0, v34

    invoke-virtual {v10, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v18

    .line 335
    if-ltz v18, :cond_149

    .line 336
    const/16 v34, 0x0

    move/from16 v0, v34

    move/from16 v1, v18

    invoke-virtual {v10, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 337
    add-int/lit8 v34, v18, 0x1

    move/from16 v0, v34

    invoke-virtual {v10, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 340
    :cond_149
    invoke-interface {v5}, Lorg/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v14

    .line 343
    .restart local v14    # "attvalue":Ljava/lang/String;
    const/4 v7, 0x0

    .line 344
    .local v7, "attNS":Lorg/jdom2/Namespace;
    invoke-interface {v5}, Lorg/w3c/dom/Attr;->getNamespaceURI()Ljava/lang/String;

    move-result-object v9

    .line 345
    .local v9, "attURI":Ljava/lang/String;
    if-eqz v9, :cond_15e

    const-string v34, ""

    move-object/from16 v0, v34

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_17c

    .line 346
    :cond_15e
    sget-object v7, Lorg/jdom2/Namespace;->NO_NAMESPACE:Lorg/jdom2/Namespace;

    .line 402
    :cond_160
    :goto_160
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jdom2/input/DOMBuilder;->factory:Lorg/jdom2/JDOMFactory;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    invoke-interface {v0, v6, v14, v7}, Lorg/jdom2/JDOMFactory;->attribute(Ljava/lang/String;Ljava/lang/String;Lorg/jdom2/Namespace;)Lorg/jdom2/Attribute;

    move-result-object v11

    .line 404
    .local v11, "attribute":Lorg/jdom2/Attribute;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jdom2/input/DOMBuilder;->factory:Lorg/jdom2/JDOMFactory;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    move-object/from16 v1, v20

    invoke-interface {v0, v1, v11}, Lorg/jdom2/JDOMFactory;->setAttribute(Lorg/jdom2/Element;Lorg/jdom2/Attribute;)V

    .line 326
    .end local v6    # "attLocalName":Ljava/lang/String;
    .end local v7    # "attNS":Lorg/jdom2/Namespace;
    .end local v8    # "attPrefix":Ljava/lang/String;
    .end local v9    # "attURI":Ljava/lang/String;
    .end local v11    # "attribute":Lorg/jdom2/Attribute;
    .end local v14    # "attvalue":Ljava/lang/String;
    :cond_179
    add-int/lit8 v21, v21, 0x1

    goto :goto_110

    .line 357
    .restart local v6    # "attLocalName":Ljava/lang/String;
    .restart local v7    # "attNS":Lorg/jdom2/Namespace;
    .restart local v8    # "attPrefix":Ljava/lang/String;
    .restart local v9    # "attURI":Ljava/lang/String;
    .restart local v14    # "attvalue":Ljava/lang/String;
    :cond_17c
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v34

    if-lez v34, :cond_187

    .line 364
    invoke-static {v8, v9}, Lorg/jdom2/Namespace;->getNamespace(Ljava/lang/String;Ljava/lang/String;)Lorg/jdom2/Namespace;

    move-result-object v7

    goto :goto_160

    .line 370
    :cond_187
    new-instance v32, Ljava/util/HashMap;

    invoke-direct/range {v32 .. v32}, Ljava/util/HashMap;-><init>()V

    .line 371
    .local v32, "tmpmap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lorg/jdom2/Namespace;>;"
    invoke-virtual/range {v20 .. v20}, Lorg/jdom2/Element;->getNamespacesInScope()Ljava/util/List;

    move-result-object v34

    invoke-interface/range {v34 .. v34}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v22

    .local v22, "i$":Ljava/util/Iterator;
    :goto_194
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v34

    if-eqz v34, :cond_1b8

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lorg/jdom2/Namespace;

    .line 372
    .local v28, "nss":Lorg/jdom2/Namespace;
    invoke-virtual/range {v28 .. v28}, Lorg/jdom2/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/String;->length()I

    move-result v34

    if-lez v34, :cond_1f9

    invoke-virtual/range {v28 .. v28}, Lorg/jdom2/Namespace;->getURI()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_1f9

    .line 373
    move-object/from16 v7, v28

    .line 378
    .end local v28    # "nss":Lorg/jdom2/Namespace;
    :cond_1b8
    if-nez v7, :cond_160

    .line 390
    const/16 v17, 0x0

    .line 391
    .local v17, "cnt":I
    const-string v15, "attns"

    .line 392
    .local v15, "base":Ljava/lang/String;
    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v34

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    .line 393
    .local v29, "pfx":Ljava/lang/String;
    :goto_1d5
    move-object/from16 v0, v32

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_207

    .line 394
    add-int/lit8 v17, v17, 0x1

    .line 395
    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v34

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    goto :goto_1d5

    .line 376
    .end local v15    # "base":Ljava/lang/String;
    .end local v17    # "cnt":I
    .end local v29    # "pfx":Ljava/lang/String;
    .restart local v28    # "nss":Lorg/jdom2/Namespace;
    :cond_1f9
    invoke-virtual/range {v28 .. v28}, Lorg/jdom2/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v32

    move-object/from16 v1, v34

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_194

    .line 397
    .end local v28    # "nss":Lorg/jdom2/Namespace;
    .restart local v15    # "base":Ljava/lang/String;
    .restart local v17    # "cnt":I
    .restart local v29    # "pfx":Ljava/lang/String;
    :cond_207
    move-object/from16 v0, v29

    invoke-static {v0, v9}, Lorg/jdom2/Namespace;->getNamespace(Ljava/lang/String;Ljava/lang/String;)Lorg/jdom2/Namespace;

    move-result-object v7

    goto/16 :goto_160

    .line 411
    .end local v5    # "att":Lorg/w3c/dom/Attr;
    .end local v6    # "attLocalName":Ljava/lang/String;
    .end local v7    # "attNS":Lorg/jdom2/Namespace;
    .end local v8    # "attPrefix":Ljava/lang/String;
    .end local v9    # "attURI":Ljava/lang/String;
    .end local v10    # "attname":Ljava/lang/String;
    .end local v14    # "attvalue":Ljava/lang/String;
    .end local v15    # "base":Ljava/lang/String;
    .end local v17    # "cnt":I
    .end local v22    # "i$":Ljava/util/Iterator;
    .end local v29    # "pfx":Ljava/lang/String;
    .end local v32    # "tmpmap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lorg/jdom2/Namespace;>;"
    :cond_20f
    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v16

    .line 412
    .local v16, "children":Lorg/w3c/dom/NodeList;
    if-eqz v16, :cond_7

    .line 413
    invoke-interface/range {v16 .. v16}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v31

    .line 414
    .restart local v31    # "size":I
    const/16 v21, 0x0

    :goto_21b
    move/from16 v0, v21

    move/from16 v1, v31

    if-ge v0, v1, :cond_7

    .line 415
    move-object/from16 v0, v16

    move/from16 v1, v21

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v23

    .line 416
    .local v23, "item":Lorg/w3c/dom/Node;
    if-eqz v23, :cond_23a

    .line 417
    const/16 v34, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, p2

    move-object/from16 v3, v20

    move/from16 v4, v34

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/jdom2/input/DOMBuilder;->buildTree(Lorg/w3c/dom/Node;Lorg/jdom2/Document;Lorg/jdom2/Element;Z)V

    .line 414
    :cond_23a
    add-int/lit8 v21, v21, 0x1

    goto :goto_21b

    .line 424
    .end local v12    # "attributeList":Lorg/w3c/dom/NamedNodeMap;
    .end local v13    # "attsize":I
    .end local v16    # "children":Lorg/w3c/dom/NodeList;
    .end local v18    # "colon":I
    .end local v20    # "element":Lorg/jdom2/Element;
    .end local v21    # "i":I
    .end local v23    # "item":Lorg/w3c/dom/Node;
    .end local v24    # "localName":Ljava/lang/String;
    .end local v25    # "nodeName":Ljava/lang/String;
    .end local v27    # "ns":Lorg/jdom2/Namespace;
    .end local v30    # "prefix":Ljava/lang/String;
    .end local v31    # "size":I
    .end local v33    # "uri":Ljava/lang/String;
    :pswitch_23d
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jdom2/input/DOMBuilder;->factory:Lorg/jdom2/JDOMFactory;

    move-object/from16 v34, v0

    check-cast p1, Lorg/w3c/dom/Text;

    .end local p1    # "node":Lorg/w3c/dom/Node;
    invoke-virtual/range {p0 .. p1}, Lorg/jdom2/input/DOMBuilder;->build(Lorg/w3c/dom/Text;)Lorg/jdom2/Text;

    move-result-object v35

    move-object/from16 v0, v34

    move-object/from16 v1, p3

    move-object/from16 v2, v35

    invoke-interface {v0, v1, v2}, Lorg/jdom2/JDOMFactory;->addContent(Lorg/jdom2/Parent;Lorg/jdom2/Content;)V

    goto/16 :goto_7

    .line 428
    .restart local p1    # "node":Lorg/w3c/dom/Node;
    :pswitch_254
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jdom2/input/DOMBuilder;->factory:Lorg/jdom2/JDOMFactory;

    move-object/from16 v34, v0

    check-cast p1, Lorg/w3c/dom/CDATASection;

    .end local p1    # "node":Lorg/w3c/dom/Node;
    invoke-virtual/range {p0 .. p1}, Lorg/jdom2/input/DOMBuilder;->build(Lorg/w3c/dom/CDATASection;)Lorg/jdom2/CDATA;

    move-result-object v35

    move-object/from16 v0, v34

    move-object/from16 v1, p3

    move-object/from16 v2, v35

    invoke-interface {v0, v1, v2}, Lorg/jdom2/JDOMFactory;->addContent(Lorg/jdom2/Parent;Lorg/jdom2/Content;)V

    goto/16 :goto_7

    .line 433
    .restart local p1    # "node":Lorg/w3c/dom/Node;
    :pswitch_26b
    if-eqz p4, :cond_284

    .line 434
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jdom2/input/DOMBuilder;->factory:Lorg/jdom2/JDOMFactory;

    move-object/from16 v34, v0

    check-cast p1, Lorg/w3c/dom/ProcessingInstruction;

    .end local p1    # "node":Lorg/w3c/dom/Node;
    invoke-virtual/range {p0 .. p1}, Lorg/jdom2/input/DOMBuilder;->build(Lorg/w3c/dom/ProcessingInstruction;)Lorg/jdom2/ProcessingInstruction;

    move-result-object v35

    move-object/from16 v0, v34

    move-object/from16 v1, p2

    move-object/from16 v2, v35

    invoke-interface {v0, v1, v2}, Lorg/jdom2/JDOMFactory;->addContent(Lorg/jdom2/Parent;Lorg/jdom2/Content;)V

    goto/16 :goto_7

    .line 436
    .restart local p1    # "node":Lorg/w3c/dom/Node;
    :cond_284
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jdom2/input/DOMBuilder;->factory:Lorg/jdom2/JDOMFactory;

    move-object/from16 v34, v0

    check-cast p1, Lorg/w3c/dom/ProcessingInstruction;

    .end local p1    # "node":Lorg/w3c/dom/Node;
    invoke-virtual/range {p0 .. p1}, Lorg/jdom2/input/DOMBuilder;->build(Lorg/w3c/dom/ProcessingInstruction;)Lorg/jdom2/ProcessingInstruction;

    move-result-object v35

    move-object/from16 v0, v34

    move-object/from16 v1, p3

    move-object/from16 v2, v35

    invoke-interface {v0, v1, v2}, Lorg/jdom2/JDOMFactory;->addContent(Lorg/jdom2/Parent;Lorg/jdom2/Content;)V

    goto/16 :goto_7

    .line 441
    .restart local p1    # "node":Lorg/w3c/dom/Node;
    :pswitch_29b
    if-eqz p4, :cond_2b4

    .line 442
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jdom2/input/DOMBuilder;->factory:Lorg/jdom2/JDOMFactory;

    move-object/from16 v34, v0

    check-cast p1, Lorg/w3c/dom/Comment;

    .end local p1    # "node":Lorg/w3c/dom/Node;
    invoke-virtual/range {p0 .. p1}, Lorg/jdom2/input/DOMBuilder;->build(Lorg/w3c/dom/Comment;)Lorg/jdom2/Comment;

    move-result-object v35

    move-object/from16 v0, v34

    move-object/from16 v1, p2

    move-object/from16 v2, v35

    invoke-interface {v0, v1, v2}, Lorg/jdom2/JDOMFactory;->addContent(Lorg/jdom2/Parent;Lorg/jdom2/Content;)V

    goto/16 :goto_7

    .line 444
    .restart local p1    # "node":Lorg/w3c/dom/Node;
    :cond_2b4
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jdom2/input/DOMBuilder;->factory:Lorg/jdom2/JDOMFactory;

    move-object/from16 v34, v0

    check-cast p1, Lorg/w3c/dom/Comment;

    .end local p1    # "node":Lorg/w3c/dom/Node;
    invoke-virtual/range {p0 .. p1}, Lorg/jdom2/input/DOMBuilder;->build(Lorg/w3c/dom/Comment;)Lorg/jdom2/Comment;

    move-result-object v35

    move-object/from16 v0, v34

    move-object/from16 v1, p3

    move-object/from16 v2, v35

    invoke-interface {v0, v1, v2}, Lorg/jdom2/JDOMFactory;->addContent(Lorg/jdom2/Parent;Lorg/jdom2/Content;)V

    goto/16 :goto_7

    .line 449
    .restart local p1    # "node":Lorg/w3c/dom/Node;
    :pswitch_2cb
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jdom2/input/DOMBuilder;->factory:Lorg/jdom2/JDOMFactory;

    move-object/from16 v34, v0

    check-cast p1, Lorg/w3c/dom/EntityReference;

    .end local p1    # "node":Lorg/w3c/dom/Node;
    invoke-virtual/range {p0 .. p1}, Lorg/jdom2/input/DOMBuilder;->build(Lorg/w3c/dom/EntityReference;)Lorg/jdom2/EntityRef;

    move-result-object v35

    move-object/from16 v0, v34

    move-object/from16 v1, p3

    move-object/from16 v2, v35

    invoke-interface {v0, v1, v2}, Lorg/jdom2/JDOMFactory;->addContent(Lorg/jdom2/Parent;Lorg/jdom2/Content;)V

    goto/16 :goto_7

    .line 458
    .restart local p1    # "node":Lorg/w3c/dom/Node;
    :pswitch_2e2
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jdom2/input/DOMBuilder;->factory:Lorg/jdom2/JDOMFactory;

    move-object/from16 v34, v0

    check-cast p1, Lorg/w3c/dom/DocumentType;

    .end local p1    # "node":Lorg/w3c/dom/Node;
    invoke-virtual/range {p0 .. p1}, Lorg/jdom2/input/DOMBuilder;->build(Lorg/w3c/dom/DocumentType;)Lorg/jdom2/DocType;

    move-result-object v35

    move-object/from16 v0, v34

    move-object/from16 v1, p2

    move-object/from16 v2, v35

    invoke-interface {v0, v1, v2}, Lorg/jdom2/JDOMFactory;->addContent(Lorg/jdom2/Parent;Lorg/jdom2/Content;)V

    goto/16 :goto_7

    .line 248
    nop

    :pswitch_data_2fa
    .packed-switch 0x1
        :pswitch_32
        :pswitch_7
        :pswitch_23d
        :pswitch_254
        :pswitch_2cb
        :pswitch_7
        :pswitch_26b
        :pswitch_29b
        :pswitch_8
        :pswitch_2e2
    .end packed-switch
.end method


# virtual methods
.method public build(Lorg/w3c/dom/CDATASection;)Lorg/jdom2/CDATA;
    .registers 4
    .param p1, "cdata"    # Lorg/w3c/dom/CDATASection;

    .prologue
    .line 165
    iget-object v0, p0, Lorg/jdom2/input/DOMBuilder;->factory:Lorg/jdom2/JDOMFactory;

    invoke-interface {p1}, Lorg/w3c/dom/CDATASection;->getTextContent()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/jdom2/JDOMFactory;->cdata(Ljava/lang/String;)Lorg/jdom2/CDATA;

    move-result-object v0

    return-object v0
.end method

.method public build(Lorg/w3c/dom/Comment;)Lorg/jdom2/Comment;
    .registers 4
    .param p1, "comment"    # Lorg/w3c/dom/Comment;

    .prologue
    .line 187
    iget-object v0, p0, Lorg/jdom2/input/DOMBuilder;->factory:Lorg/jdom2/JDOMFactory;

    invoke-interface {p1}, Lorg/w3c/dom/Comment;->getTextContent()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/jdom2/JDOMFactory;->comment(Ljava/lang/String;)Lorg/jdom2/Comment;

    move-result-object v0

    return-object v0
.end method

.method public build(Lorg/w3c/dom/DocumentType;)Lorg/jdom2/DocType;
    .registers 8
    .param p1, "doctype"    # Lorg/w3c/dom/DocumentType;

    .prologue
    .line 220
    invoke-interface {p1}, Lorg/w3c/dom/DocumentType;->getPublicId()Ljava/lang/String;

    move-result-object v2

    .line 221
    .local v2, "publicID":Ljava/lang/String;
    invoke-interface {p1}, Lorg/w3c/dom/DocumentType;->getSystemId()Ljava/lang/String;

    move-result-object v3

    .line 222
    .local v3, "systemID":Ljava/lang/String;
    invoke-interface {p1}, Lorg/w3c/dom/DocumentType;->getInternalSubset()Ljava/lang/String;

    move-result-object v1

    .line 224
    .local v1, "internalDTD":Ljava/lang/String;
    iget-object v4, p0, Lorg/jdom2/input/DOMBuilder;->factory:Lorg/jdom2/JDOMFactory;

    invoke-interface {p1}, Lorg/w3c/dom/DocumentType;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/jdom2/JDOMFactory;->docType(Ljava/lang/String;)Lorg/jdom2/DocType;

    move-result-object v0

    .line 225
    .local v0, "docType":Lorg/jdom2/DocType;
    invoke-virtual {v0, v2}, Lorg/jdom2/DocType;->setPublicID(Ljava/lang/String;)Lorg/jdom2/DocType;

    .line 226
    invoke-virtual {v0, v3}, Lorg/jdom2/DocType;->setSystemID(Ljava/lang/String;)Lorg/jdom2/DocType;

    .line 227
    invoke-virtual {v0, v1}, Lorg/jdom2/DocType;->setInternalSubset(Ljava/lang/String;)V

    .line 228
    return-object v0
.end method

.method public build(Lorg/w3c/dom/Document;)Lorg/jdom2/Document;
    .registers 5
    .param p1, "domDocument"    # Lorg/w3c/dom/Document;

    .prologue
    const/4 v2, 0x0

    .line 140
    iget-object v1, p0, Lorg/jdom2/input/DOMBuilder;->factory:Lorg/jdom2/JDOMFactory;

    invoke-interface {v1, v2}, Lorg/jdom2/JDOMFactory;->document(Lorg/jdom2/Element;)Lorg/jdom2/Document;

    move-result-object v0

    .line 141
    .local v0, "doc":Lorg/jdom2/Document;
    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v2, v1}, Lorg/jdom2/input/DOMBuilder;->buildTree(Lorg/w3c/dom/Node;Lorg/jdom2/Document;Lorg/jdom2/Element;Z)V

    .line 142
    return-object v0
.end method

.method public build(Lorg/w3c/dom/Element;)Lorg/jdom2/Element;
    .registers 5
    .param p1, "domElement"    # Lorg/w3c/dom/Element;

    .prologue
    const/4 v2, 0x0

    .line 152
    iget-object v1, p0, Lorg/jdom2/input/DOMBuilder;->factory:Lorg/jdom2/JDOMFactory;

    invoke-interface {v1, v2}, Lorg/jdom2/JDOMFactory;->document(Lorg/jdom2/Element;)Lorg/jdom2/Document;

    move-result-object v0

    .line 153
    .local v0, "doc":Lorg/jdom2/Document;
    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v2, v1}, Lorg/jdom2/input/DOMBuilder;->buildTree(Lorg/w3c/dom/Node;Lorg/jdom2/Document;Lorg/jdom2/Element;Z)V

    .line 154
    invoke-virtual {v0}, Lorg/jdom2/Document;->getRootElement()Lorg/jdom2/Element;

    move-result-object v1

    return-object v1
.end method

.method public build(Lorg/w3c/dom/EntityReference;)Lorg/jdom2/EntityRef;
    .registers 4
    .param p1, "er"    # Lorg/w3c/dom/EntityReference;

    .prologue
    .line 209
    iget-object v0, p0, Lorg/jdom2/input/DOMBuilder;->factory:Lorg/jdom2/JDOMFactory;

    invoke-interface {p1}, Lorg/w3c/dom/EntityReference;->getNodeName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/jdom2/JDOMFactory;->entityRef(Ljava/lang/String;)Lorg/jdom2/EntityRef;

    move-result-object v0

    return-object v0
.end method

.method public build(Lorg/w3c/dom/ProcessingInstruction;)Lorg/jdom2/ProcessingInstruction;
    .registers 5
    .param p1, "pi"    # Lorg/w3c/dom/ProcessingInstruction;

    .prologue
    .line 198
    iget-object v0, p0, Lorg/jdom2/input/DOMBuilder;->factory:Lorg/jdom2/JDOMFactory;

    invoke-interface {p1}, Lorg/w3c/dom/ProcessingInstruction;->getTarget()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lorg/w3c/dom/ProcessingInstruction;->getData()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/jdom2/JDOMFactory;->processingInstruction(Ljava/lang/String;Ljava/lang/String;)Lorg/jdom2/ProcessingInstruction;

    move-result-object v0

    return-object v0
.end method

.method public build(Lorg/w3c/dom/Text;)Lorg/jdom2/Text;
    .registers 4
    .param p1, "text"    # Lorg/w3c/dom/Text;

    .prologue
    .line 176
    iget-object v0, p0, Lorg/jdom2/input/DOMBuilder;->factory:Lorg/jdom2/JDOMFactory;

    invoke-interface {p1}, Lorg/w3c/dom/Text;->getTextContent()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/jdom2/JDOMFactory;->text(Ljava/lang/String;)Lorg/jdom2/Text;

    move-result-object v0

    return-object v0
.end method

.method public getFactory()Lorg/jdom2/JDOMFactory;
    .registers 2

    .prologue
    .line 130
    iget-object v0, p0, Lorg/jdom2/input/DOMBuilder;->factory:Lorg/jdom2/JDOMFactory;

    return-object v0
.end method

.method public setFactory(Lorg/jdom2/JDOMFactory;)V
    .registers 2
    .param p1, "factory"    # Lorg/jdom2/JDOMFactory;

    .prologue
    .line 122
    iput-object p1, p0, Lorg/jdom2/input/DOMBuilder;->factory:Lorg/jdom2/JDOMFactory;

    .line 123
    return-void
.end method
