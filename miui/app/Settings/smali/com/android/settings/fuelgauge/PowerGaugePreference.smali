.class public Lcom/android/settings/fuelgauge/PowerGaugePreference;
.super Landroid/preference/Preference;
.source "PowerGaugePreference.java"


# instance fields
.field private Bm:Lcom/android/settings/fuelgauge/BatterySipper;

.field private Bn:Ljava/lang/CharSequence;

.field private mProgress:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Lcom/android/settings/fuelgauge/BatterySipper;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 38
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 39
    const v0, 0x7f040006

    invoke-virtual {p0, v0}, Lcom/android/settings/fuelgauge/PowerGaugePreference;->setLayoutResource(I)V

    .line 40
    invoke-virtual {p0, p2}, Lcom/android/settings/fuelgauge/PowerGaugePreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 41
    iput-object p3, p0, Lcom/android/settings/fuelgauge/PowerGaugePreference;->Bm:Lcom/android/settings/fuelgauge/BatterySipper;

    .line 42
    return-void
.end method


# virtual methods
.method public a(DD)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 45
    invoke-static {p1, p2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lcom/android/settings/fuelgauge/PowerGaugePreference;->mProgress:I

    .line 46
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerGaugePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0646

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p3, p4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerGaugePreference;->Bn:Ljava/lang/CharSequence;

    .line 48
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerGaugePreference;->notifyChanged()V

    .line 49
    return-void
.end method

.method hW()Lcom/android/settings/fuelgauge/BatterySipper;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerGaugePreference;->Bm:Lcom/android/settings/fuelgauge/BatterySipper;

    return-object v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 57
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 59
    const v0, 0x102000d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    .line 60
    iget v1, p0, Lcom/android/settings/fuelgauge/PowerGaugePreference;->mProgress:I

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 62
    const v0, 0x1020014

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 63
    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerGaugePreference;->Bn:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    return-void
.end method
