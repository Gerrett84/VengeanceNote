.class Lcom/android/settings/nfc/b;
.super Landroid/content/BroadcastReceiver;
.source "NfcEnabler.java"


# instance fields
.field final synthetic xU:Lcom/android/settings/nfc/a;


# direct methods
.method constructor <init>(Lcom/android/settings/nfc/a;)V
    .locals 0
    .parameter

    .prologue
    .line 42
    iput-object p1, p0, Lcom/android/settings/nfc/b;->xU:Lcom/android/settings/nfc/a;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 45
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 46
    const-string v1, "android.nfc.action.ADAPTER_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/android/settings/nfc/b;->xU:Lcom/android/settings/nfc/a;

    const-string v1, "android.nfc.extra.ADAPTER_STATE"

    const/4 v2, 0x1

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/settings/nfc/a;->a(Lcom/android/settings/nfc/a;I)V

    .line 50
    :cond_0
    return-void
.end method
