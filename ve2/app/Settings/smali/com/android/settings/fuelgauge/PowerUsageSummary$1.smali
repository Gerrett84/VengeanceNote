.class Lcom/android/settings/fuelgauge/PowerUsageSummary$1;
.super Landroid/content/BroadcastReceiver;
.source "PowerUsageSummary.java"


# instance fields
.field final synthetic dk:Lcom/android/settings/fuelgauge/PowerUsageSummary;


# direct methods
.method constructor <init>(Lcom/android/settings/fuelgauge/PowerUsageSummary;)V
    .locals 0
    .parameter

    .prologue
    .line 114
    iput-object p1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary$1;->dk:Lcom/android/settings/fuelgauge/PowerUsageSummary;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 118
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 119
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    invoke-static {p2}, Lcom/android/settings/cu;->g(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    .line 121
    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary$1;->dk:Lcom/android/settings/fuelgauge/PowerUsageSummary;

    invoke-virtual {v1}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/android/settings/cu;->a(Landroid/content/res/Resources;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    .line 123
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b04ae

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    aput-object v1, v4, v0

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 125
    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary$1;->dk:Lcom/android/settings/fuelgauge/PowerUsageSummary;

    invoke-static {v1}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->a(Lcom/android/settings/fuelgauge/PowerUsageSummary;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 127
    :cond_0
    return-void
.end method
