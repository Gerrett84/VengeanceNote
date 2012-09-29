.class public Lcom/android/settings/fuelgauge/PowerModeSettings;
.super Landroid/app/Activity;
.source "PowerModeSettings.java"


# instance fields
.field private gu:[Ljava/lang/CharSequence;

.field private gv:[Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/android/settings/fuelgauge/PowerModeSettings;)[Ljava/lang/CharSequence;
    .locals 1
    .parameter

    .prologue
    .line 13
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerModeSettings;->gv:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method private ef()V
    .locals 4

    .prologue
    .line 30
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 31
    const v1, 0x7f0b0774

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 32
    const-string v1, "persist.sys.aries.power_profile"

    iget-object v2, p0, Lcom/android/settings/fuelgauge/PowerModeSettings;->gu:[Ljava/lang/CharSequence;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 33
    invoke-virtual {p0, v1}, Lcom/android/settings/fuelgauge/PowerModeSettings;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    .line 34
    iget-object v2, p0, Lcom/android/settings/fuelgauge/PowerModeSettings;->gu:[Ljava/lang/CharSequence;

    new-instance v3, Lcom/android/settings/fuelgauge/PowerModeSettings$1;

    invoke-direct {v3, p0}, Lcom/android/settings/fuelgauge/PowerModeSettings$1;-><init>(Lcom/android/settings/fuelgauge/PowerModeSettings;)V

    invoke-virtual {v0, v2, v1, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 44
    const/high16 v1, 0x104

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 46
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    .line 47
    new-instance v1, Lcom/android/settings/fuelgauge/PowerModeSettings$2;

    invoke-direct {v1, p0}, Lcom/android/settings/fuelgauge/PowerModeSettings$2;-><init>(Lcom/android/settings/fuelgauge/PowerModeSettings;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 53
    return-void
.end method


# virtual methods
.method public findIndexOfValue(Ljava/lang/String;)I
    .locals 2
    .parameter

    .prologue
    .line 56
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerModeSettings;->gv:[Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    .line 57
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerModeSettings;->gv:[Ljava/lang/CharSequence;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 58
    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerModeSettings;->gv:[Ljava/lang/CharSequence;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 63
    :goto_1
    return v0

    .line 57
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 63
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 21
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 22
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/fuelgauge/PowerModeSettings;->requestWindowFeature(I)Z

    .line 23
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerModeSettings;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 24
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerModeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07005d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerModeSettings;->gu:[Ljava/lang/CharSequence;

    .line 25
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerModeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07005e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerModeSettings;->gv:[Ljava/lang/CharSequence;

    .line 26
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/PowerModeSettings;->ef()V

    .line 27
    return-void
.end method
