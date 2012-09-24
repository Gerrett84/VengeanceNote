.class Lcom/android/settings/dt;
.super Lcom/android/settings/y;
.source "AccessibilityTutorialActivity.java"


# instance fields
.field final synthetic If:Lcom/android/settings/bu;


# direct methods
.method constructor <init>(Lcom/android/settings/bu;Landroid/content/Context;II)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 428
    iput-object p1, p0, Lcom/android/settings/dt;->If:Lcom/android/settings/bu;

    invoke-direct {p0, p2, p3, p4}, Lcom/android/settings/y;-><init>(Landroid/content/Context;II)V

    return-void
.end method


# virtual methods
.method protected a(Landroid/widget/TextView;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 431
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 432
    invoke-virtual {p1, p3, v0, v0, v0}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 433
    return-void
.end method
