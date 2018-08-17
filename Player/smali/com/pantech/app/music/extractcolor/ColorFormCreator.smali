.class public interface abstract Lcom/pantech/app/music/extractcolor/ColorFormCreator;
.super Ljava/lang/Object;
.source "ColorFormCreator.java"


# static fields
.field public static final EXTRACT_TYPE_ALBUMART:I = 0x0

.field public static final EXTRACT_TYPE_GENRE:I = 0x1

.field public static final EXTRACT_TYPE_L_API:I = 0x2


# virtual methods
.method public abstract createColorForm()Lcom/pantech/app/music/extractcolor/ColorForm;
.end method

.method public abstract createColorForm(ILandroid/content/Context;Ljava/lang/Object;)Lcom/pantech/app/music/extractcolor/ColorForm;
.end method

.method public abstract getColor()I
.end method

.method public abstract initColorForm(ILandroid/content/Context;Ljava/lang/Object;)V
.end method
