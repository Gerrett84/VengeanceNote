.class Lcom/android/settings/wifi/a/c;
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
    .line 195
    iput-object p1, p0, Lcom/android/settings/wifi/a/c;->Bs:Lcom/android/settings/wifi/a/b;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 198
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/android/settings/wifi/a/c;->Bs:Lcom/android/settings/wifi/a/b;

    invoke-static {v0}, Lcom/android/settings/wifi/a/b;->b(Lcom/android/settings/wifi/a/b;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/android/settings/wifi/a/c;->Bs:Lcom/android/settings/wifi/a/b;

    invoke-static {v0}, Lcom/android/settings/wifi/a/b;->b(Lcom/android/settings/wifi/a/b;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/a/c;->Bs:Lcom/android/settings/wifi/a/b;

    invoke-static {v1}, Lcom/android/settings/wifi/a/b;->c(Lcom/android/settings/wifi/a/b;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v1

    new-instance v2, Lcom/android/settings/wifi/a/a;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/a/a;-><init>(Lcom/android/settings/wifi/a/c;)V

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->removeGroup(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 210
    :cond_0
    return-void
.end method
