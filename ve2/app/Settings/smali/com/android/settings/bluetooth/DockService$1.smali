.class Lcom/android/settings/bluetooth/DockService$1;
.super Ljava/lang/Object;
.source "DockService.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic nf:Lcom/android/settings/bluetooth/DockService;

.field final synthetic nh:Landroid/bluetooth/BluetoothDevice;

.field final synthetic ni:I

.field final synthetic nj:I


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/DockService;Landroid/bluetooth/BluetoothDevice;II)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 388
    iput-object p1, p0, Lcom/android/settings/bluetooth/DockService$1;->nf:Lcom/android/settings/bluetooth/DockService;

    iput-object p2, p0, Lcom/android/settings/bluetooth/DockService$1;->nh:Landroid/bluetooth/BluetoothDevice;

    iput p3, p0, Lcom/android/settings/bluetooth/DockService$1;->ni:I

    iput p4, p0, Lcom/android/settings/bluetooth/DockService$1;->nj:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 390
    iget-object v0, p0, Lcom/android/settings/bluetooth/DockService$1;->nf:Lcom/android/settings/bluetooth/DockService;

    iget-object v1, p0, Lcom/android/settings/bluetooth/DockService$1;->nh:Landroid/bluetooth/BluetoothDevice;

    iget v2, p0, Lcom/android/settings/bluetooth/DockService$1;->ni:I

    iget v3, p0, Lcom/android/settings/bluetooth/DockService$1;->nj:I

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/bluetooth/DockService;->a(Lcom/android/settings/bluetooth/DockService;Landroid/bluetooth/BluetoothDevice;II)V

    .line 391
    return-void
.end method
