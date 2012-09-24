.class public Lcom/android/settings/fuelgauge/BatteryIndicatorStyle;
.super Landroid/app/Activity;
.source "BatteryIndicatorStyle.java"


# instance fields
.field private fx:[Ljava/lang/CharSequence;

.field private fy:[Ljava/lang/CharSequence;

.field private mResolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/android/settings/fuelgauge/BatteryIndicatorStyle;)[Ljava/lang/CharSequence;
    .locals 1
    .parameter

    .prologue
    .line 15
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryIndicatorStyle;->fy:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic b(Lcom/android/settings/fuelgauge/BatteryIndicatorStyle;)Landroid/content/ContentResolver;
    .locals 1
    .parameter

    .prologue
    .line 15
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryIndicatorStyle;->mResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method private dW()V
    .locals 4

    .prologue
    .line 33
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 34
    const v1, 0x7f0b0645

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 35
    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryIndicatorStyle;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "battery_indicator_style"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 37
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings/fuelgauge/BatteryIndicatorStyle;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    .line 38
    iget-object v2, p0, Lcom/android/settings/fuelgauge/BatteryIndicatorStyle;->fx:[Ljava/lang/CharSequence;

    new-instance v3, Lcom/android/settings/fuelgauge/BatteryIndicatorStyle$1;

    invoke-direct {v3, p0}, Lcom/android/settings/fuelgauge/BatteryIndicatorStyle$1;-><init>(Lcom/android/settings/fuelgauge/BatteryIndicatorStyle;)V

    invoke-virtual {v0, v2, v1, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 50
    const/high16 v1, 0x104

    new-instance v2, Lcom/android/settings/fuelgauge/BatteryIndicatorStyle$2;

    invoke-direct {v2, p0}, Lcom/android/settings/fuelgauge/BatteryIndicatorStyle$2;-><init>(Lcom/android/settings/fuelgauge/BatteryIndicatorStyle;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 57
    new-instance v1, Lcom/android/settings/fuelgauge/BatteryIndicatorStyle$3;

    invoke-direct {v1, p0}, Lcom/android/settings/fuelgauge/BatteryIndicatorStyle$3;-><init>(Lcom/android/settings/fuelgauge/BatteryIndicatorStyle;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 65
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 67
    return-void
.end method


# virtual methods
.method public findIndexOfValue(Ljava/lang/String;)I
    .locals 2
    .parameter

    .prologue
    .line 70
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryIndicatorStyle;->fy:[Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    .line 71
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryIndicatorStyle;->fy:[Ljava/lang/CharSequence;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 72
    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryIndicatorStyle;->fy:[Ljava/lang/CharSequence;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 77
    :goto_1
    return v0

    .line 71
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 77
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 23
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 24
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/fuelgauge/BatteryIndicatorStyle;->requestWindowFeature(I)Z

    .line 25
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/BatteryIndicatorStyle;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 26
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/BatteryIndicatorStyle;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070045

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryIndicatorStyle;->fx:[Ljava/lang/CharSequence;

    .line 27
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/BatteryIndicatorStyle;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070046

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryIndicatorStyle;->fy:[Ljava/lang/CharSequence;

    .line 28
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/BatteryIndicatorStyle;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryIndicatorStyle;->mResolver:Landroid/content/ContentResolver;

    .line 29
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/BatteryIndicatorStyle;->dW()V

    .line 30
    return-void
.end method
