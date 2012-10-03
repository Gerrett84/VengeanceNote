.class Lcom/android/settings/bluetooth/DockService$4;
.super Ljava/lang/Object;
.source "DockService.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field final synthetic nf:Lcom/android/settings/bluetooth/DockService;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/DockService;)V
    .locals 0
    .parameter

    .prologue
    .line 546
    iput-object p1, p0, Lcom/android/settings/bluetooth/DockService$4;->nf:Lcom/android/settings/bluetooth/DockService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter

    .prologue
    .line 550
    iget-object v0, p0, Lcom/android/settings/bluetooth/DockService$4;->nf:Lcom/android/settings/bluetooth/DockService;

    invoke-static {v0}, Lcom/android/settings/bluetooth/DockService;->c(Lcom/android/settings/bluetooth/DockService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    if-nez v0, :cond_0

    .line 551
    iget-object v0, p0, Lcom/android/settings/bluetooth/DockService$4;->nf:Lcom/android/settings/bluetooth/DockService;

    iget-object v1, p0, Lcom/android/settings/bluetooth/DockService$4;->nf:Lcom/android/settings/bluetooth/DockService;

    invoke-static {v1}, Lcom/android/settings/bluetooth/DockService;->d(Lcom/android/settings/bluetooth/DockService;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/settings/bluetooth/DockEventReceiver;->a(Landroid/app/Service;I)V

    .line 554
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/DockService$4;->nf:Lcom/android/settings/bluetooth/DockService;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/bluetooth/DockService;->stopForeground(Z)V

    .line 555
    return-void
.end method
