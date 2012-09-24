.class public Lcom/android/settings/fuelgauge/BatteryHistoryPreference;
.super Landroid/preference/Preference;
.source "BatteryHistoryPreference.java"


# instance fields
.field private wV:Landroid/os/BatteryStats;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/BatteryStats;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 39
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 40
    const v0, 0x7f04004e

    invoke-virtual {p0, v0}, Lcom/android/settings/fuelgauge/BatteryHistoryPreference;->setLayoutResource(I)V

    .line 41
    iput-object p2, p0, Lcom/android/settings/fuelgauge/BatteryHistoryPreference;->wV:Landroid/os/BatteryStats;

    .line 42
    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 50
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 52
    const v0, 0x1010002

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;

    .line 54
    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryHistoryPreference;->wV:Landroid/os/BatteryStats;

    invoke-virtual {v0, v1}, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->a(Landroid/os/BatteryStats;)V

    .line 55
    return-void
.end method
