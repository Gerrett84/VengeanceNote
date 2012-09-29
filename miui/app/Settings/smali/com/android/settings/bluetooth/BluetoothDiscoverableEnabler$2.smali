.class Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler$2;
.super Ljava/lang/Object;
.source "BluetoothDiscoverableEnabler.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic OO:Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;)V
    .locals 0
    .parameter

    .prologue
    .line 84
    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler$2;->OO:Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler$2;->OO:Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;

    invoke-static {v0}, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->b(Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;)V

    .line 87
    return-void
.end method
