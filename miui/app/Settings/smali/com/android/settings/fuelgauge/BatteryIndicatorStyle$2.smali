.class Lcom/android/settings/fuelgauge/BatteryIndicatorStyle$2;
.super Ljava/lang/Object;
.source "BatteryIndicatorStyle.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic mG:Lcom/android/settings/fuelgauge/BatteryIndicatorStyle;


# direct methods
.method constructor <init>(Lcom/android/settings/fuelgauge/BatteryIndicatorStyle;)V
    .locals 0
    .parameter

    .prologue
    .line 50
    iput-object p1, p0, Lcom/android/settings/fuelgauge/BatteryIndicatorStyle$2;->mG:Lcom/android/settings/fuelgauge/BatteryIndicatorStyle;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryIndicatorStyle$2;->mG:Lcom/android/settings/fuelgauge/BatteryIndicatorStyle;

    invoke-virtual {v0}, Lcom/android/settings/fuelgauge/BatteryIndicatorStyle;->finish()V

    .line 55
    return-void
.end method
