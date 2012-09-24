.class final Lcom/android/settings/bluetooth/A2dpProfile$A2dpServiceListener;
.super Ljava/lang/Object;
.source "A2dpProfile.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# instance fields
.field final synthetic Ck:Lcom/android/settings/bluetooth/A2dpProfile;


# direct methods
.method private constructor <init>(Lcom/android/settings/bluetooth/A2dpProfile;)V
    .locals 0
    .parameter

    .prologue
    .line 50
    iput-object p1, p0, Lcom/android/settings/bluetooth/A2dpProfile$A2dpServiceListener;->Ck:Lcom/android/settings/bluetooth/A2dpProfile;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/bluetooth/A2dpProfile;Lcom/android/settings/bluetooth/A2dpProfile$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/A2dpProfile$A2dpServiceListener;-><init>(Lcom/android/settings/bluetooth/A2dpProfile;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/settings/bluetooth/A2dpProfile$A2dpServiceListener;->Ck:Lcom/android/settings/bluetooth/A2dpProfile;

    check-cast p2, Landroid/bluetooth/BluetoothA2dp;

    invoke-static {v0, p2}, Lcom/android/settings/bluetooth/A2dpProfile;->a(Lcom/android/settings/bluetooth/A2dpProfile;Landroid/bluetooth/BluetoothA2dp;)Landroid/bluetooth/BluetoothA2dp;

    .line 55
    return-void
.end method

.method public onServiceDisconnected(I)V
    .locals 2
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/settings/bluetooth/A2dpProfile$A2dpServiceListener;->Ck:Lcom/android/settings/bluetooth/A2dpProfile;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings/bluetooth/A2dpProfile;->a(Lcom/android/settings/bluetooth/A2dpProfile;Landroid/bluetooth/BluetoothA2dp;)Landroid/bluetooth/BluetoothA2dp;

    .line 59
    return-void
.end method
