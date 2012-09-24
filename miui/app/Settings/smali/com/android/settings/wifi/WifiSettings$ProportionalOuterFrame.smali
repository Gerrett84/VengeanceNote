.class public Lcom/android/settings/wifi/WifiSettings$ProportionalOuterFrame;
.super Landroid/widget/RelativeLayout;
.source "WifiSettings.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 994
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 995
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 997
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 998
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1000
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 1001
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x1

    .line 1008
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 1009
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 1010
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings$ProportionalOuterFrame;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 1011
    const v3, 0x7f0d0010

    invoke-virtual {v2, v3, v5, v5}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v3

    .line 1012
    const v4, 0x7f0d0011

    invoke-virtual {v2, v4, v5, v5}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v4

    .line 1013
    const v5, 0x7f0d0012

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 1014
    int-to-float v5, v0

    mul-float/2addr v5, v4

    float-to-int v5, v5

    const/4 v6, 0x0

    int-to-float v0, v0

    mul-float/2addr v0, v4

    float-to-int v0, v0

    invoke-virtual {p0, v5, v6, v0, v2}, Lcom/android/settings/wifi/WifiSettings$ProportionalOuterFrame;->setPadding(IIII)V

    .line 1019
    const v0, 0x7f08013b

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettings$ProportionalOuterFrame;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1020
    if-eqz v0, :cond_0

    .line 1021
    int-to-float v1, v1

    mul-float/2addr v1, v3

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setMinimumHeight(I)V

    .line 1023
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    .line 1024
    return-void
.end method
