.class Lcom/android/settings/F;
.super Landroid/preference/Preference;
.source "MiuiAccessibilitySettings.java"


# instance fields
.field final synthetic dM:Lcom/android/settings/MiuiAccessibilitySettings;


# direct methods
.method constructor <init>(Lcom/android/settings/MiuiAccessibilitySettings;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 375
    iput-object p1, p0, Lcom/android/settings/F;->dM:Lcom/android/settings/MiuiAccessibilitySettings;

    invoke-direct {p0, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 378
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 380
    const v0, 0x7f08013a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 382
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 384
    const v0, 0x7f0800bd

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 385
    iget-object v1, p0, Lcom/android/settings/F;->dM:Lcom/android/settings/MiuiAccessibilitySettings;

    const v2, 0x7f0b045d

    invoke-virtual {v1, v2}, Lcom/android/settings/MiuiAccessibilitySettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 386
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 387
    return-void
.end method
