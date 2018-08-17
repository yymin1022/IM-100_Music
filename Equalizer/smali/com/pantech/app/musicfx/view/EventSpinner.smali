.class public Lcom/pantech/app/musicfx/view/EventSpinner;
.super Landroid/widget/Spinner;
.source "EventSpinner.java"


# instance fields
.field private onItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 16
    invoke-direct {p0, p1}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;)V

    .line 17
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 28
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    return-void
.end method


# virtual methods
.method public setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V
    .registers 2
    .param p1, "onItemSelectedListener"    # Landroid/widget/AdapterView$OnItemSelectedListener;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/pantech/app/musicfx/view/EventSpinner;->onItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 36
    return-void
.end method

.method public setSelection(I)V
    .registers 8
    .param p1, "position"    # I

    .prologue
    .line 43
    const-string v0, "EventSpinner setSelection"

    invoke-static {v0}, Lcom/pantech/app/musicfx/utils/MLog;->i(Ljava/lang/String;)V

    .line 45
    iget-object v0, p0, Lcom/pantech/app/musicfx/view/EventSpinner;->onItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    if-eqz v0, :cond_16

    .line 47
    iget-object v0, p0, Lcom/pantech/app/musicfx/view/EventSpinner;->onItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    const/4 v1, 0x0

    invoke-virtual {p0, p1}, Lcom/pantech/app/musicfx/view/EventSpinner;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const-wide/16 v4, 0x0

    move v3, p1

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemSelectedListener;->onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 50
    :cond_16
    invoke-super {p0, p1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 51
    return-void
.end method
