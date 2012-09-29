.class Lcom/android/settings/bluetooth/MiuiBluetoothEnabler$1;
.super Landroid/content/BroadcastReceiver;
.source "MiuiBluetoothEnabler.java"


# instance fields
.field final synthetic Al:Lcom/android/settings/bluetooth/MiuiBluetoothEnabler;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/MiuiBluetoothEnabler;)V
    .locals 0
    .parameter

    .prologue
    .line 45
    iput-object p1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothEnabler$1;->Al:Lcom/android/settings/bluetooth/MiuiBluetoothEnabler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 48
    const-string v0, "android.bluetooth.adapter.extra.STATE"

    const/high16 v1, -0x8000

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 49
    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothEnabler$1;->Al:Lcom/android/settings/bluetooth/MiuiBluetoothEnabler;

    invoke-virtual {v1, v0}, Lcom/android/settings/bluetooth/MiuiBluetoothEnabler;->f(I)V

    .line 50
    return-void
.end method
