.class Lcom/android/settings/fuelgauge/PowerModeSettings$1;
.super Ljava/lang/Object;
.source "PowerModeSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic KJ:Lcom/android/settings/fuelgauge/PowerModeSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/fuelgauge/PowerModeSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 35
    iput-object p1, p0, Lcom/android/settings/fuelgauge/PowerModeSettings$1;->KJ:Lcom/android/settings/fuelgauge/PowerModeSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerModeSettings$1;->KJ:Lcom/android/settings/fuelgauge/PowerModeSettings;

    invoke-static {v0}, Lcom/android/settings/fuelgauge/PowerModeSettings;->a(Lcom/android/settings/fuelgauge/PowerModeSettings;)[Ljava/lang/CharSequence;

    move-result-object v0

    array-length v0, v0

    if-ge p2, v0, :cond_0

    if-ltz p2, :cond_0

    .line 38
    const-string v0, "persist.sys.aries.power_profile"

    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerModeSettings$1;->KJ:Lcom/android/settings/fuelgauge/PowerModeSettings;

    invoke-static {v1}, Lcom/android/settings/fuelgauge/PowerModeSettings;->a(Lcom/android/settings/fuelgauge/PowerModeSettings;)[Ljava/lang/CharSequence;

    move-result-object v1

    aget-object v1, v1, p2

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 41
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerModeSettings$1;->KJ:Lcom/android/settings/fuelgauge/PowerModeSettings;

    invoke-virtual {v0}, Lcom/android/settings/fuelgauge/PowerModeSettings;->finish()V

    .line 42
    return-void
.end method
