.class Lcom/android/settings/bluetooth/BluetoothNameDialogFragment$1;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothNameDialogFragment.java"


# instance fields
.field final synthetic DY:Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 76
    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment$1;->DY:Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 79
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 80
    const-string v1, "android.bluetooth.adapter.action.LOCAL_NAME_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 81
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment$1;->DY:Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;->iA()V

    .line 87
    :cond_0
    :goto_0
    return-void

    .line 82
    :cond_1
    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "android.bluetooth.adapter.extra.STATE"

    const/high16 v1, -0x8000

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    .line 85
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment$1;->DY:Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;->iA()V

    goto :goto_0
.end method
