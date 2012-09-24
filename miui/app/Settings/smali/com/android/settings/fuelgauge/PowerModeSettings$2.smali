.class Lcom/android/settings/fuelgauge/PowerModeSettings$2;
.super Ljava/lang/Object;
.source "PowerModeSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field final synthetic KJ:Lcom/android/settings/fuelgauge/PowerModeSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/fuelgauge/PowerModeSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 47
    iput-object p1, p0, Lcom/android/settings/fuelgauge/PowerModeSettings$2;->KJ:Lcom/android/settings/fuelgauge/PowerModeSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerModeSettings$2;->KJ:Lcom/android/settings/fuelgauge/PowerModeSettings;

    invoke-virtual {v0}, Lcom/android/settings/fuelgauge/PowerModeSettings;->finish()V

    .line 51
    return-void
.end method
