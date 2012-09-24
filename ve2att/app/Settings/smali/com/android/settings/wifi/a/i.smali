.class Lcom/android/settings/wifi/a/i;
.super Ljava/lang/Object;
.source "WifiP2pSettings.java"

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;


# instance fields
.field final synthetic Gi:Lcom/android/settings/wifi/a/f;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/a/f;)V
    .locals 0
    .parameter

    .prologue
    .line 179
    iput-object p1, p0, Lcom/android/settings/wifi/a/i;->Gi:Lcom/android/settings/wifi/a/f;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(I)V
    .locals 3
    .parameter

    .prologue
    .line 184
    iget-object v0, p0, Lcom/android/settings/wifi/a/i;->Gi:Lcom/android/settings/wifi/a/f;

    iget-object v0, v0, Lcom/android/settings/wifi/a/f;->Bo:Lcom/android/settings/wifi/a/b;

    invoke-virtual {v0}, Lcom/android/settings/wifi/a/b;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0b022f

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 187
    return-void
.end method

.method public onSuccess()V
    .locals 0

    .prologue
    .line 182
    return-void
.end method
