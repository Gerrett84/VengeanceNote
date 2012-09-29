.class Lcom/android/settings/wifi/a/f;
.super Ljava/lang/Object;
.source "WifiP2pSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic Bs:Lcom/android/settings/wifi/a/b;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/a/b;)V
    .locals 0
    .parameter

    .prologue
    .line 172
    iput-object p1, p0, Lcom/android/settings/wifi/a/f;->Bs:Lcom/android/settings/wifi/a/b;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 175
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/android/settings/wifi/a/f;->Bs:Lcom/android/settings/wifi/a/b;

    invoke-static {v0}, Lcom/android/settings/wifi/a/b;->b(Lcom/android/settings/wifi/a/b;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/android/settings/wifi/a/f;->Bs:Lcom/android/settings/wifi/a/b;

    invoke-static {v0}, Lcom/android/settings/wifi/a/b;->b(Lcom/android/settings/wifi/a/b;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/a/f;->Bs:Lcom/android/settings/wifi/a/b;

    invoke-static {v1}, Lcom/android/settings/wifi/a/b;->c(Lcom/android/settings/wifi/a/b;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/a/f;->Bs:Lcom/android/settings/wifi/a/b;

    invoke-static {v2}, Lcom/android/settings/wifi/a/b;->f(Lcom/android/settings/wifi/a/b;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/android/settings/wifi/a/i;

    invoke-direct {v3, p0}, Lcom/android/settings/wifi/a/i;-><init>(Lcom/android/settings/wifi/a/f;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/wifi/p2p/WifiP2pManager;->setDeviceName(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/String;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 191
    :cond_0
    return-void
.end method
