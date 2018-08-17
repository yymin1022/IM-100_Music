.class public interface abstract Lcom/pantech/app/music/list/adapter/helper/Indexbar$IndexScrollType;
.super Ljava/lang/Object;
.source "Indexbar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/music/list/adapter/helper/Indexbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IndexScrollType"
.end annotation


# static fields
.field public static final SCROLLER_TYPE_FASTSCROLL:I = 0x1

.field public static final SCROLLER_TYPE_INDEX:I = 0x2

.field public static final SCROLLER_TYPE_NONE:I


# virtual methods
.method public abstract getScrollerType()I
.end method

.method public abstract setScrollerType(IZ)V
.end method
